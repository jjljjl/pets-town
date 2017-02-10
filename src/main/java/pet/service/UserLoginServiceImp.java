package pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.UsersMapper;
import pet.model.Users;

import javax.annotation.Resource;

/**
 * Created by developer on 2017/2/10.
 */
@Service("userLoginService")
public class UserLoginServiceImp implements UserLoginService {

    private UsersMapper usersMapper;

    public UsersMapper getUsersMapper() {
        return usersMapper;
    }
  @Autowired
    public void setUsersMapper(UsersMapper usersMapper) {
        this.usersMapper = usersMapper;
    }

    public Users checkLogin(String name, String password){
          Users users = usersMapper.findUserByName(name);
          if(users!=null && users.getUpasswold().equals(password)){
              return users;
          }
        return null;
    }
}
