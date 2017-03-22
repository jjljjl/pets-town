package pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pet.service.LoginService;

import javax.annotation.Resource;

/**
 * Created by developer on 2017/3/16.
 */
@Controller
public class LoginController {
@Resource
private LoginService loginService;
    @RequestMapping("/toRegist")
     public  String toRegister(){
        return "regist";
    }

    @RequestMapping("/toLogin")
    public String login(@RequestParam("username") String userName,
                        @RequestParam("password") String password,
                        ModelMap modelMap){
        boolean isHave = loginService.isHaveUser(userName,password);
        if(isHave){
            modelMap.addAttribute("msg","登陆成功");
            return "main";
        }
        modelMap.addAttribute("msg","用户名或者密码错误");
        return "login";

    }
}
