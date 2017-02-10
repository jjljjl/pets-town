package pet.service;

import pet.model.Users;

/**
 * Created by developer on 2017/2/10.
 */
public interface UserLoginService {
     public Users checkLogin(String name,String password);
}
