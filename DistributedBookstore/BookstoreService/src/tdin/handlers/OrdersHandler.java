package tdin.handlers;

import database.DatabaseAPI;
import model.BookOrder;
import model.BookOrderList;
import tdin.Core;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by joaos on 15/05/2017.
 */
public class OrdersHandler {

    private static OrdersHandler instance;

    public static OrdersHandler getInstance() {
        if (instance == null) {
            instance = new OrdersHandler();
        }
        return instance;
    }

    private OrdersHandler() {

    }


    public BookOrder getBookOrder(UUID id) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"),
                Collections.singletonList("id"),
                Collections.<Object>singletonList(id.toString()));

        if(!result.next())
            return null;

        return BookOrder.getOrderFromSQL(result);
    }

    public BookOrderList getBookOrders() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"));

        List<BookOrder> bookOrders = new ArrayList<>();
        while (result.next()) {
            bookOrders.add(BookOrder.getOrderFromSQL(result));
        }

        return new BookOrderList(bookOrders);
    }
}
