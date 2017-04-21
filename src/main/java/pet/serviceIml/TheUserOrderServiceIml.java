package pet.serviceIml;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.TheUserOrderMapper;
import pet.model.TheUserOrder;
import pet.service.TheUserOrderService;

import java.sql.Timestamp;

/**
 * Created by developer on 2017/4/21.
 */
@Service
public class TheUserOrderServiceIml implements TheUserOrderService {
    @Autowired
    private TheUserOrderMapper theUserOrderMapper;
    @Override
    public void addToCar(Integer uId, Double petPrice, Timestamp createOn, Integer id) {
        TheUserOrder theUserOrder = new TheUserOrder();
        theUserOrder.setuId(uId);
        theUserOrder.setPetPrice(petPrice);
        theUserOrder.setPetCount(1);
        theUserOrder.setpId(id);
        theUserOrder.setCreateOn(createOn);
        theUserOrder.setStatus(0);
        theUserOrderMapper.insert(theUserOrder);
    }
}
