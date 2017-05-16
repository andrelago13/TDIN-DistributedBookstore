package tdin.services;

import org.json.JSONArray;
import org.json.JSONObject;
import tdin.handlers.StockHandler;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.SQLException;
import java.util.Map;

@Path("stocks")
public class Stocks {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAllStocks() throws SQLException {
        Map<Integer, Integer> books = StockHandler.getInstance().getBooksStock();
        JSONArray jsonBooksStock = new JSONArray();
        JSONObject bookStock;
        for (Map.Entry<Integer, Integer> entry : books.entrySet()) {
            bookStock = new JSONObject();
            bookStock.put("bookID", entry.getKey());
            bookStock.put("quantity", entry.getValue());
            jsonBooksStock.put(bookStock);
        }
        return Response.ok(jsonBooksStock.toString()).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response getBook(@PathParam("id") int id) throws SQLException {
        JSONObject bookStock = new JSONObject();
        bookStock.put("bookID", id);
        bookStock.put("quantity", StockHandler.getInstance().getStock(id));
        return Response.ok(bookStock.toString()).build();
    }
}
