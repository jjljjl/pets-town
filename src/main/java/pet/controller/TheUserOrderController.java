package pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pet.model.ShowPets;
import pet.model.UserRegister;
import pet.service.ShowPetsService;
import pet.service.TheUserOrderService;
import pet.util.PagedResult;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by developer on 2017/4/21.
 */
@Controller
public class TheUserOrderController {
    @Autowired
    private TheUserOrderService theUserOrderService;

    @Autowired
    ShowPetsService showPetsService;

    @RequestMapping("addToCar")
    @ResponseBody
     public PagedResult addToCar(HttpServletRequest request, @RequestParam("id") Integer id){
        ShowPets showPets = showPetsService.findPets(id);
        HttpSession session = request.getSession(false);
        UserRegister user = (UserRegister) session.getAttribute("user");
        Integer uId = user.getId();
        Date date = new Date();
        Timestamp createOn = new Timestamp(date.getTime());
        theUserOrderService.addToCar(uId,showPets.getPetPrice(),createOn,id);
        return new PagedResult();
    }
}
