package pet.dao;

import org.apache.ibatis.annotations.Param;
import pet.model.IndexVideo;

import java.util.List;

public interface IndexVideoMapper {
    int deleteByPrimaryKey(Integer videoId);

    int insert(IndexVideo record);

    int insertSelective(IndexVideo record);

    List<IndexVideo> selectByName(@Param("videoName") String videoName);

    int updateByPrimaryKeySelective(IndexVideo record);

    int updateByPrimaryKey(IndexVideo record);

    List<IndexVideo> selectAllVideos();
}