package pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pet.model.Users;
import pet.service.UserLoginService;

/**
 * Created by developer on 2017/2/10.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserLoginService userLoginService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(@RequestParam("username") String name,
                        @RequestParam("password") String password ){
       Users user = userLoginService.checkLogin(name,password);
        System.out.print(name);
        if(user!=null ){
            return "welcome";
        }
        return "/index.jsp";
    }
}
