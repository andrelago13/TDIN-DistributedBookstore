package tdin.handlers;

import libs.database.DatabaseAPI;
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

    private BookOrder parseBookOrder(ResultSet result) throws SQLException {
        BookOrder bookOrder = new BookOrder(
                UUID.fromString(result.getString(BookOrder.ORDER_ID_COLUMN)),
                result.getString(BookOrder.BOOK_TITLE_COLUMN),
                result.getInt(BookOrder.QUANTITY_COLUMN),
                result.getString(BookOrder.CLIENT_NAME_COLUMN),
                result.getString(BookOrder.CLIENT_ADDRESS_COLUMN),
                result.getString(BookOrder.CLIENT_EMAIL_COLUMN)
        );
        BookOrder.State state = BookOrder.State.values()[result.getInt(BookOrder.STATE_COLUMN)];
        switch (state) {
            case DISPATCHED:
                bookOrder.dispatched(new Date(result.getLong(BookOrder.STATE_DATE_COLUMN)));
                break;
            case WILL_DISPATCH:
                bookOrder.willDispatch(new Date(result.getLong(BookOrder.STATE_DATE_COLUMN)));
                break;
        }

        return bookOrder;
    }

    public BookOrder getBookOrder(UUID id) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"),
                Collections.singletonList("id"),
                Collections.<Object>singletonList(id.toString()));

        if(!result.next())
            return null;

        return parseBookOrder(result);
    }

    public BookOrderList getBookOrders() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"));

        List<BookOrder> bookOrders = new ArrayList<>();
        while (result.next()) {
            bookOrders.add(parseBookOrder(result));
        }

        return new BookOrderList(bookOrders);
    }
}
