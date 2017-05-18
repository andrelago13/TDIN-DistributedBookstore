package tdin.services;

import model.BookOrder;
import model.StoreBookOrder;
import model.StoreBookOrderList;
import org.json.JSONObject;
import tdin.handlers.OrdersHandler;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.net.URI;
import java.sql.SQLException;
import java.util.UUID;

@Path("orders")
public class Orders {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getOrders() throws SQLException {
        return Response.ok(new StoreBookOrderList(OrdersHandler.getInstance().getBookOrders()).toString()).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("pending")
    public Response getPendingOrders() throws SQLException {
        return Response.ok(new StoreBookOrderList(OrdersHandler.getInstance().getPendingOrders()).toString()).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response getOrder(@PathParam("id") UUID id) throws SQLException {
        BookOrder bookOrder = OrdersHandler.getInstance().getBookOrder(id);
        if (bookOrder == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        return Response.ok(bookOrder.toString()).build();
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    public Response createOrder(@FormParam("bookID") int bookID,
                                @FormParam("quantity") int quantity,
                                @FormParam("userID") int userID,
                                @FormParam("totalPrice") double totalPrice,
                                @FormParam("clientName") String clientName,
                                @FormParam("clientAddress") String clientAddress,
                                @FormParam("clientEmail") String clientEmail) {
        StoreBookOrder bookOrder = new StoreBookOrder(bookID, quantity, totalPrice, clientName, clientAddress, clientEmail, userID);
        if (OrdersHandler.getInstance().createOrder(bookOrder)) {
            // TODO: Send an email to the user regarding his order
            return Response.created(URI.create("orders/" + bookOrder.getOrderID().toString())).build();
        } else {
            return Response.serverError().build();
        }
    }
}