package pet.service;

/**
 * Created by developer on 2017/4/17.
 */
public interface ThePersonCenterService {
    String selectTelphone(String userName);

    void updateTelphone(String userName, String telphone);

    void updateEmail(String email, String username);

    void updatePwd(String newPwd, String username);
}
