package model;

import org.json.JSONObject;

import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
    public final static String ID_KEY = "ID";
    public final static String USERNAME_KEY = "username";
    public final static String PASSWORD_KEY = "password";
    public final static String NAME_KEY = "name";
    public final static String EMAIL_KEY = "email";
    public final static String ADDRESS_KEY = "address";

    public final static String ID_COLUMN = "id";
    public final static String USERNAME_COLUMN = "username";
    public final static String PASSWORD_COLUMN = "password";
    public final static String NAME_COLUMN = "name";
    public final static String EMAIL_COLUMN = "email";
    public final static String ADDRESS_COLUMN = "address";

    private int ID;
    private String username;
    private String name;
    private String email;
    private String address;

    public User(int ID, String username, String name, String email, String address) {
        this.ID = ID;
        this.username = username;
        this.name = name;
        this.email = email;
        this.address = address;
    }

    public static User getOrderFromSQL(ResultSet r) throws SQLException {
        User user = new User(r.getInt(ID_COLUMN),
                r.getString(USERNAME_COLUMN),
                r.getString(NAME_COLUMN),
                r.getString(EMAIL_COLUMN),
                r.getString(ADDRESS_COLUMN));

        return user;
    }

    public int getID() {
        return ID;
    }

    public String getUsername() {
        return username;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }

    @Override
    public String toString() {
        return toJSON().toString();
    }

    public JSONObject toJSON() {
        JSONObject result = new JSONObject();

        result.put(ID_KEY, ID);
        result.put(USERNAME_KEY, username);
        result.put(NAME_KEY, name);
        result.put(EMAIL_KEY, email);
        result.put(ADDRESS_KEY, address);

        return result;
    }
}
