package pet.service;

import pet.model.DetailImage;

import java.util.List;

/**
 * Created by developer on 2017/4/14.
 */
public interface DetailImgeService {
    public void insertInto(Integer pId, List<String> filename);

    List<DetailImage> findDetailImage(Integer id);
}
