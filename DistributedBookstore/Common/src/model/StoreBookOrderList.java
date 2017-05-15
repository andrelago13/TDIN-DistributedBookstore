package model;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by asl_m on 13/05/2017.
 */
public class StoreBookOrderList {

    public final static String ORDERS_KEY = "orders";

    private List<StoreBookOrder> orders;

    public StoreBookOrderList() {
        orders = new ArrayList<>();
    }

    public StoreBookOrderList(List<StoreBookOrder> orders) {
        this.orders = orders;
    }

    public StoreBookOrderList(String jsonString) {
        this(new JSONObject(jsonString));
    }

    public StoreBookOrderList(JSONObject json) {
        JSONArray list = json.getJSONArray(ORDERS_KEY);
        orders = new ArrayList<>();
        for(int i = 0; i < list.length(); ++i) {
            orders.add(new StoreBookOrder(list.getJSONObject(i)));
        }
    }

    public void addOrder(StoreBookOrder order) {
        orders.add(order);
    }

    public JSONObject toJSON() {
        JSONObject result = new JSONObject();

        JSONArray list = new JSONArray();
        for(BookOrder bo : orders) {
            list.put(bo.toJSON());
        }
        result.put(ORDERS_KEY, list);

        return result;
    }
}
