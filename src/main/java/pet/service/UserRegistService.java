package pet.service;

import pet.model.UserRegist;
import pet.util.PagedResult;

/**
 * Created by Jiang on 2017/3/11.
 */
public interface UserRegistService {

    Boolean isExist(String userName, String password, String telphone, String email);
    PagedResult<UserRegist> queryByPage(String userName, Integer pageNo, Integer pageSize);

}
