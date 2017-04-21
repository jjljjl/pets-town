package pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pet.model.UserRegister;
import pet.service.LoginService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by developer on 2017/3/16.
 */
@Controller
public class LoginController {
    @Resource
    private LoginService loginService;

    @RequestMapping("/toRegist")
    public String toRegister() {
        return "regist";
    }

    @RequestMapping("/toLogin")
    public String login(@RequestParam("username") String userName,
                        @RequestParam("password") String password,
                        ModelMap modelMap,HttpServletRequest request ) {
        boolean isHave = loginService.isHaveUser(userName, password);
        if (isHave) {
            modelMap.addAttribute("msg", "登陆成功");
            UserRegister user = loginService.findUser(userName);
            request.getSession().setAttribute("user",user);
            return "redirect:/toMain";
        }
        modelMap.addAttribute("msg", "用户名或者密码错误");
        return "login";

    }

    @RequestMapping("/toRegisterOut")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession(false);//防止重建session
           session.removeAttribute("user");
            return "redirect:/toMain";
    }
}
