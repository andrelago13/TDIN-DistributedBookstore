package tdin.handlers;

import database.DatabaseAPI;
import model.StoreBookOrder;
import model.StoreBookOrderList;
import tdin.Core;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.temporal.ChronoUnit;
import java.time.temporal.TemporalUnit;
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


    public StoreBookOrder getBookOrder(UUID id) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"),
                Collections.singletonList("id"),
                Collections.<Object>singletonList(id.toString()));

        if (!result.next())
            return null;

        return StoreBookOrder.getOrderFromSQL(result);
    }

    public StoreBookOrderList getBookOrders() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"));

        List<StoreBookOrder> bookOrders = new ArrayList<>();
        while (result.next()) {
            bookOrders.add(StoreBookOrder.getOrderFromSQL(result));
        }

        return new StoreBookOrderList(bookOrders);
    }

    public boolean createOrder(final StoreBookOrder bookOrder) {
        StockHandler stockHandler = StockHandler.getInstance();
        if (stockHandler.hasBookStock(bookOrder.getBookID(), bookOrder.getQuantity())) {
            Timestamp timestamp = Timestamp.from(new Date().toInstant().plus(1, ChronoUnit.DAYS));
            bookOrder.dispatched(timestamp);
            stockHandler.removeBookStock(bookOrder.getBookID(), bookOrder.getQuantity());
        } else {
            // TODO: Create request for stock to the warehouse
        }

        return DatabaseAPI.executeInsertion(
                Core.getInstance().getDatabase(),
                "store_orders",
                new HashMap<String, Object>() {{
                    put(StoreBookOrder.ORDER_ID_COLUMN, bookOrder.getOrderID().toString());
                    put(StoreBookOrder.BOOK_ID_COLUMN, bookOrder.getBookID());
                    put(StoreBookOrder.QUANTITY_COLUMN, bookOrder.getQuantity());
                    put(StoreBookOrder.TOTAL_PRICE_COLUMN, bookOrder.getTotalPrice());
                    put(StoreBookOrder.CLIENT_NAME_COLUMN, bookOrder.getClientName());
                    put(StoreBookOrder.CLIENT_ADDRESS_COLUMN, bookOrder.getClientAddress());
                    put(StoreBookOrder.CLIENT_EMAIL_COLUMN, bookOrder.getClientEmail());
                    put(StoreBookOrder.STATE_COLUMN, bookOrder.getState().ordinal());
                    put(StoreBookOrder.STATE_DATE_COLUMN, bookOrder.getStateDate());
                }}
        );
    }
}
