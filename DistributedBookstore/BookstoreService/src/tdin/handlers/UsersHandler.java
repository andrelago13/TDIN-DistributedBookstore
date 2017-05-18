package tdin.handlers;

import database.DatabaseAPI;
import model.User;
import tdin.Core;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by asl_m on 16/05/2017.
 */
public class UsersHandler {

    private static UsersHandler instance;

    private UsersHandler() {

    }

    public static UsersHandler getInstance() {
        if(instance == null) {
            instance = new UsersHandler();
        }

        return instance;
    }

    public List<User> getUsers() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "users",
                Collections.singletonList("*"));

        List<User> users = new ArrayList<>();
        while (result.next()) {
            users.add(User.getOrderFromSQL(result));
        }

        return users;
    }

    public User getUser(int userID) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "users",
                Collections.singletonList("*"),
                Collections.singletonList(User.ID_COLUMN),
                Collections.singletonList(userID));

        if (!result.next())
            return null;

        return User.getOrderFromSQL(result);
    }

    public User getUser(String username) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "users",
                Collections.singletonList("*"),
                Collections.singletonList(User.USERNAME_COLUMN),
                Collections.singletonList(username));

        if (!result.next())
            return null;

        return User.getOrderFromSQL(result);
    }

    public boolean validCredentials(String username, String password) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "users",
                Collections.singletonList("username"),
                Arrays.asList("username", "password"),
                Arrays.asList(username, password));
        return result.next();
    }

    public boolean registerCredentials(String username, String password, String name, String email, String address) throws SQLException {
        return DatabaseAPI.executeInsertion(
                Core.getInstance().getDatabase(),
                "users",
                new HashMap<String, Object>() {{
                    put(User.USERNAME_COLUMN, username);
                    put(User.PASSWORD_COLUMN, password);
                    put(User.NAME_COLUMN, name);
                    put(User.EMAIL_COLUMN, email);
                    put(User.ADDRESS_COLUMN, address);
                }}
        );
    }
}
