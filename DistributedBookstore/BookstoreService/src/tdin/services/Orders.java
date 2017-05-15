package tdin.services;

import model.BookOrder;
import tdin.handlers.OrdersHandler;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.sql.SQLException;

@Path("orders")
public class Orders {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public String getOrder(@PathParam("id") String id) {
        return new BookOrder("O livro", 1, "O cliente", "O endereço", "O email").toJSON().toString();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public String getOrders() throws SQLException {
        return OrdersHandler.getInstance().getBookOrders().toJSON().toString();
    }


    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public String createOrder(@FormParam("bookTitle") String title, @FormParam("quantity") int quantity,
                              @FormParam("clientName") String clientName, @FormParam("clientAddress") String clientAddress,
                              @FormParam("clientEmail") String clientEmail) {
        BookOrder bookOrder = new BookOrder(title, quantity, clientName, clientAddress, clientEmail);

        return bookOrder.toJSON().toString();
    }
}