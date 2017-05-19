package tdin.handlers;

import database.DatabaseAPI;
import model.BookOrder;
import model.StoreBookOrder;
import tdin.Core;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.temporal.ChronoUnit;
import java.util.*;

/**
 * Created by joaos on 15/05/2017.
 */
public class OrdersHandler {

    private static OrdersHandler instance;

    private OrdersHandler() {

    }

    public static OrdersHandler getInstance() {
        if (instance == null) {
            instance = new OrdersHandler();
        }
        return instance;
    }

    public StoreBookOrder getBookOrder(UUID id) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"),
                Collections.singletonList(StoreBookOrder.ORDER_ID_COLUMN),
                Collections.singletonList(id.toString()));

        if (!result.next())
            return null;

        return StoreBookOrder.getOrderFromSQL(result);
    }

    public List<StoreBookOrder> getBookOrders() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"));

        List<StoreBookOrder> bookOrders = new ArrayList<>();
        while (result.next()) {
            bookOrders.add(StoreBookOrder.getOrderFromSQL(result));
        }

        return bookOrders;
    }

    public List<StoreBookOrder> getPendingOrders() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"),
                Collections.singletonList(StoreBookOrder.STATE_COLUMN),
                Collections.singletonList(StoreBookOrder.State.WAITING_EXPEDITION.ordinal()));

        List<StoreBookOrder> bookOrders = new ArrayList<>();
        while (result.next()) {
            bookOrders.add(StoreBookOrder.getOrderFromSQL(result));
        }

        return bookOrders;
    }

    public List<StoreBookOrder> getPendingBookOrders(int bookID) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"),
                Arrays.asList(StoreBookOrder.STATE_COLUMN, StoreBookOrder.BOOK_ID_COLUMN),
                Arrays.asList(StoreBookOrder.State.WAITING_EXPEDITION.ordinal(), bookID));

        List<StoreBookOrder> bookOrders = new ArrayList<>();
        while (result.next()) {
            bookOrders.add(StoreBookOrder.getOrderFromSQL(result));
        }

        return bookOrders;
    }

    public List<StoreBookOrder> getUserBookOrders(int userID) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"),
                Collections.singletonList(StoreBookOrder.USER_ID_COLUMN),
                Collections.singletonList(userID));

        List<StoreBookOrder> bookOrders = new ArrayList<>();
        while (result.next()) {
            bookOrders.add(StoreBookOrder.getOrderFromSQL(result));
        }

        return bookOrders;
    }

    public boolean createOrder(final StoreBookOrder bookOrder) {
        StockHandler stockHandler = StockHandler.getInstance();
        if (stockHandler.hasBookStock(bookOrder.getBookID(), bookOrder.getQuantity())) {
            stockHandler.removeBookStock(bookOrder.getBookID(), bookOrder.getQuantity());
            Timestamp timestamp = Timestamp.from(new Date().toInstant().plus(1, ChronoUnit.DAYS));
            bookOrder.dispatch(timestamp);
        } else {
            int quantity = bookOrder.getQuantity() + 10;
            // TODO: Create request for stock to the warehouse
        }

        return DatabaseAPI.executeInsertion(
                Core.getInstance().getDatabase(),
                "store_orders",
                new HashMap<String, Object>() {{
                    put(StoreBookOrder.ORDER_ID_COLUMN, bookOrder.getOrderID().toString());
                    put(StoreBookOrder.BOOK_ID_COLUMN, bookOrder.getBookID());
                    put(StoreBookOrder.QUANTITY_COLUMN, bookOrder.getQuantity());
                    if (bookOrder.getUserID() > 0)
                        put(StoreBookOrder.USER_ID_COLUMN, bookOrder.getUserID());
                    put(StoreBookOrder.ORDER_DATE_COLUMN, bookOrder.getOrderDate());
                    put(StoreBookOrder.TOTAL_PRICE_COLUMN, bookOrder.getTotalPrice());
                    put(StoreBookOrder.CLIENT_NAME_COLUMN, bookOrder.getClientName());
                    put(StoreBookOrder.CLIENT_ADDRESS_COLUMN, bookOrder.getClientAddress());
                    put(StoreBookOrder.CLIENT_EMAIL_COLUMN, bookOrder.getClientEmail());
                    put(StoreBookOrder.STATE_COLUMN, bookOrder.getState().ordinal());
                    put(StoreBookOrder.DISPATCH_DATE_COLUMN, bookOrder.getDispatchDate());
                }}
        );
    }

    public boolean markAsShouldDispatchOrder(UUID id) {
        Timestamp shouldDispatchTime = Timestamp.from(new Date().toInstant().plus(2, ChronoUnit.DAYS));
        return DatabaseAPI.executeUpdate(
                Core.getInstance().getDatabase(),
                "store_orders",
                Arrays.asList(StoreBookOrder.STATE_COLUMN, StoreBookOrder.DISPATCH_DATE_COLUMN),
                Arrays.asList(BookOrder.State.SHOULD_DISPATCH.ordinal(), shouldDispatchTime),
                Collections.singletonList(StoreBookOrder.ORDER_ID_COLUMN),
                Collections.singletonList(id.toString())
        ) == 1;
    }

    public boolean markAsDispatchedOrder(UUID id) {
        Timestamp dispatchedTime = Timestamp.from(new Date().toInstant());
        return DatabaseAPI.executeUpdate(
                Core.getInstance().getDatabase(),
                "store_orders",
                Arrays.asList(StoreBookOrder.STATE_COLUMN, StoreBookOrder.DISPATCH_DATE_COLUMN),
                Arrays.asList(BookOrder.State.DISPATCHED.ordinal(), dispatchedTime),
                Collections.singletonList(StoreBookOrder.ORDER_ID_COLUMN),
                Collections.singletonList(id.toString())
        ) == 1;
    }
}
