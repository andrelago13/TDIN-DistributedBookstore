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
    public String postMessage(@FormParam("book_id") int book_id, @FormParam("quantity") int quantity) {
        postOrder(new BookOrder(book_id, quantity));
        return "{ hey }";
    }


    private boolean postOrder(BookOrder order) {
        return DatabaseController.getInstance().postOrder(order);
    }
}