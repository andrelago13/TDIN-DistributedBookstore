package model;

import java.sql.*;
import java.util.Calendar;
import java.util.UUID;

/**
 * Created by asl_m on 14/05/2017.
 */
public class DatabaseController {

    private static DatabaseController instance;

    public static DatabaseController getInstance() {
        if (instance == null) {
            instance = new DatabaseController();
        }

        return instance;
    }

    ///////////////////////////////////

    private static final String DB_DRIVER_CLASS = "com.mysql.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/tdin";
    private static final String DB_USERNAME = "user";
    private static final String DB_PASSWORD = "123456";

    private Connection connection;

    private DatabaseController() {
        // Load MySQL driver
        try {
            Class.forName(DB_DRIVER_CLASS);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return;
        }

        // Init DB connection
        try {
            connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }
    }

    ///////////////////////////////////////////////
    ///////////////// ORDERS //////////////////////
    ///////////////////////////////////////////////

    public BookOrderList getOrders() {
        BookOrderList list = new BookOrderList();

        try {
            Statement statement = connection.createStatement();
            ResultSet results = statement.executeQuery("SELECT * FROM warehouse_orders ORDER BY created_at DESC");
            while (results.next()) {
                list.addOrder(BookOrder.getOrderFromSQL(results));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean postOrder(BookOrder order) {
        try {
            String query = "INSERT INTO warehouse_orders (id, quantity, book_id, state, dispatch_date)" +
                    "VALUES (?, ?, ?, 0, DATE(CURRENT_TIMESTAMP))";
            PreparedStatement preparedStmt = connection.prepareStatement(query);
            preparedStmt.setString(1, order.getOrderID().toString());
            preparedStmt.setInt(2, order.getQuantity());
            preparedStmt.setInt(3, order.getBookID());

            preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }

    public boolean updateOrderState(BookOrder order) {
        return updateOrderState(order.getOrderID());
    }

    public boolean updateOrderState(UUID id) {
        try {
            Statement statement = connection.createStatement();
            ResultSet results = statement.executeQuery("SELECT state FROM warehouse_orders WHERE id = '" + id + "'");
            if (!results.next()) {
                return false;
            }

            int state = results.getInt("state");

            switch (BookOrder.State.values()[state]) {
                case WAITING_EXPEDITION:
                case SHOULD_DISPATCH:
                    return setOrderDispatched(id);
                case DISPATCHED:
                    return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }

    public boolean setOrderDispatched(BookOrder order) {
        return setOrderDispatched(order.getOrderID());
    }

    public boolean setOrderDispatched(UUID id) {
        try {
            String query = "UPDATE warehouse_orders SET state = 2, state_date = ? WHERE id = ?";
            PreparedStatement preparedStmt = connection.prepareStatement(query);

            preparedStmt.setDate(1, new Date(Calendar.getInstance().getTime().getTime()));
            preparedStmt.setString(2, id.toString());
            preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }

        return true;
    }

    ///////////////////////////////////////////////
    ///////////////// AUTH ////////////////////////
    ///////////////////////////////////////////////

    public boolean verifyPassword(int userID, String password) {
        try {
            Statement statement = connection.createStatement();
            ResultSet results = statement.executeQuery("SELECT * FROM users WHERE id = "
                    + userID + " AND password = " + password);
            if (results.next())
                return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
