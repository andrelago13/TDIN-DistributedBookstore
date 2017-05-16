package tdin.services;

import tdin.handlers.OrdersHandler;
import tdin.handlers.UsersHandler;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.sql.SQLException;

@Path("users")
public class Users {

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Path("login")
    public Response validateCredentials(@FormParam("username") String username, @FormParam("password") String password)
            throws SQLException {
        if (!UsersHandler.getInstance().validCredentials(username, password)) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        return Response.ok().build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}/orders")
    public Response getUserOrders(@PathParam("id") int userID) throws SQLException {
        return Response.ok(OrdersHandler.getInstance().getUserBookOrders(userID).toString()).build();
    }
}
