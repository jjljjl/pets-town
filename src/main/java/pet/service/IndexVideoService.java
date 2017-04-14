package pet.service;

import pet.model.IndexVideo;
import pet.util.PagedResult;

import java.sql.Date;
import java.util.List;

/**
 * Created by developer on 2017/4/12.
 */
public interface IndexVideoService {
    PagedResult<IndexVideo> findByPage (String username, Integer pageNo, Integer pageSize );

    void addVideos(String videoName, String filename, String videosName, String videoId, Date createdOn);

    List<IndexVideo> selectAllVideos();
}
