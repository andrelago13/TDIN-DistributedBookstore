package model;

import org.json.JSONObject;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;

/**
 * Created by asl_m on 13/05/2017.
 */
public class BookOrder {

    public static enum State {
        WAITING_EXPEDITION,
        WILL_DISPATCH,
        DISPATCHED
    }

    public final static String ORDER_ID_KEY = "orderID";
    public final static String BOOK_ID_KEY = "bookID";
    public final static String QUANTITY_KEY = "quantity";
    public final static String CLIENT_NAME_KEY = "clientName";
    public final static String CLIENT_ADDRESS_KEY = "clientAddress";
    public final static String CLIENT_EMAIL_KEY = "clientEmail";
    public final static String STATE_KEY = "state";
    public final static String STATE_DATE_KEY = "stateDate";

    public final static String ORDER_ID_COLUMN = "id";
    public final static String BOOK_ID_COLUMN = "book_id";
    public final static String QUANTITY_COLUMN = "quantity";
    public final static String CLIENT_NAME_COLUMN = "client_name";
    public final static String CLIENT_ADDRESS_COLUMN = "client_address";
    public final static String CLIENT_EMAIL_COLUMN = "client_email";
    public final static String STATE_COLUMN = "state";
    public final static String STATE_DATE_COLUMN = "state_date";

    protected UUID orderID;
    protected int bookID;
    protected int quantity;
    protected String clientName;
    protected String clientAddress;
    protected String clientEmail;
    protected State state;
    protected Date stateDate;

    public BookOrder(int bookID, int quantity, String client, String clAddr, String clEmail) {
        this(UUID.randomUUID(), bookID, quantity, client, clAddr, clEmail, State.WAITING_EXPEDITION, -1);
    }

    public BookOrder(UUID orderID, int bookID, int quantity, String client, String clAddr, String clEmail) {
        this(orderID, bookID, quantity, client, clAddr, clEmail, State.WAITING_EXPEDITION, -1);
    }

    public BookOrder(int bookID, int quantity, String client, String clAddr, String clEmail, State state, long dateTime) {
        this(UUID.randomUUID(), bookID, quantity, client, clAddr, clEmail, state, dateTime);
    }

    public BookOrder(UUID orderID, int bookID, int quantity, String client, String clAddr, String clEmail, State state, long dateTime) {
        this.orderID = orderID;
        this.bookID = bookID;
        this.quantity = quantity;
        this.clientName = client;
        this.clientAddress = clAddr;
        this.clientEmail = clEmail;

        this.state = state;
        if (dateTime < 0) {
            stateDate = null;
        } else {
            stateDate = new Date(dateTime);
        }
    }

    public static BookOrder getOrderFromSQL(ResultSet r) throws SQLException {
        BookOrder order = new BookOrder(UUID.fromString(r.getString(ORDER_ID_COLUMN)),
                r.getInt(BOOK_ID_COLUMN),
                r.getInt(QUANTITY_COLUMN),
                r.getString(CLIENT_NAME_COLUMN),
                r.getString(CLIENT_ADDRESS_COLUMN),
                r.getString(CLIENT_EMAIL_COLUMN));

        State state = State.values()[r.getInt(STATE_COLUMN)];
        switch (state) {
            case DISPATCHED:
                order.dispatched(r.getDate(STATE_DATE_COLUMN));
                break;
            case WILL_DISPATCH:
                order.willDispatch(r.getDate(STATE_DATE_COLUMN));
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
        this.clientName = json.has(CLIENT_NAME_KEY) ? json.getString(CLIENT_NAME_KEY) : null;
        this.clientAddress = json.has(CLIENT_ADDRESS_KEY) ? json.getString(CLIENT_ADDRESS_KEY) : null;
        this.clientEmail = json.has(CLIENT_EMAIL_KEY) ? json.getString(CLIENT_EMAIL_KEY) : null;
        this.state = json.has(STATE_KEY) ? State.values()[json.getInt(STATE_KEY)] : State.WAITING_EXPEDITION;
        if (this.state != State.WAITING_EXPEDITION) {
            stateDate = json.has(STATE_DATE_KEY) ? new Date(json.getLong(STATE_DATE_KEY)) : null;
        } else {
            stateDate = null;
        }
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

    public String getClientName() {
        return clientName;
    }

    public String getClientAddress() {
        return clientAddress;
    }

    public String getClientEmail() {
        return clientEmail;
    }

    public int getStateNumber() {
        return state.ordinal();
    }

    public State getState() {
        return state;
    }

    public Date getStateDate() {
        return stateDate;
    }

    public void dispatched(Date date) {
        state = State.DISPATCHED;
        stateDate = date;
    }

    public void willDispatch(Date date) {
        state = State.WILL_DISPATCH;
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
        result.put(CLIENT_NAME_KEY, clientName);
        result.put(CLIENT_ADDRESS_KEY, clientAddress);
        result.put(CLIENT_EMAIL_KEY, clientEmail);
        result.put(STATE_KEY, state.ordinal());
        if (stateDate != null) {
            result.put(STATE_DATE_KEY, stateDate.getTime());
        } else {
            result.put(STATE_DATE_KEY, JSONObject.NULL);
        }

        return result;
    }
}
