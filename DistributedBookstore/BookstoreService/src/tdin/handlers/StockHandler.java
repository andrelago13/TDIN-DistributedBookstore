package tdin.handlers;

import database.DatabaseAPI;
import org.json.JSONArray;
import org.json.JSONObject;
import tdin.Core;

import javax.ws.rs.core.Response;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.*;

public class StockHandler {

    private static StockHandler instance;

    public static StockHandler getInstance() {
        if (instance == null) {
            instance = new StockHandler();
        }
        return instance;
    }

    private StockHandler() {

    }

    /////////////////
    // STORE STOCK //
    /////////////////

    public Map<Integer, Integer> getBooksStock() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "books",
                Collections.singletonList("id"));

        Map<Integer, Integer> booksStock = new HashMap<>();
        int bookID;
        while (result.next()) {
            bookID = result.getInt("id");
            booksStock.put(bookID, StockHandler.getInstance().getBookStock(bookID));
        }

        return booksStock;
    }

    public int getBookStock(int bookID) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "stock",
                Collections.singletonList("quantity"),
                Collections.singletonList("book_id"),
                Collections.singletonList(bookID));

        if (!result.next()) {
            return -1;
        }

        return result.getInt("quantity");
    }

    public boolean hasBookStock(int bookID, int quantity) {
        try {
            return getBookStock(bookID) >= quantity;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean addBookStock(int bookID, int quantity) {
        int currentStock;
        try {
            currentStock = getBookStock(bookID);
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        if (currentStock == -1) { // Insert in stock database
            return DatabaseAPI.executeInsertion(
                    Core.getInstance().getDatabase(),
                    "stock",
                    new HashMap<String, Object>() {{
                        put("book_id", bookID);
                        put("quantity", quantity);
                    }}
            );
        } else { // Update current stock
            currentStock += quantity;
            return DatabaseAPI.executeUpdate(
                    Core.getInstance().getDatabase(),
                    "stock",
                    Collections.singletonList("quantity"),
                    Collections.singletonList(currentStock),
                    Collections.singletonList("book_id"),
                    Collections.singletonList(bookID)
            ) == 1;
        }
    }

    public void removeBookStock(int bookID, int quantity) {
        int currentStock;
        try {
            currentStock = getBookStock(bookID);
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }

        if (currentStock != -1) { // Update in stock database
            currentStock -= quantity;
            if (currentStock < 0) {
                throw new RuntimeException("Cant have a negative stock");
            }
            if (currentStock == 0) {
                DatabaseAPI.executeDeletation(
                        Core.getInstance().getDatabase(),
                        "stock",
                        Collections.singletonList("book_id"),
                        Collections.singletonList(bookID)
                );
            } else {
                DatabaseAPI.executeUpdate(
                        Core.getInstance().getDatabase(),
                        "stock",
                        Collections.singletonList("quantity"),
                        Collections.singletonList(currentStock),
                        Collections.singletonList("book_id"),
                        Collections.singletonList(bookID)
                );
            }
        }
    }

    ////////////////////
    // INCOMING BOOKS //
    ////////////////////

    private JSONObject parseIncomingBookStockFromSQL(ResultSet result) throws SQLException {
        JSONObject incomingStock = new JSONObject();

        incomingStock.put("ID", UUID.fromString(result.getString("id")));
        incomingStock.put("bookID", result.getInt("book_id"));
        incomingStock.put("quantity", result.getInt("quantity"));
        incomingStock.put("dispatchDate", result.getDate("dispatchDate"));

        return incomingStock;
    }

    public JSONArray getIncomingBooksStock() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "incoming_stock",
                Collections.singletonList("*"));

        JSONArray incomingStocks = new JSONArray();
        while (result.next()) {
            incomingStocks.put(parseIncomingBookStockFromSQL(result));
        }

        return incomingStocks;
    }

    public JSONObject getIncomingBookStock(UUID id) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "incoming_stock",
                Collections.singletonList("*"),
                Collections.singletonList("id"),
                Collections.singletonList(id.toString()));

        if (!result.next()) {
            return null;
        }


        return parseIncomingBookStockFromSQL(result);
    }

    public UUID createIncomingBookStock(int bookID, int quantity, Date dispatchDate) {
        UUID uuid = UUID.randomUUID();
        return DatabaseAPI.executeInsertion(
                Core.getInstance().getDatabase(),
                "incoming_stock",
                new HashMap<String, Object>() {{
                    put("id", uuid);
                    put("book_id", bookID);
                    put("quantity", quantity);
                    put("date", dispatchDate);
                }}
        ) ? uuid : null;
    }

    public boolean acceptIncomingBookStock(UUID id) throws SQLException, ParseException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "incoming_stock",
                Collections.singletonList("*"),
                Collections.singletonList("id"),
                Collections.singletonList(id.toString()));

        if (!result.next()) {
            return false;
        }

        // Get the stock that is being accepted
        JSONObject incomingStock = parseIncomingBookStockFromSQL(result);
        int bookID = incomingStock.has("bookID") ? incomingStock.getInt("bookID") : -1;
        int quantity = incomingStock.has("quantity") ? incomingStock.getInt("quantity") : -1;
        Date dispatchDate = incomingStock.has("dispatchDate") ? (Date)incomingStock.get("dispatchDate") : null;
        if (bookID == -1 || quantity == -1 || dispatchDate == null) {
            return false;
        }

        if(dispatchDate.compareTo(new Date()) > 1) {
            throw new RuntimeException("Cannot accept an incoming request that has not arrived yet");
        }

        if(!addBookStock(bookID, quantity)) {
            return false;
        }

        return DatabaseAPI.executeDeletation(
                Core.getInstance().getDatabase(),
                "incoming_stock",
                Collections.singletonList("id"),
                Collections.singletonList(id.toString())
        ) == 1;
    }
}
