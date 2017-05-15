import model.ModelSetup;
import tdin.services.Auth;
import tdin.services.OrderUpdater;
import tdin.services.Orders;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;
import java.util.HashSet;
import java.util.Set;

@ApplicationPath("/")
public class MyApplication extends Application{

    @Override
    public Set<Class<?>> getClasses() {
        ModelSetup.maybeSetup();
        HashSet h = new HashSet<Class<?>>();
        h.add( Orders.class );
        h.add( OrderUpdater.class );
        h.add( Auth.class );
        return h;
    }
}