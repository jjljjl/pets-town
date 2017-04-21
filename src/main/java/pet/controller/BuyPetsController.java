package pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import pet.model.DetailImage;
import pet.model.ShowPets;
import pet.model.UserRegister;
import pet.service.DetailImgeService;
import pet.service.ShowPetsService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * Created by developer on 2017/4/13.
 */
@Controller
public class BuyPetsController {
    @Autowired
    ShowPetsService showPetsService;

    @Autowired
    DetailImgeService detailImgeService;

    @RequestMapping("buyPets")
     public ModelAndView buyPets(HttpServletRequest request,@RequestParam("id") Integer id){
        ShowPets showPets = showPetsService.findPets(id);
        showPets.setPetImage("/pets-town/uploadImg/index-jinmao/"+showPets.getPetImage());
        ModelAndView view = new ModelAndView("TheOrderPage");
        view.addObject("showPets",showPets);
      return view;
    }
  @RequestMapping("submit/order")
    public String submit(HttpServletRequest request,@RequestParam("id") Integer id,@RequestParam("count") Integer count){
      ShowPets showPets = showPetsService.findPets(id);
      HttpSession session = request.getSession(false);
      UserRegister user = (UserRegister) session.getAttribute("user");
      Integer uId = user.getId();
      Date date = new Date();
      Timestamp createOn = new Timestamp(date.getTime());
      showPetsService.addOrder(uId,showPets.getPetPrice(),count,createOn,id);
      return "UserAddress";
  }

    /**
     * 查看接口
     * @param id
     * @return
     */
   @RequestMapping("seePets")
    public  ModelAndView seePets(@RequestParam("id") Integer id){
       ShowPets showPets = showPetsService.findPets(id);
       List<DetailImage> detailImage = detailImgeService.findDetailImage(id);
       detailImage.forEach(e->e.setImageName("/pets-town/uploadImg/detail-image/"+e.getImageName()));
       showPets.setPetImage("/pets-town/uploadImg/index-jinmao/"+showPets.getPetImage());
       ModelAndView view = new  ModelAndView("ThePetDetails");
       view.addObject("seePets",showPets);
       view.addObject("detailImage",detailImage);
       return view;
   }
}
