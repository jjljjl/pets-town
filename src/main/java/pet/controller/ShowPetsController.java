package pet.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import pet.model.ShowPets;
import pet.service.ShowPetsService;
import pet.util.PagedResult;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

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
    public String addPets(HttpServletRequest request, @RequestParam(value="petImage") MultipartFile petImage){

        Integer petAge =Integer.parseInt( request.getParameter("petAge"));
        Integer petType = Integer.parseInt(request.getParameter("petType"));
        String petName = request.getParameter("petName");
        Double petPrice =Double.parseDouble( request.getParameter("petPrice"));
        /*--------图片保存路径----*/
        String path = request.getSession().getServletContext().getRealPath("uploadImg/index-jinmao");
        /*-----图片路径---*/
        String fileName = new Date().getTime()+".jpg";
        /*-------转存文件-----  */
        File targetFile = new File(path,fileName);
        if(!targetFile.exists()){
           targetFile.mkdirs();
        }
        try {
            petImage.transferTo(targetFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
        showPetsService.addPets(petName,petPrice,petAge,petType,fileName);
        return "redirect:/background/showPets";
    }

    @RequestMapping("show/golden")
    @ResponseBody
    public List<ShowPets> showPets(ModelMap modelMap){
        List<ShowPets> pagedResult = showPetsService.queryGoldenDog(2);
        pagedResult.forEach(e->e.setPetImage("/pets-town/uploadImg/index-jinmao/"+e.getPetImage()));
        modelMap.addAllAttributes(pagedResult);
        return pagedResult;
    }

    @RequestMapping("show/teddy")
    @ResponseBody
     public List<ShowPets> showTeddy(ModelMap modelMap){
        List<ShowPets> result =  showPetsService.queryTeddy(0);
        result.forEach(e->e.setPetImage("/pets-town/uploadImg/index-jinmao/"+e.getPetImage()));
        modelMap.addAllAttributes(result);
        return result;
    }

    @RequestMapping("show/bichon")
     @ResponseBody
    public  List<ShowPets> showBichon(ModelMap modelMap){
        List<ShowPets> showPetsList = showPetsService.queryBichon(1);
        showPetsList.forEach(e->e.setPetImage("/pets-town/uploadImg/index-jinmao/"+e.getPetImage()));
        modelMap.addAllAttributes(showPetsList);
        return showPetsList;
    }
}
