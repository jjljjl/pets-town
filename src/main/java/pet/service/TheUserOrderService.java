package pet.service;

import pet.serviceIml.TheUserOrderServiceIml;
import pet.util.PagedResult;

import java.sql.Timestamp;

/**
 * Created by developer on 2017/4/21.
 */
public interface TheUserOrderService {
    void addToCar(Integer uId, Double petPrice, Timestamp createOn, Integer id);
    PagedResult<TheUserOrderServiceIml.Order> queryPage( Integer pageNo, Integer pageSize,Integer id);

    void deleteOrder(Integer id);
}
