package pet.serviceIml;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.UserRegisterMapper;
import pet.model.UserRegister;
import pet.service.UserRegisterService;
import pet.util.BeanUtil;
import pet.util.PagedResult;

/**
 * Created by developer on 2017/3/15.
 */
@Service
public class UserRegisterServiceIml implements UserRegisterService{
    @Autowired
     private UserRegisterMapper userRegisterMapper;
    @Override
    public Boolean isHave(String username) {
       UserRegister userRegister =  userRegisterMapper.selectByUserName(username);
        if(userRegister==null){
            return true;
        }
        return false;
    }

    @Override
    public void insertUser(UserRegister user) {
        userRegisterMapper.insert(user);
    }

    @Override
    public PagedResult<UserRegister> queryPage(String username, Integer pageNo, Integer pageSize) {
        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        PageHelper.startPage(pageNo,pageSize);
        return BeanUtil.toPagedResult(userRegisterMapper.showUsers(username));
    }

    @Override
    public void deleteUser(int userId) {
        userRegisterMapper.deleteByPrimaryKey(userId);
    }
}
