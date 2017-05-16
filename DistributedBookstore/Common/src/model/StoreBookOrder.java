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
    public final static String TOTAL_PRICE_COLUMN = "total_price";

    protected double totalPrice;

    public StoreBookOrder(UUID orderID, int bookID, int quantity, double totalPrice, String client, String clAddr, String clEmail) {
        super(orderID, bookID, quantity, client, clAddr, clEmail);
        this.totalPrice = totalPrice;
    }

    public StoreBookOrder(JSONObject json) {
        super(json);
        this.totalPrice = json.has(TOTAL_PRICE_KEY) ? json.getInt(TOTAL_PRICE_KEY) : -1;
    }


    public static StoreBookOrder getOrderFromSQL(ResultSet r) throws SQLException {
        StoreBookOrder result = new StoreBookOrder(UUID.fromString(r.getString(ORDER_ID_COLUMN)),
                r.getInt(BOOK_ID_COLUMN),
                r.getInt(QUANTITY_COLUMN),
                r.getInt(TOTAL_PRICE_COLUMN),
                r.getString(CLIENT_NAME_COLUMN),
                r.getString(CLIENT_ADDRESS_COLUMN),
                r.getString(CLIENT_EMAIL_COLUMN));

        State state = State.values()[r.getInt(STATE_COLUMN)];
        switch (state) {
            case DISPATCHED:
                result.dispatched(r.getDate(STATE_DATE_COLUMN));
                break;
            case WILL_DISPATCH:
                result.willDispatch(r.getDate(STATE_DATE_COLUMN));
                break;
        }

        return result;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    @Override
    public String toString() {
        return toJSON().toString();
    }

    public JSONObject toJSON() {
        JSONObject result = super.toJSON();
        result.put(TOTAL_PRICE_KEY, totalPrice);

        return result;
    }
}
