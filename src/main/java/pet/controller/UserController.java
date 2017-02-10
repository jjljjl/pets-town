package pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pet.model.Users;
import pet.service.UserLoginService;

import javax.annotation.Resource;

/**
 * Created by developer on 2017/2/10.
 */
@Controller
@RequestMapping("/user")
public class UserController {
  @Resource
    private UserLoginService userLoginService;
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam("username") String name,@RequestParam("password") String password ){
       Users user = userLoginService.checkLogin(name,password);
        System.out.print(name);
        if(user!=null ){
            return "welcome";
        }
        return "userLogin";
    }
}
