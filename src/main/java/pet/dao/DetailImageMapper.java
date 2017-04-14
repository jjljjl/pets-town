package pet.dao;

import pet.model.DetailImage;

import java.util.List;

public interface DetailImageMapper {
    int deleteByPrimaryKey(Long id);

    int insert(DetailImage record);

    int insertSelective(DetailImage record);

    DetailImage selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(DetailImage record);

    int updateByPrimaryKey(DetailImage record);
    List<DetailImage> selectByPid(Integer pId);
}