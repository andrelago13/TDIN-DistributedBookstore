package tdin.services;

import model.Book;
import tdin.handlers.BooksHandler;
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
        if (!UsersHandler.getInstance().validateCredentials(username, password)) {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
        return Response.ok().build();
    }

}
