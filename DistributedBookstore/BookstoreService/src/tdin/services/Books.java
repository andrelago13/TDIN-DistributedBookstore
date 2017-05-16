package tdin.services;

import model.Book;
import org.json.JSONArray;
import tdin.handlers.BooksHandler;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.SQLException;
import java.util.List;

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
}
