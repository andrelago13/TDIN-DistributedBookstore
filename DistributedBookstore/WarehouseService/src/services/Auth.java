package services;

import model.DatabaseController;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

/**
 * Created by asl_m on 14/05/2017.
 */
@Path("/auth")
public class Auth {

    @POST
    @Produces("application/json")
    public String postMessage(@FormParam("userID") int userID, @FormParam("password") String password) {
        return "{ " + DatabaseController.getInstance().verifyPassword(userID, password) + " }";
    }
}
