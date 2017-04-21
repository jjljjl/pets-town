package pet.serviceIml;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.UserAddressMapper;
import pet.model.UserAddress;
import pet.service.UserAddressService;

/**
 * Created by developer on 2017/4/18.
 */
@Service
public class UserAddressServiceIml implements UserAddressService {
    @Autowired
    private  UserAddressMapper userAddressMapper;
    @Override
    public void insertAddress(Integer uId, String adrArea, String fullAddress, String postCode, String receiptName, String telphone) {
        UserAddress userAddress = new UserAddress(uId,adrArea,fullAddress,postCode,receiptName,telphone);
        userAddressMapper.insert(userAddress);
    }
}
