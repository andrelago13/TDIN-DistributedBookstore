import org.json.JSONObject;

import java.util.Date;

/**
 * Created by asl_m on 13/05/2017.
 */
public class BookOrder {

    public static enum State {
        WAITING_EXPEDITION,
        DISPATCHED,
        WILL_DISPATCH
    }

    public final static String ORDER_ID_KEY = "orderID";
    public final static String BOOK_TITLE_KEY = "bookTitle";
    public final static String QUANTITY_KEY = "quantity";
    public final static String CLIENT_NAME_KEY = "clientName";
    public final static String CLIENT_ADDRESS_KEY = "clientAddress";
    public final static String CLIENT_EMAIL_KEY = "clientEmail";
    public final static String STATE_KEY = "state";
    public final static String STATE_DATE_KEY = "stateDate";

    private int orderID;
    private String bookTitle;
    private int quantity;
    private String clientName;
    private String clientAddress;
    private String clientEmail;

    private State state;
    private Date stateDate;

    public BookOrder(int id, String title, int quantity, String client, String clAddr, String clEmail) {
        this.orderID = id;
        this.bookTitle = title;
        this.quantity = quantity;
        this.clientName = client;
        this.clientAddress = clAddr;
        this.clientEmail = clEmail;

        state = State.WAITING_EXPEDITION;
        stateDate = null;
    }

    public BookOrder(String jsonString) {
        this(new JSONObject(jsonString));
    }

    public BookOrder(JSONObject json) {
        this.orderID = json.getInt(ORDER_ID_KEY);
        this.bookTitle = json.getString(BOOK_TITLE_KEY);
        this.quantity = json.getInt(QUANTITY_KEY);
        this.clientName = json.getString(CLIENT_NAME_KEY);
        this.clientAddress = json.getString(CLIENT_ADDRESS_KEY);
        this.clientEmail = json.getString(CLIENT_EMAIL_KEY);
        this.state = State.values()[json.getInt(STATE_KEY)];
        if(this.state != State.WAITING_EXPEDITION) {
            stateDate = new Date(json.getLong(STATE_DATE_KEY));
        } else {
            stateDate = null;
        }
    }

    public void dispatch(Date date) {
        state = State.DISPATCHED;
        stateDate = date;
    }

    public void willDispatch(Date date) {
        state = State.WILL_DISPATCH;
        stateDate = date;
    }

    public State getState() {
        return state;
    }

    public JSONObject toJSON() {
        JSONObject result = new JSONObject();

        result.append(ORDER_ID_KEY, orderID);
        result.append(BOOK_TITLE_KEY, bookTitle);
        result.append(QUANTITY_KEY, quantity);
        result.append(CLIENT_NAME_KEY, clientName);
        result.append(CLIENT_ADDRESS_KEY, clientAddress);
        result.append(CLIENT_EMAIL_KEY, clientEmail);
        result.append(STATE_KEY, state.ordinal());
        if(stateDate != null) {
            result.append(STATE_DATE_KEY, stateDate.getTime());
        } else {
            result.append(STATE_DATE_KEY, null);
        }

        return result;
    }
}
