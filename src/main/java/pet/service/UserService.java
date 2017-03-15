package pet.service;

import pet.model.User;
import pet.util.PagedResult;

public interface UserService {
	
	public User getUserById(int id);
	PagedResult<User> queryByPage(String userName, Integer pageNo, Integer pageSize);

}
