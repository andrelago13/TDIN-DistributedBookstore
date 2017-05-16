package tdin.services;

import model.Book;
import org.json.JSONArray;
import org.json.JSONObject;
import tdin.handlers.BooksHandler;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

@Path("books")
public class Books {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getBooks() throws SQLException {
        List<Book> books = BooksHandler.getInstance().getBooks();
        JSONArray jsonBooks = new JSONArray();
        for (Book book : books) {
            jsonBooks.put(book.toJSON());
        }
        return Response.ok(jsonBooks.toString()).build();
    }

    @GET
    @Path("stocks")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getStock() throws SQLException {
        Map<Integer, Integer> books = BooksHandler.getInstance().getBooksStock();
        JSONArray jsonBooksStock = new JSONArray();
        JSONObject bookStock;
        for (Map.Entry<Integer, Integer> entry : books.entrySet()) {
            bookStock = new JSONObject();
            bookStock.put("bookID", entry.getKey());
            bookStock.put("stock", entry.getValue());
            jsonBooksStock.put(bookStock);
        }
        return Response.ok(jsonBooksStock.toString()).build();
    }
}
