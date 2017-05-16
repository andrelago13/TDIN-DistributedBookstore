package tdin.handlers;

import database.DatabaseAPI;
import model.Book;
import tdin.Core;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

/**
 * Created by joaos on 16/05/2017.
 */
public class BooksHandler {

    private static BooksHandler instance;

    public static BooksHandler getInstance() {
        if (instance == null) {
            instance = new BooksHandler();
        }
        return instance;
    }

    private BooksHandler() {

    }

    public List<Book> getBooks() throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "books",
                Collections.singletonList("*"));

        List<Book> books = new ArrayList<>();
        while (result.next()) {
            books.add(Book.getOrderFromSQL(result));
        }

        return books;
    }

    public Book getBook(int bookID) throws SQLException {
        ResultSet result = DatabaseAPI.executeQuery(
                Core.getInstance().getDatabase(),
                "books",
                Collections.singletonList("*"),
                Collections.singletonList(Book.ID_COLUMN),
                Collections.singletonList(bookID));

        if(!result.next())
            return null;

        return Book.getOrderFromSQL(result);
    }
}
