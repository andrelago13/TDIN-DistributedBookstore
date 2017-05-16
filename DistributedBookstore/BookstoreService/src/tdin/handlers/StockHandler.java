package tdin.handlers;

import database.DatabaseAPI;
import org.json.JSONArray;
import org.json.JSONObject;
import tdin.Core;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by joaos on 16/05/2017.
 */
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

    public void addBookStock(int bookID, int quantity) {
        int currentStock;
        try {
            currentStock = getBookStock(bookID);
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }

        if (currentStock == -1) { // Insert in stock database
            DatabaseAPI.executeInsertion(
                    Core.getInstance().getDatabase(),
                    "stock",
                    new HashMap<String, Object>() {{
                        put("book_id", bookID);
                        put("quantity", quantity);
                    }}
            );
        } else { // Update current stock
            currentStock += quantity;
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
}
