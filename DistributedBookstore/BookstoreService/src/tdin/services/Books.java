package tdin.services;

import model.Book;
import org.json.JSONArray;
import tdin.handlers.BooksHandler;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
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

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response getBook(@PathParam("id") int id) throws SQLException {
        Book book = BooksHandler.getInstance().getBook(id);
        if (book == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        return Response.ok(book.toString()).build();
    }
}
