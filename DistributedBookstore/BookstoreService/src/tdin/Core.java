package tdin;

import libs.database.Database;
import libs.database.types.DatabaseType;

import java.sql.SQLException;

/**
 * Created by joaos on 15/05/2017.
 */
public class Core {
    private static Core instance;

    private Database database;

    private Core() {
        this.database = Database.createDatabase(DatabaseType.MYSQL, "localhost", 3306, "tdin", "user", "123456");
        try {
            this.database.connect();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Core getInstance() {
        if(instance == null) {
            instance = new Core();
        }
        return instance;
    }

    public Database getDatabase() {
        return database;
    }
}
