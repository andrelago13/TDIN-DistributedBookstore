package tdin.services;

import model.BookOrder;
import model.DatabaseController;
import sun.net.www.http.HttpClient;

import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;
import javax.xml.crypto.Data;
import java.io.DataOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

/**
 * Created by asl_m on 15/05/2017.
 */
@Path("/orders/update")
public class OrderUpdater {

    @POST
    @Produces("application/json")
    public Response postMessage(@FormParam("id") String id) {
        DatabaseController.getInstance().updateOrderState(UUID.fromString(id));
        updateStoreStock(DatabaseController.getInstance().getOrder(id));

        return Response.ok().build();
    }

    private boolean updateStoreStock(BookOrder order) {
        try {
            String urlParameters  = "id=" + order.getOrderID() + "&bookID=" + order.getBookID() +
                    "&quantity=" + order.getQuantity() + "&dispatchDate=" + order.getDispatchDate().toString();
            byte[] postData       = urlParameters.getBytes( StandardCharsets.UTF_8 );
            int    postDataLength = postData.length;
            String request        = "http://localhost:8080/bookstore/stocks/incoming";
            URL url            = new URL( request );
            HttpURLConnection conn= (HttpURLConnection) url.openConnection();
            conn.setDoOutput( true );
            conn.setInstanceFollowRedirects( false );
            conn.setRequestMethod( "POST" );
            conn.setRequestProperty( "Content-Type", "application/x-www-form-urlencoded");
            conn.setRequestProperty( "charset", "utf-8");
            conn.setRequestProperty( "Content-Length", Integer.toString( postDataLength ));
            conn.setUseCaches( false );
            try( DataOutputStream wr = new DataOutputStream( conn.getOutputStream())) {
                wr.write( postData );
            }
        } catch (Exception e) {
            return false;
        }

        return true;
    }

}
