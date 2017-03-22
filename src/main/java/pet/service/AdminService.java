package pet.service;

import pet.model.Admin;
import pet.util.PagedResult;

/**
 * Created by developer on 2017/3/16.
 */
public interface AdminService {
    Boolean isHave(String username, String password);
    PagedResult<Admin> queryPage(String username,Integer pageNo,Integer pageSize);

    void deleteAdmin(int adminId);
}
