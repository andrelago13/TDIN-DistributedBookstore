package test;

import javax.jws.WebMethod;
import javax.jws.WebService;

/**
 * Created by asl_m on 13/05/2017.
 */
@WebService
public class servS{
    @WebMethod
    public String sayHello(String name) {
        return "-> " + name + ".";
    }
}
