package pet.serviceIml;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.DetailImageMapper;
import pet.model.DetailImage;
import pet.service.DetailImgeService;

import java.util.List;

/**
 * Created by developer on 2017/4/14.
 */
@Service
public class DetailServiceIml implements DetailImgeService{
    @Autowired
    private DetailImageMapper detailImageMapper;
    @Override
    public void insertInto(Integer pId, List<String> filename) {
        DetailImage detailImage;
        for(String f:filename){
            detailImage = new DetailImage();
          detailImage.setpId(pId);
            detailImage.setImageName(f);
            detailImageMapper.insert(detailImage);
        }

    }

    @Override
    public List<DetailImage> findDetailImage(Integer id) {
        return detailImageMapper.selectByPid(id);
    }
}
