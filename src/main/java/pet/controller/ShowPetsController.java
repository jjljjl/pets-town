package pet.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pet.model.ShowPets;
import pet.service.ShowPetsService;
import pet.util.PagedResult;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by developer on 2017/3/24.
 */
@Controller
public class ShowPetsController extends BaseController {
    private Logger logger = LoggerFactory.getLogger(getClass());
    @Resource
    ShowPetsService showPetsService;


    @RequestMapping("/pets")
    @ResponseBody
    public PagedResult<ShowPets> showPets(Integer pageNumber, Integer pageSize, String userName) {
        logger.info("分页查询用户信息列表请求入参：pageNumber{},pageSize{}", pageNumber, pageSize);
        PagedResult<ShowPets> pagedResult;
        if ("".equals(userName)) {
            pagedResult = showPetsService.queryPage("%", pageNumber, pageSize);
        } else {
            pagedResult = showPetsService.queryPage(userName, pageNumber, pageSize);
        }
        return pagedResult;
    }

    @RequestMapping("/delete/pets")
    public  String deletePets(@RequestParam("petId") int petId ){
        showPetsService.deletePets(petId);
        return  "redirect:/background/showPets";
    }

    @RequestMapping("/addPets")
    public String addPets(HttpServletRequest request, ModelMap modelMap){

        String petName = request.getParameter("petName");
        Double petPrice =Double.parseDouble( request.getParameter("petPrice"));
        Integer petAge =Integer.parseInt( request.getParameter("petAge"));
        Integer petType = Integer.parseInt(request.getParameter("petType"));
        String petImage = request.getParameter("petImage");
        return "";
    }
}
