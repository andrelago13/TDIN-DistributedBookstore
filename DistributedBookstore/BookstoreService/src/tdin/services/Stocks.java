package tdin.services;

import model.StoreBookOrder;
import org.json.JSONArray;
import org.json.JSONObject;
import tdin.handlers.OrdersHandler;
import tdin.handlers.StockHandler;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.net.URI;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.List;
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
    public Response createIncomingBookStock(String jsonRequest) throws SQLException {
        JSONObject incomingStock = new JSONObject(jsonRequest);
        UUID id = incomingStock.has("id") ? UUID.fromString(incomingStock.getString("id")) : null;
        int bookID = incomingStock.has("bookID") ? incomingStock.getInt("bookID") : -1;
        int quantity = incomingStock.has("quantity") ? incomingStock.getInt("quantity") : -1;
        Timestamp dispatchDate = incomingStock.has("dispatchDate") ? Timestamp.valueOf(incomingStock.getString("dispatchDate")) : null;

        if (id == null || bookID == -1 || quantity == -1 || dispatchDate == null) {
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

        if (!StockHandler.getInstance().createIncomingBookStock(id, bookID, quantity, dispatchDate)) {
            return Response.serverError().build();
        }

        // Change dispatched state
        // TODO: Send email to the user that the order should be dispatched in 2 days
        if (!OrdersHandler.getInstance().markAsShouldDispatchOrder(id)) {
            return Response.serverError().build();
        }

        return Response.created(URI.create("stocks/incoming/" + id.toString())).build();
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Path("incoming/{id}/accept")
    public Response acceptIncomingStock(@PathParam("id") UUID id) throws SQLException, ParseException {
        JSONObject incomingStock = StockHandler.getInstance().getIncomingBookStock(id);
        if (incomingStock == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }

        if (!StockHandler.getInstance().acceptIncomingBookStock(id)) {
            return Response.serverError().build();
        }

        // Get book and quantity of the incoming stock
        int bookID = incomingStock.has("bookID") ? incomingStock.getInt("bookID") : -1;
        int remainingQuantity = incomingStock.has("quantity") ? incomingStock.getInt("quantity") : -1;

        // TODO: Send an email telling that the order is going to be dispatched
        StoreBookOrder order = OrdersHandler.getInstance().getBookOrder(id);
        if(order != null) {
            remainingQuantity -= order.getQuantity();
            if (!OrdersHandler.getInstance().markAsDispatchedOrder(id)) {
                return Response.serverError().build();
            }
        }

        // Fulfil all pending orders that can be satisfied
        List<StoreBookOrder> pendingBookOrders = OrdersHandler.getInstance().getPendingBookOrders(bookID);
        for(StoreBookOrder pendingBookOrder : pendingBookOrders) {
            if(pendingBookOrder.getQuantity() > remainingQuantity) {
                continue;
            }

            if(!OrdersHandler.getInstance().markAsDispatchedOrder(pendingBookOrder.getOrderID())) {
                continue;
            }

            remainingQuantity -= pendingBookOrder.getQuantity();
        }

        if(!StockHandler.getInstance().addBookStock(bookID, remainingQuantity)) {
            return Response.serverError().build();
        }

        return Response.accepted().build();
    }
}
