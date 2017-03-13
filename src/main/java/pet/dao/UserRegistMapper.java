package pet.dao;

import org.apache.ibatis.annotations.Param;
import pet.model.UserRegist;

import java.util.List;

public interface UserRegistMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRegist record);

    int insertSelective(UserRegist record);

     UserRegist selectByUserName( String userName);

    List<UserRegist> selectUserByUserName(@Param("userName") String userName);


    int updateByPrimaryKeySelective(UserRegist record);

    int updateByPrimaryKey(UserRegist record);
}