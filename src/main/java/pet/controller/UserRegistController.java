package pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pet.model.UserRegist;
import pet.service.UserRegistService;

/**
 * Created by Jiang on 2017/3/11.
 */
@RequestMapping("/users")
@Controller
public class UserRegistController {
    @Autowired
    private UserRegistService userRegistService;

    @RequestMapping("/regist")
    public String userRegist(@RequestParam("userName") String userName,
                             @RequestParam("psw1") String password,
                             @RequestParam("telphone") String telphone,
                             @RequestParam("email") String email){

        Boolean isHave = userRegistService.isExist(userName,password,telphone,email);
        if(isHave==true){
            return "main";
        }
        return "regist";
    }
}
