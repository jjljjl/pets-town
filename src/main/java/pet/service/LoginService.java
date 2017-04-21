package pet.service;

import pet.model.UserRegister;

/**
 * Created by developer on 2017/3/16.
 */
public interface LoginService {
    boolean isHaveUser(String userName, String password);

    UserRegister findUser(String userName);
}
