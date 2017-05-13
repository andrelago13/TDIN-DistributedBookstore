package services;

import model.BookOrderList;

import javax.ws.rs.*;

@Path("/orders")
public class Orders {

    public static BookOrderList list = new BookOrderList();

    @GET
    @Produces("application/json")
    public String getClichedMessage() {
        return list.toJSON().toString();
    }

    @POST
    @Produces("application/json")
    public String postMessage(@FormParam("str") int str) {
        return "{ hey " + str + " }";
    }

}