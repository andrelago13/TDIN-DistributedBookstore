import model.ModelSetup;
import services.Auth;
import services.Orders;

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
        h.add( Auth.class );
        return h;
    }
}