package pet.service;

import pet.model.UserRegister;
import pet.util.PagedResult;

/**
 * Created by developer on 2017/3/15.
 */
public interface UserRegisterService {

    public Boolean isHave(String username);

    void insertUser(UserRegister user);

    PagedResult<UserRegister> queryPage(String username,Integer pageNo,Integer pageSize);
}
