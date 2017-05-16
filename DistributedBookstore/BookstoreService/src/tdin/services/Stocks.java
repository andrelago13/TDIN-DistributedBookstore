package tdin.services;

import org.json.JSONArray;
import org.json.JSONObject;
import tdin.handlers.StockHandler;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.net.URI;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

@Path("stocks")
public class Stocks {

    /////////////////
    // STORE STOCK //
    /////////////////

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getBooksStock() throws SQLException {
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
    public Response getBookStock(@PathParam("id") int bookID) throws SQLException {
        JSONObject bookStock = new JSONObject();
        bookStock.put("bookID", bookID);
        bookStock.put("quantity", StockHandler.getInstance().getBookStock(bookID));
        return Response.ok(bookStock.toString()).build();
    }

    ////////////////////
    // INCOMING BOOKS //
    ////////////////////

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("incoming")
    public Response getIncomingBooksStock() throws SQLException {
        return Response.ok(StockHandler.getInstance().getIncomingBooksStock().toString()).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("incoming/{id}")
    public Response getIncomingBookStock(@PathParam("id") String id) throws SQLException {
        UUID uuid;
        try {
            uuid = UUID.fromString(id);
        } catch (IllegalArgumentException e) {
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

        JSONObject incomingStock = StockHandler.getInstance().getIncomingBookStock(uuid);
        if (incomingStock == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        return Response.ok(incomingStock.toString()).build();
    }

    @POST
    @Path("incoming")
    @Consumes(MediaType.APPLICATION_JSON)
    public Response createIncomingBookStock(String jsonRequest) throws ParseException {
        JSONObject incomingStock = new JSONObject(jsonRequest);
        int bookID = incomingStock.has("bookID") ? incomingStock.getInt("bookID") : -1;
        int quantity = incomingStock.has("quantity") ? incomingStock.getInt("quantity") : -1;
        Date dispatchDate = incomingStock.has("dispatchDate") ? DateFormat.getDateInstance().parse(incomingStock.getString("dispatchDate")) : null;

        if (bookID == -1 || quantity == -1 || dispatchDate == null) {
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

        UUID uuid = StockHandler.getInstance().createIncomingBookStock(bookID, quantity, dispatchDate);
        if (uuid != null) {
            return Response.created(URI.create("incoming/" + uuid.toString())).build();
        } else {
            return Response.serverError().build();
        }
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Path("incoming/{id}/accept")
    public Response acceptIncomingStock(@PathParam("id") String id) throws SQLException, ParseException {
        UUID uuid;
        try {
            uuid = UUID.fromString(id);
        } catch (IllegalArgumentException e) {
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

        JSONObject incomingStock = StockHandler.getInstance().getIncomingBookStock(uuid);
        if (incomingStock == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        if(!StockHandler.getInstance().acceptIncomingBookStock(uuid)) {
            return Response.serverError().build();
        }

        return Response.ok(incomingStock.toString()).build();
    }
}
