package model;

import services.Orders;

import java.sql.*;
import java.util.Calendar;
import java.util.UUID;

/**
 * Created by asl_m on 14/05/2017.
 */
public class DatabaseController {

    private static DatabaseController instance;

    public static DatabaseController getInstance() {
        if(instance == null) {
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
            ResultSet results = statement.executeQuery("SELECT * FROM orders");
            while(results.next()) {
                list.addOrder(BookOrder.getOrderFromSQL(results));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean postOrder(BookOrder order) {
        try {
            String query = "INSERT INTO orders (quantity, book_title, client_name, " +
                    "client_addr, client_email, state) VALUES (?, ?, ?, ?, ?, 0)";
            PreparedStatement preparedStmt = connection.prepareStatement(query);
            preparedStmt.setInt(1, order.getQuantity());
            preparedStmt.setString(2, order.getBookTitle());
            preparedStmt.setString(3, order.getClientName());
            preparedStmt.setString(4, order.getClientAddress());
            preparedStmt.setString(5, order.getClientEmail());

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
            ResultSet results = statement.executeQuery("SELECT state FROM orders WHERE id = " + id);
            if(!results.next()) {
                return false;
            }

            int state = results.getInt("state");

            switch(BookOrder.State.values()[state]) {
                case WAITING_EXPEDITION:
                    return setOrderDispatchDate(id);
                case WILL_DISPATCH:
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

    public boolean setOrderDispatchDate(BookOrder order) {
        return setOrderDispatchDate(order.getOrderID());
    }

    public boolean setOrderDispatchDate(UUID id) {
        try {
            String query = "UPDATE orders SET state = 1, state_date = ? WHERE id = ?";
            PreparedStatement preparedStmt = connection.prepareStatement(query);

            Calendar cal = Calendar.getInstance();
            cal.add(Calendar.DAY_OF_YEAR, 2);

            preparedStmt.setLong(1, cal.getTime().getTime());
            preparedStmt.setString(2, id.toString());
            preparedStmt.execute();
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
            String query = "UPDATE orders SET state = 2 WHERE id = ?";
            PreparedStatement preparedStmt = connection.prepareStatement(query);
            preparedStmt.setString(1, id.toString());

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
            if(results.next())
                return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
