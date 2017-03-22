package pet.dao;

import org.apache.ibatis.annotations.Param;
import pet.model.UserRegister;

import java.util.List;

public interface UserRegisterMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRegister record);

    int insertSelective(UserRegister record);

    UserRegister selectByUserName(String userName);

    int updateByPrimaryKeySelective(UserRegister record);

    int updateByPrimaryKey(UserRegister record);
    UserRegister   selectByUserNameAndPw(@Param("userName") String userName, @Param("password") String password);

    List<UserRegister> showUsers(@Param("userName") String userName);
}