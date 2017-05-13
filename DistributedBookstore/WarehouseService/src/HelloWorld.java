import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;

@Path("/helloworld")
public class HelloWorld {

    @GET
    @Produces("application/json")
    public String getClichedMessage() {
        BookOrderList list = new BookOrderList();
        list.addOrder(new BookOrder(2, "ola", 5, "teste", "mor", "em"));
        list.addOrder(new BookOrder(4, "ol231", 5, "teste5", "mor", "em"));
        list.addOrder(new BookOrder(6, "olhhhhha", 5, "teste7", "mor", "em"));
        return list.toJSON().toString();
    }

}