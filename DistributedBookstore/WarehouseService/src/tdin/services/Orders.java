package tdin.services;

import model.BookOrder;
import model.DatabaseController;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import java.net.URI;
import java.util.UUID;

@Path("orders")
public class Orders {

    @GET
    @Produces("application/json")
    public String getAllOrders() {
        return DatabaseController.getInstance().getOrders().toJSON().toString();
    }

    @POST
    @Produces("application/json")
    public Response postMessage(@FormParam("orderID") UUID orderID, @FormParam("bookID") int bookID, @FormParam("quantity") int quantity) {
        BookOrder order = new BookOrder(orderID, bookID, quantity);

        if (DatabaseController.getInstance().postOrder(order)) {
            return Response.created(URI.create("orders/" + order.getOrderID().toString())).build();
        } else {
            return Response.serverError().build();
        }
    }
}