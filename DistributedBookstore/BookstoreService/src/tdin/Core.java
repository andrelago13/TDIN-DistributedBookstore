package tdin;

import database.Database;
import database.DatabaseAPI;
import database.types.DatabaseType;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by joaos on 15/05/2017.
 */
public class Core {
    private static Core instance;

    public static Core getInstance() {
        if (instance == null) {
            instance = new Core();
        }
        return instance;
    }

    private Database database;

    public Database getDatabase() {
        return database;
    }

    private Map<Integer, Integer> stock;

    private Core() {
        this.database = Database.createDatabase(DatabaseType.MYSQL, "localhost", 3306, "tdin", "user", "123456");
        try {
            this.database.connect();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        this.stock = new HashMap<>();
        try {
            loadStock();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void loadStock() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                this.database,
                "stock",
                Collections.singletonList("*")
        );
        while (result.next()) {
            stock.put(result.getInt("book_id"), result.getInt("quantity"));
        }
    }

    public void addStock(final int bookID, int quantity) {
        if (quantity <= 0) {
            throw new RuntimeException("The quantity must be a positive value");
        }
        if (stock.containsKey(bookID)) {
            quantity += stock.get(bookID);
            DatabaseAPI.executeUpdate(
                    this.database,
                    "stock",
                    Collections.singletonList("quantity"),
                    Collections.<Object>singletonList(quantity),
                    Collections.singletonList("book_id"),
                    Collections.<Object>singletonList(bookID)
            );
        } else {
            final int finalQuantity = quantity;
            DatabaseAPI.executeInsertion(
                    this.database,
                    "stock",
                    new HashMap<String, Object>() {{
                        put("book_id", bookID);
                        put("quantity", finalQuantity);
                    }}
            );
        }

        stock.put(bookID, quantity);
    }

    public void removeFromStock(int bookID, int quantity) {
        if (!hasStock(bookID, quantity)) {
            throw new RuntimeException("There are not enough items in stock");
        }

        stock.put(bookID, stock.get(bookID) - quantity);
        DatabaseAPI.executeUpdate(
                this.database,
                "stock",
                Collections.singletonList("quantity"),
                Collections.singletonList(stock.get(bookID)),
                Collections.singletonList("book_id"),
                Collections.singletonList(bookID)
        );
    }

    public boolean hasStock(int bookID, int quantity) {
        return stock.containsKey(bookID) && stock.get(bookID) >= quantity;
    }
}
