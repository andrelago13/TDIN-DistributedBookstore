package tdin.services;

import model.BookOrder;
import model.DatabaseController;

import javax.ws.rs.*;
import java.util.UUID;

@Path("/orders")
public class Orders {

    @GET
    @Produces("application/json")
    public String getClichedMessage() {
        return DatabaseController.getInstance().getOrders().toJSON().toString();
    }

    @POST
    @Produces("application/json")
    public String postMessage(@FormParam("book_id") String book_id, @FormParam("quantity") int quantity,
                              @FormParam("client_name") String clientName, @FormParam("client_addr") String clientAddress,
                              @FormParam("client_email") String clientEmail) {
        postOrder(new BookOrder(UUID.fromString(book_id), quantity, 0, clientName, clientAddress, clientEmail));
        return "{ hey }";
    }


    private boolean postOrder(BookOrder order) {
        return DatabaseController.getInstance().postOrder(order);
    }
}