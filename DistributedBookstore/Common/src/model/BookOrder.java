package model;

import org.json.JSONObject;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.UUID;

/**
 * Created by asl_m on 13/05/2017.
 */
public class BookOrder {

    public static enum State {
        WAITING_EXPEDITION,
        SHOULD_DISPATCH,
        DISPATCHED
    }

    public final static String ORDER_ID_KEY = "orderID";
    public final static String BOOK_ID_KEY = "bookID";
    public final static String QUANTITY_KEY = "quantity";
    public final static String ORDER_DATE_KEY = "orderDate";
    public final static String STATE_KEY = "state";
    public final static String DISPATCH_DATE_KEY = "dispatchDate";

    public final static String ORDER_ID_COLUMN = "id";
    public final static String BOOK_ID_COLUMN = "book_id";
    public final static String QUANTITY_COLUMN = "quantity";
    public final static String ORDER_DATE_COLUMN = "order_date";
    public final static String STATE_COLUMN = "state";
    public final static String DISPATCH_DATE_COLUMN = "dispatch_date";

    protected UUID orderID;
    protected int bookID;
    protected int quantity;
    protected Timestamp orderDate;
    protected State state;
    protected Timestamp dispatchDate;

    public BookOrder(int bookID, int quantity) {
        this(UUID.randomUUID(), bookID, quantity);
    }

    public BookOrder(UUID orderID, int bookID, int quantity) {
        this(orderID, bookID, quantity, new Timestamp(System.currentTimeMillis()));
    }

    public BookOrder(UUID orderID, int bookID, int quantity, Timestamp orderDate) {
        this(orderID, bookID, quantity, orderDate, State.WAITING_EXPEDITION, null);
    }

    public BookOrder(UUID orderID, int bookID, int quantity, Timestamp orderDate, State state, Timestamp dispatchDate) {
        this.orderID = orderID;
        this.bookID = bookID;
        this.quantity = quantity;
        this.orderDate = orderDate;

        this.state = state;
        this.dispatchDate = dispatchDate;
    }

    public static BookOrder getOrderFromSQL(ResultSet r) throws SQLException {
        BookOrder order = new BookOrder(UUID.fromString(r.getString(ORDER_ID_COLUMN)),
                r.getInt(BOOK_ID_COLUMN),
                r.getInt(QUANTITY_COLUMN),
                r.getTimestamp(ORDER_DATE_COLUMN));

        State state = State.values()[r.getInt(STATE_COLUMN)];
        switch (state) {
            case WAITING_EXPEDITION:
                order.dispatchDate = r.getTimestamp(DISPATCH_DATE_COLUMN);
                order.state = State.WAITING_EXPEDITION;
                break;
            case DISPATCHED:
                order.dispatched(r.getTimestamp(DISPATCH_DATE_COLUMN));
                break;
            case SHOULD_DISPATCH:
                order.shouldDispatch(r.getTimestamp(DISPATCH_DATE_COLUMN));
                break;
        }

        return order;
    }

    public BookOrder(String jsonString) {
        this(new JSONObject(jsonString));
    }

    public BookOrder(JSONObject json) {
        this.orderID = json.has(ORDER_ID_KEY) ? UUID.fromString(json.getString(ORDER_ID_KEY)) : UUID.randomUUID();
        this.bookID = json.has(BOOK_ID_KEY) ? json.getInt(BOOK_ID_KEY) : -1;
        this.quantity = json.has(QUANTITY_KEY) ? json.getInt(QUANTITY_KEY) : -1;
        this.orderDate = json.has(ORDER_DATE_KEY) ? new Timestamp(json.getLong(ORDER_DATE_KEY)) : new Timestamp(System.currentTimeMillis());
        this.state = json.has(STATE_KEY) ? State.values()[json.getInt(STATE_KEY)] : State.WAITING_EXPEDITION;
        this.dispatchDate = json.has(DISPATCH_DATE_KEY) ? new Timestamp(json.getLong(DISPATCH_DATE_KEY)) : null;
    }

    public UUID getOrderID() {
        return orderID;
    }

    public int getBookID() {
        return bookID;
    }

    public int getQuantity() {
        return quantity;
    }

    public Timestamp getOrderDate() {
        return orderDate;
    }

    public int getStateNumber() {
        return state.ordinal();
    }

    public State getState() {
        return state;
    }

    public Timestamp getDispatchDate() {
        return dispatchDate;
    }

    public void dispatched(Timestamp date) {
        state = State.DISPATCHED;
        dispatchDate = date;
    }

    public void shouldDispatch(Timestamp date) {
        state = State.SHOULD_DISPATCH;
        dispatchDate = date;
    }

    @Override
    public String toString() {
        return toJSON().toString();
    }

    public JSONObject toJSON() {
        JSONObject result = new JSONObject();

        result.put(ORDER_ID_KEY, orderID);
        result.put(BOOK_ID_KEY, bookID);
        result.put(QUANTITY_KEY, quantity);
        result.put(ORDER_DATE_KEY, orderDate);
        result.put(STATE_KEY, state.ordinal());
        result.put(DISPATCH_DATE_KEY, dispatchDate != null ? dispatchDate : JSONObject.NULL);

        return result;
    }
}
