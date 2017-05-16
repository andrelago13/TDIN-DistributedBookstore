package tdin.services;

import model.BookOrder;
import model.StoreBookOrder;
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
        return Response.ok(OrdersHandler.getInstance().getBookOrders().toString()).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("pending")
    public Response getPendingOrders() throws SQLException {
        return Response.ok(OrdersHandler.getInstance().getPendingOrders().toString()).build();
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
    @Consumes(MediaType.APPLICATION_JSON)
    public Response createOrder(String jsonRequest) {
        StoreBookOrder bookOrder = new StoreBookOrder(new JSONObject(jsonRequest));
        if (OrdersHandler.getInstance().createOrder(bookOrder)) {
            // TODO: Send an email to the user regarding his order
            return Response.created(URI.create("orders/" + bookOrder.getOrderID().toString())).build();
        } else {
            return Response.serverError().build();
        }
    }
}