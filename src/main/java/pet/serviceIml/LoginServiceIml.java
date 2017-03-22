package pet.serviceIml;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.UserRegisterMapper;
import pet.model.UserRegister;
import pet.service.LoginService;

/**
 * Created by developer on 2017/3/16.
 */
@Service
public class LoginServiceIml implements LoginService{
    @Autowired
    private UserRegisterMapper userRegisterMapper;
    @Override
    public boolean isHaveUser(String userName, String password) {
       UserRegister userRegister = userRegisterMapper.selectByUserNameAndPw(userName,password);
        if(userRegister==null){
            return false;
        }
        return true;
    }
}
