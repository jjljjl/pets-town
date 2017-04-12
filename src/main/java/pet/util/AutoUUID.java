package pet.util;

import java.util.UUID;

/**
 * Created by developer on 2017/4/12.
 */
public class AutoUUID {
    public static   String getUUID(){
        return UUID.randomUUID().toString();
    }
}
