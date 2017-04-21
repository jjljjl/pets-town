package pet.dao;

import pet.model.TheUserOrder;

public interface TheUserOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TheUserOrder record);

    int insertSelective(TheUserOrder record);

    TheUserOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TheUserOrder record);

    int updateByPrimaryKey(TheUserOrder record);
}