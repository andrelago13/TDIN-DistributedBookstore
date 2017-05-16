package model;

import org.json.JSONObject;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

/**
 * Created by asl_m on 15/05/2017.
 */
public class StoreBookOrder extends BookOrder {

    public final static String TOTAL_PRICE_KEY = "totalPrice";
    public final static String CLIENT_NAME_KEY = "clientName";
    public final static String CLIENT_ADDRESS_KEY = "clientAddress";
    public final static String CLIENT_EMAIL_KEY = "clientEmail";
    public final static String USER_ID_KEY = "userID";

    public final static String TOTAL_PRICE_COLUMN = "total_price";
    public final static String CLIENT_NAME_COLUMN = "client_name";
    public final static String CLIENT_ADDRESS_COLUMN = "client_address";
    public final static String CLIENT_EMAIL_COLUMN = "client_email";
    public final static String USER_ID_COLUMN = "user_id";

    protected double totalPrice;
    protected String clientName;
    protected String clientAddress;
    protected String clientEmail;
    protected int userID;

    public StoreBookOrder(UUID orderID, int bookID, int quantity, double totalPrice, String client, String clAddr, String clEmail, int userID) {
        super(orderID, bookID, quantity);

        this.totalPrice = totalPrice;
        this.clientName = client;
        this.clientAddress = clAddr;
        this.clientEmail = clEmail;
        this.userID = userID;
    }

    public StoreBookOrder(JSONObject json) {
        super(json);
        this.totalPrice = json.has(TOTAL_PRICE_KEY) ? json.getInt(TOTAL_PRICE_KEY) : -1;
        this.clientName = json.has(CLIENT_NAME_KEY) ? json.getString(CLIENT_NAME_KEY) : null;
        this.clientAddress = json.has(CLIENT_ADDRESS_KEY) ? json.getString(CLIENT_ADDRESS_KEY) : null;
        this.clientEmail = json.has(CLIENT_EMAIL_KEY) ? json.getString(CLIENT_EMAIL_KEY) : null;
        this.userID = json.has(USER_ID_KEY) ? json.getInt(USER_ID_KEY) : -1;
    }


    public static StoreBookOrder getOrderFromSQL(ResultSet r) throws SQLException {
        StoreBookOrder result = new StoreBookOrder(UUID.fromString(r.getString(ORDER_ID_COLUMN)),
                r.getInt(BOOK_ID_COLUMN),
                r.getInt(QUANTITY_COLUMN),
                r.getInt(TOTAL_PRICE_COLUMN),
                r.getString(CLIENT_NAME_COLUMN),
                r.getString(CLIENT_ADDRESS_COLUMN),
                r.getString(CLIENT_EMAIL_COLUMN),
                r.getInt(USER_ID_COLUMN));

        State state = State.values()[r.getInt(STATE_COLUMN)];
        switch (state) {
            case DISPATCHED:
                result.dispatched(r.getTimestamp(STATE_DATE_COLUMN));
                break;
            case SHOULD_DISPATCH:
                result.shouldDispatch(r.getTimestamp(STATE_DATE_COLUMN));
                break;
        }

        return result;
    }

    public double getTotalPrice() {
        return totalPrice;
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

    @Override
    public String toString() {
        return toJSON().toString();
    }

    public JSONObject toJSON() {
        JSONObject result = super.toJSON();
        result.put(TOTAL_PRICE_KEY, totalPrice);
        result.put(CLIENT_NAME_KEY, clientName);
        result.put(CLIENT_ADDRESS_KEY, clientAddress);
        result.put(CLIENT_EMAIL_KEY, clientEmail);
        result.put(USER_ID_KEY, userID);

        return result;
    }
}
