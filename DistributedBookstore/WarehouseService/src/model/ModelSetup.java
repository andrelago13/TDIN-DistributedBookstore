package model;

import services.Orders;

import java.awt.print.Book;
import java.sql.*;

/**
 * Created by asl_m on 13/05/2017.
 */
public class ModelSetup {

    private static final String DB_DRIVER_CLASS = "com.mysql.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/tdin";
    private static final String DB_USERNAME = "user";
    private static final String DB_PASSWORD = "123456";

    private static boolean setup = false;

    public static boolean maybeSetup() {
        if(setup) {
            return false;
        }

        setup();

        return setup;
    }

    private static void setup() {

        // Load MySQL driver
        try {
            Class.forName(DB_DRIVER_CLASS);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return;
        }

        try {
            // Init DB connection
            Connection c = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            // Load orders
            Statement s = c.createStatement();
            ResultSet r = s.executeQuery("SELECT * FROM orders");
            while(r.next()) {
                Orders.list.addOrder(BookOrder.getOrderFromSQL(r));
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return;
        }
        
        setup = true;
    }
}
