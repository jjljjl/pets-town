package pet.dao;

import pet.model.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(String uid);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(String uid);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    Users findUserByName(String name);
}