package model;

import org.json.JSONObject;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Date;
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
    public final static String STATE_KEY = "state";
    public final static String STATE_DATE_KEY = "stateDate";

    public final static String ORDER_ID_COLUMN = "id";
    public final static String BOOK_ID_COLUMN = "book_id";
    public final static String QUANTITY_COLUMN = "quantity";
    public final static String STATE_COLUMN = "state";
    public final static String STATE_DATE_COLUMN = "state_date";

    protected UUID orderID;
    protected int bookID;
    protected int quantity;
    protected State state;
    protected Timestamp stateDate;

    public BookOrder(int bookID, int quantity) {
        this(UUID.randomUUID(), bookID, quantity, State.WAITING_EXPEDITION, -1);
    }

    public BookOrder(UUID orderID, int bookID, int quantity) {
        this(orderID, bookID, quantity, State.WAITING_EXPEDITION, -1);
    }

    public BookOrder(int bookID, int quantity, State state, long dateTime) {
        this(UUID.randomUUID(), bookID, quantity, state, dateTime);
    }

    public BookOrder(UUID orderID, int bookID, int quantity, State state, long dateTime) {
        this.orderID = orderID;
        this.bookID = bookID;
        this.quantity = quantity;

        this.state = state;
        if (dateTime > 0) {
            stateDate = new Timestamp(dateTime);
        }
    }

    public static BookOrder getOrderFromSQL(ResultSet r) throws SQLException {
        BookOrder order = new BookOrder(UUID.fromString(r.getString(ORDER_ID_COLUMN)),
                r.getInt(BOOK_ID_COLUMN),
                r.getInt(QUANTITY_COLUMN));

        State state = State.values()[r.getInt(STATE_COLUMN)];
        switch (state) {
            case WAITING_EXPEDITION:
                order.state = State.WAITING_EXPEDITION;
                break;
            case DISPATCHED:
                order.dispatched(r.getTimestamp(STATE_DATE_COLUMN));
                break;
            case SHOULD_DISPATCH:
                order.shouldDispatch(r.getTimestamp(STATE_DATE_COLUMN));
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
        this.state = json.has(STATE_KEY) ? State.values()[json.getInt(STATE_KEY)] : State.WAITING_EXPEDITION;
        this.stateDate = json.has(STATE_DATE_KEY) ? new Timestamp(json.getLong(STATE_DATE_KEY)) : null;
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

    public int getStateNumber() {
        return state.ordinal();
    }

    public State getState() {
        return state;
    }

    public Timestamp getStateDate() {
        return stateDate;
    }

    public void dispatched(Timestamp date) {
        state = State.DISPATCHED;
        stateDate = date;
    }

    public void shouldDispatch(Timestamp date) {
        state = State.SHOULD_DISPATCH;
        stateDate = date;
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
        result.put(STATE_KEY, state.ordinal());
        result.put(STATE_DATE_KEY, stateDate != null ? stateDate : JSONObject.NULL);

        return result;
    }
}
