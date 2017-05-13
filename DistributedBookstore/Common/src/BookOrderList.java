import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;

/**
 * Created by asl_m on 13/05/2017.
 */
public class BookOrderList {

    public final static String ORDERS_KEY = "orders";

    private ArrayList<BookOrder> orders;

    public BookOrderList() {
        orders = new ArrayList<>();
    }

    public BookOrderList(ArrayList<BookOrder> orders) {
        this.orders = orders;
    }

    public BookOrderList(String jsonString) {
        this(new JSONObject(jsonString));
    }

    public BookOrderList(JSONObject json) {
        JSONArray list = json.getJSONArray(ORDERS_KEY);
        orders = new ArrayList<>();
        for(int i = 0; i < list.length(); ++i) {
            orders.add(new BookOrder(list.getJSONObject(i)));
        }
    }

    public void addOrder(BookOrder order) {
        orders.add(order);
    }

    public JSONObject toJSON() {
        JSONObject result = new JSONObject();

        JSONArray list = new JSONArray();
        for(BookOrder bo : orders) {
            list.put(bo.toJSON());
        }
        result.append(ORDERS_KEY, list);

        return result;
    }
}
