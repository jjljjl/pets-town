package pet.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.UserMapper;
import pet.model.User;

@Service("userService")
public class UserServiceImp implements UserService {
	@Autowired
	private UserMapper userMapper ;

	@Override
	public User getUserById(int id) {
		return userMapper.selectByPrimaryKey(id);
	}

}
