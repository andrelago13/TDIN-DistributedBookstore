package tdin;

import database.Database;
import database.types.DatabaseType;

import java.sql.SQLException;

/**
 * Created by joaos on 15/05/2017.
 */
public class Core {
    private static Core instance;

    public static Core getInstance() {
        if (instance == null) {
            instance = new Core();
        }
        return instance;
    }

    private Database database;

    public Database getDatabase() {
        return database;
    }

    private Core() {
        this.database = Database.createDatabase(DatabaseType.MYSQL, "localhost", 3306, "tdin", "user", "123456");
        try {
            this.database.connect();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
