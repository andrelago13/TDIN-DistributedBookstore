package tdin.handlers;

import database.DatabaseAPI;
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

    public boolean validateCredentials(String username, String password) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "users",
                Collections.singletonList("username"),
                Arrays.asList("username", "password"),
                Arrays.asList(username, password));
        return result.next();
    }
}
