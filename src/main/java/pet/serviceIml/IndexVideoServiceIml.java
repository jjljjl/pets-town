package pet.serviceIml;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.IndexVideoMapper;
import pet.model.IndexVideo;
import pet.service.IndexVideoService;
import pet.util.BeanUtil;
import pet.util.PagedResult;

import java.sql.Date;

/**
 * Created by developer on 2017/4/12.
 */
@Service
public class IndexVideoServiceIml implements IndexVideoService {
    @Autowired
    IndexVideoMapper indexVideoMapper;
    @Override
    public PagedResult<IndexVideo> findByPage(String username, Integer pageNo, Integer pageSize) {
        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        PageHelper.startPage(pageNo,pageSize);
        return BeanUtil.toPagedResult(indexVideoMapper.selectByName(username));
    }

    @Override
    public void addVideos(String videoName, String filename, String videosName, String videoId, Date createdOn) {
        IndexVideo indexVideo =  new IndexVideo(videoId, videoName, videosName, createdOn, filename);
        indexVideoMapper.insert(indexVideo);
    }
}
