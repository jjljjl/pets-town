package pet.service;

import java.sql.Timestamp;

/**
 * Created by developer on 2017/4/21.
 */
public interface TheUserOrderService {
    void addToCar(Integer uId, Double petPrice, Timestamp createOn, Integer id);
}
