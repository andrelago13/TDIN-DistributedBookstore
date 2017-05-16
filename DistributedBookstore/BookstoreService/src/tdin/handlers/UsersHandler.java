package tdin.handlers;

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

    public boolean validateCredentials(String username, String password) {
        return true;
    }
}
