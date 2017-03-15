package pet.service;


import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.UserMapper;
import pet.model.User;
import pet.util.BeanUtil;
import pet.util.PagedResult;

@Service("userService")
public class UserServiceImp implements UserService {
	@Autowired
	private UserMapper userMapper ;

	@Override
	public User getUserById(int id) {
		return userMapper.selectByPrimaryKey(id);
	}
	public PagedResult<User> queryByPage(String userName, Integer pageNo, Integer pageSize ) {
		pageNo = pageNo == null?1:pageNo;
		pageSize = pageSize == null?10:pageSize;
		PageHelper.startPage(pageNo,pageSize);  //startPage是告诉拦截器说我要开始分页了。分页参数是这两个。
		return BeanUtil.toPagedResult(userMapper.selectUserByUserName(userName));
	}
}
