package pet.service;

/**
 * Created by developer on 2017/4/18.
 */
public interface UserAddressService {
    void insertAddress(Integer uId, String adrArea, String fullAddress, String postCode, String receiptName, String telphone);
}
