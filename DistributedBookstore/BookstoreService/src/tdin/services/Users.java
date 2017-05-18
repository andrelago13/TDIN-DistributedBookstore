package tdin.services;

import model.StoreBookOrderList;
import model.User;
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
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @Path("login")
    public Response validateCredentials(@FormParam("username") String username, @FormParam("password") String password)
            throws SQLException {
        if (!UsersHandler.getInstance().validCredentials(username, password)) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        return Response.ok().build();
    }

    @POST
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
    @Path("register")
    public Response register(@FormParam("username") String username, @FormParam("password") String password)
            throws SQLException {
        if (password.length() == 0 || !UsersHandler.getInstance().registerCredentials(username, password)) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        return Response.ok().build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response getUser(@PathParam("id") int userID) throws SQLException {
        User user = UsersHandler.getInstance().getUser(userID);
        if (user == null) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        return Response.ok(user.toString()).build();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    @Path("{id}/orders")
    public Response getUserOrders(@PathParam("id") int userID) throws SQLException {
        return Response.ok(new StoreBookOrderList(OrdersHandler.getInstance().getUserBookOrders(userID)).toString()).build();
    }
}
