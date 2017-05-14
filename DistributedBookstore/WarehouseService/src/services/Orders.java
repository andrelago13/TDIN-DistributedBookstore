package services;

import model.BookOrder;
import model.BookOrderList;
import model.DatabaseController;

import javax.ws.rs.*;
import javax.ws.rs.core.*;
import java.lang.annotation.Annotation;
import java.net.URI;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

@Path("/orders")
public class Orders {

    @GET
    @Produces("application/json")
    public String getClichedMessage() {
        return DatabaseController.getInstance().getOrders().toJSON().toString();
    }

    @POST
    @Produces("application/json")
    public String postMessage(@FormParam("book_title") String title, @FormParam("quantity") int quantity,
                              @FormParam("client_name") String clientName, @FormParam("client_addr") String clientAddress,
                              @FormParam("client_email") String clientEmail) {
        postOrder(new BookOrder(0, title, quantity, clientName, clientAddress, clientEmail));
        return "{ hey }";
    }


    private boolean postOrder(BookOrder order) {
        return DatabaseController.getInstance().postOrder(order);
    }
}