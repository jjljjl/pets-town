package pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.UsersMapper;
import pet.model.Users;

import javax.annotation.Resource;

/**
 * Created by developer on 2017/2/10.
 */
@Service
public class UserLoginServiceImp implements UserLoginService {

    @Autowired
    private UsersMapper usersMapper;

    public Users checkLogin(String name, String password){
          Users users = usersMapper.findUserByName(name);
          if(users!=null && users.getUpassword().equals(password)){
              return users;
          }
        return null;
    }
}
