package tdin.handlers;

import database.DatabaseAPI;
import tdin.Core;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.HashMap;

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

    public int getStock(int bookID) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "stock",
                Collections.singletonList("quantity"),
                Collections.singletonList("book_id"),
                Collections.singletonList(bookID));

        if(!result.next()) {
            return -1;
        }

        return result.getInt("quantity");
    }

    public boolean hasStock(int bookID, int quantity) {
        try {
            return getStock(bookID) >= quantity;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void addStock(int bookID, int quantity) {
        int currentStock;
        try {
            currentStock = getStock(bookID);
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }

        if(currentStock == -1) { // Insert in stock database
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

    public void removeStock(int bookID, int quantity) {
        int currentStock;
        try {
            currentStock = getStock(bookID);
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }

        if(currentStock != -1) { // Update in stock database
            currentStock -= quantity;
            if(currentStock < 0) {
                throw new RuntimeException("Cant have a negative stock");
            }
            if(currentStock == 0) {
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
}
