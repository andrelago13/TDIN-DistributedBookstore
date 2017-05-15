package services;

import model.BookOrder;
import model.DatabaseController;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

/**
 * Created by asl_m on 15/05/2017.
 */
@Path("/orders/update")
public class OrderUpdater {

    @POST
    @Produces("application/json")
    public String postMessage(@FormParam("id") int id) {
        DatabaseController.getInstance().updateOrderState(id);
        return "ok";
    }

}
