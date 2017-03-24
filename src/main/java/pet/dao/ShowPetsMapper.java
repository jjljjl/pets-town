package pet.dao;

import org.apache.ibatis.annotations.Param;
import pet.model.ShowPets;

import java.util.List;

public interface ShowPetsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ShowPets record);

    int insertSelective(ShowPets record);

    List<ShowPets> selectByPetsName(@Param("petName") String petName);

    int updateByPrimaryKeySelective(ShowPets record);

    int updateByPrimaryKey(ShowPets record);
}