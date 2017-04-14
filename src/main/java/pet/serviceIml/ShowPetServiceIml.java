package pet.serviceIml;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pet.dao.ShowPetsMapper;
import pet.model.ShowPets;
import pet.service.ShowPetsService;
import pet.util.BeanUtil;
import pet.util.PagedResult;

import java.util.List;

/**
 * Created by developer on 2017/3/24.
 */
@Service
public class ShowPetServiceIml implements ShowPetsService {

    @Autowired
    ShowPetsMapper showPetsMapper;

    @Override
    public PagedResult<ShowPets> queryPage(String username, Integer pageNo, Integer pageSize) {
        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        PageHelper.startPage(pageNo,pageSize);
        return BeanUtil.toPagedResult(showPetsMapper.selectByPetsName(username));
    }

    @Override
    public void deletePets(int petId) {
        showPetsMapper.deleteByPrimaryKey(petId);
    }

    @Override
    public void addPets(String petName, Double petPrice, Integer petAge, Integer petType, String petImage) {
        ShowPets pets = new ShowPets();
        pets.setPetAge(petAge);
        pets.setPetImage(petImage);
        pets.setPetName(petName);
        pets.setPetType(petType);
        pets.setPetPrice(petPrice);
        showPetsMapper.insert(pets);
    }

    @Override
    public List<ShowPets> queryGoldenDog(Integer petType) {
        return showPetsMapper.selectDog(petType);
    }

    @Override
    public List<ShowPets> queryTeddy(Integer petType) {
        return showPetsMapper.selectDog(petType);
    }

    @Override
    public List<ShowPets> queryBichon(Integer petType) {
        return showPetsMapper.selectDog(petType);
    }

    @Override
    public ShowPets findPets(Integer id) {
        return showPetsMapper.selectPetsById(id);
    }




}
