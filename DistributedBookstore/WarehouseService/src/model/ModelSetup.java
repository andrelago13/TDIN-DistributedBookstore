package model;

/**
 * Created by asl_m on 13/05/2017.
 */
public class ModelSetup {

    private static boolean setup = false;

    public static boolean maybeSetup() {
        if (setup) {
            return false;
        }

        setup();

        return setup;
    }

    private static void setup() {
        DatabaseController.getInstance();

        setup = true;
    }
}
