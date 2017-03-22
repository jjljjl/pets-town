package pet.serviceIml;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.AdminMapper;
import pet.model.Admin;
import pet.service.AdminService;
import pet.util.BeanUtil;
import pet.util.PagedResult;

/**
 * Created by developer on 2017/3/16.
 */
@Service
public class AdminServiceIml implements AdminService {


    @Autowired
     private AdminMapper adminMapper;
    @Override
    public Boolean isHave(String username, String password) {
       Admin admin =  adminMapper.selectByNameAnPwd(username,password);
        if(admin==null){
          return false;
        }
        return true;
    }

    @Override
    public PagedResult<Admin> queryPage(String username, Integer pageNo, Integer pageSize) {
        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        PageHelper.startPage(pageNo,pageSize);
        return BeanUtil.toPagedResult(adminMapper.selectAdminByName(username));
    }


}
