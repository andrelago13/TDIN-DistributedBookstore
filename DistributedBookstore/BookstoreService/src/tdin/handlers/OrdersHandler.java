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
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"),
                Collections.singletonList("id"),
                Collections.<Object>singletonList(id.toString()));

        if(!result.next())
            return null;

        return BookOrder.getOrderFromSQL(result);
    }

    public BookOrderList getBookOrders() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"));

        List<BookOrder> bookOrders = new ArrayList<>();
        while (result.next()) {
            bookOrders.add(BookOrder.getOrderFromSQL(result));
        }

        return new BookOrderList(bookOrders);
    }

    public boolean createOrder(final BookOrder bookOrder) {
        // TODO: Check the stock
        return DatabaseAPI.executeInsertion(
                Core.getInstance().getDatabase(),
                "store_orders",
                new HashMap<String, Object>()
                {{
                    put(BookOrder.ORDER_ID_COLUMN, bookOrder.getOrderID().toString());
                    put(BookOrder.BOOK_ID_COLUMN, bookOrder.getBookID());
                    put(BookOrder.QUANTITY_COLUMN, bookOrder.getQuantity());
                    put(BookOrder.CLIENT_NAME_COLUMN, bookOrder.getClientName());
                    put(BookOrder.CLIENT_ADDRESS_COLUMN, bookOrder.getClientAddress());
                    put(BookOrder.CLIENT_EMAIL_COLUMN, bookOrder.getClientEmail());
                    put(BookOrder.STATE_COLUMN, bookOrder.getState().ordinal()); // TODO: Add state date
                }}
        ) >= 1;
    }
}
