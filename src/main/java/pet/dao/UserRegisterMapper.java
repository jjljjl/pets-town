package pet.dao;

import pet.model.UserRegister;

public interface UserRegisterMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRegister record);

    int insertSelective(UserRegister record);

    UserRegister selectByUserName(String userName);

    int updateByPrimaryKeySelective(UserRegister record);

    int updateByPrimaryKey(UserRegister record);
}