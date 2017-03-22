package pet.dao;

import org.apache.ibatis.annotations.Param;
import pet.model.Admin;

import java.util.List;
public interface AdminMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Admin record);

    int insertSelective(Admin record);

    List<Admin> selectAdminByName(@Param("adminName") String adminName);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
    Admin selectByNameAnPwd(@Param("adminName") String adminName,@Param("adminPwd") String adminPwd);
}