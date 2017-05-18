package tdin.handlers;

import database.DatabaseAPI;
import model.StoreBookOrder;
import model.User;
import tdin.Core;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Collections;

/**
 * Created by asl_m on 16/05/2017.
 */
public class UsersHandler {

    private static UsersHandler instance;

    public static UsersHandler getInstance() {
        if(instance == null) {
            instance = new UsersHandler();
        }

        return instance;
    }

    private UsersHandler() {

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

    public boolean validCredentials(String username, String password) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "users",
                Collections.singletonList("username"),
                Arrays.asList("username", "password"),
                Arrays.asList(username, password));
        return result.next();
    }

    public boolean registerCredentials(String username, String password) throws SQLException {
        // TODO register user in database
        return true;
    }
}
