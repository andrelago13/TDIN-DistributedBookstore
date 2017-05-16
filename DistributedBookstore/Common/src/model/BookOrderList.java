package model;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by asl_m on 13/05/2017.
 */
public class BookOrderList {

    public final static String ORDERS_KEY = "orders";

    private List<BookOrder> orders;

    public BookOrderList() {
        orders = new ArrayList<>();
    }

    public BookOrderList(List<BookOrder> orders) {
        this.orders = orders;
    }

    public BookOrderList(String jsonString) {
        this(new JSONObject(jsonString));
    }

    public BookOrderList(JSONObject json) {
        JSONArray list = json.getJSONArray(ORDERS_KEY);
        orders = new ArrayList<>();
        for (int i = 0; i < list.length(); ++i) {
            orders.add(new BookOrder(list.getJSONObject(i)));
        }
    }

    public void addOrder(BookOrder order) {
        orders.add(order);
    }

    @Override
    public String toString() {
        return toJSON().toString();
    }

    public JSONObject toJSON() {
        JSONObject result = new JSONObject();

        JSONArray list = new JSONArray();
        for (BookOrder bo : orders) {
            list.put(bo.toJSON());
        }
        result.put(ORDERS_KEY, list);

        return result;
    }
}
