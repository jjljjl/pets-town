package pet.service;

import pet.model.ShowPets;
import pet.util.PagedResult;

/**
 * Created by developer on 2017/3/24.
 */
public interface ShowPetsService {
    PagedResult<ShowPets> queryPage(String username, Integer pageNo, Integer pageSize);

    void deletePets(int petId);

    void addPets(String petName, Double petPrice, Integer petAge, Integer petType, String petImage);
}