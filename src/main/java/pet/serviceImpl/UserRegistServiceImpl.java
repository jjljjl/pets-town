package pet.serviceImpl;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.UserRegistMapper;
import pet.model.UserRegist;
import pet.service.UserRegistService;
import pet.util.BeanUtil;
import pet.util.PagedResult;

/**
 * Created by Jiang on 2017/3/11.
 */
@Service
public class UserRegistServiceImpl implements UserRegistService{
    @Autowired
    private UserRegistMapper userRegistMapper;

    public Boolean isExist(String userName, String password, String telphone, String email){
         UserRegist userRegist = new UserRegist();
         userRegist= userRegistMapper.selectByUserName(userName);
         System.out.print( userRegistMapper.selectByUserName(userName));
        if(userRegist==null){
            userRegist.setUserName(userName);
            userRegist.setUserEmail(email);
            userRegist.setUserPassword(password);
            userRegist.setUserTelphone(telphone);
             userRegistMapper.insert(userRegist);
            return true;
        }
        return false;
    }

    public PagedResult<UserRegist> queryByPage(String userName, Integer pageNo, Integer pageSize ) {
        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        PageHelper.startPage(pageNo,pageSize);  //startPage是告诉拦截器说我要开始分页了。分页参数是这两个。
        return BeanUtil.toPagedResult(userRegistMapper.selectUserByUserName(userName));
    }
}
