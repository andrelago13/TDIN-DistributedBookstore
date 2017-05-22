package tdin.handlers;

import database.DatabaseAPI;
import model.BookOrder;
import model.StoreBookOrder;
import tdin.Core;
import utils.HTTPUtils;

import javax.ws.rs.core.Response;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
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

        if (result == null || !result.next())
            return null;

        return StoreBookOrder.getOrderFromSQL(result);
    }

    public List<StoreBookOrder> getBookOrders() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "store_orders",
                Collections.singletonList("*"));

        List<StoreBookOrder> bookOrders = new ArrayList<>();
        if (result == null) {
            return bookOrders;
        }
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
        if (result == null) {
            return bookOrders;
        }
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
        if (result == null) {
            return bookOrders;
        }
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
        if (result == null) {
            return bookOrders;
        }
        while (result.next()) {
            bookOrders.add(StoreBookOrder.getOrderFromSQL(result));
        }

        return bookOrders;
    }

    public boolean createOrder(final StoreBookOrder bookOrder) throws IOException {
        StockHandler stockHandler = StockHandler.getInstance();
        if (stockHandler.hasBookStock(bookOrder.getBookID(), bookOrder.getQuantity())) {
            stockHandler.removeBookStock(bookOrder.getBookID(), bookOrder.getQuantity());
            Timestamp timestamp = Timestamp.from(new Date().toInstant().plus(1, ChronoUnit.DAYS));
            bookOrder.dispatch(timestamp);
        } else {
            UUID orderID = bookOrder.getOrderID();
            int bookID = bookOrder.getBookID();
            int quantity = bookOrder.getQuantity() + 10;
            if (!createWarehouseRequest(orderID, bookID, quantity)) {
                return false;
            }
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

    private boolean createWarehouseRequest(UUID orderID, int bookID, int quantity) throws IOException {
        // Create request
        Map<String, String> urlParams = new HashMap<String, String>() {{
            put("orderID", orderID.toString());
            put("bookID", String.valueOf(bookID));
            put("quantity", String.valueOf(quantity));
        }};
        String urlParameters = HTTPUtils.getDataString(urlParams);
        byte[] postData = urlParameters.getBytes(StandardCharsets.UTF_8);
        int postDataLength = postData.length;
        String request = "http://localhost:8080/warehouse/orders";
        URL url = new URL(request);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setDoOutput(true);
        conn.setInstanceFollowRedirects(false);
        conn.setRequestMethod("POST");
        conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        conn.setRequestProperty("charset", "utf-8");
        conn.setRequestProperty("Content-Length", Integer.toString(postDataLength));
        conn.setUseCaches(false);
        try (DataOutputStream wr = new DataOutputStream(conn.getOutputStream())) {
            wr.write(postData);
            wr.close();
        }
        conn.connect();

        // Read response
        return conn.getResponseCode() == Response.Status.CREATED.getStatusCode();
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
