package tdin.services;

import model.BookOrder;
import tdin.handlers.OrdersHandler;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.SQLException;
import java.util.UUID;

@Path("orders")
public class Orders {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response getOrder(@PathParam("id") String id) throws SQLException {
        UUID uuid;
        try {
            uuid = UUID.fromString(id);
        } catch (IllegalArgumentException e) {
            return Response.status(Response.Status.BAD_REQUEST).build();
        }

        BookOrder bookOrder = OrdersHandler.getInstance().getBookOrder(uuid);
        if(bookOrder == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        return Response.ok(bookOrder.toJSON().toString()).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getOrders() throws SQLException {
        return OrdersHandler.getInstance().getBookOrders().toJSON().toString();
    }


    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public String createOrder(@FormParam("bookID") int bookID, @FormParam("quantity") int quantity,
                              @FormParam("clientName") String clientName, @FormParam("clientAddress") String clientAddress,
                              @FormParam("clientEmail") String clientEmail) {
        BookOrder bookOrder = new BookOrder(bookID, quantity, clientName, clientAddress, clientEmail);

        return bookOrder.toJSON().toString();
    }
}