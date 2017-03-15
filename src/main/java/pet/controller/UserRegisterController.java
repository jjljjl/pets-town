package pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by developer on 2017/3/15.
 */
@Controller
public class UserRegisterController extends  BaseController{

    @RequestMapping("/user/register")
    @ResponseBody
    public String UserRegister(@RequestParam("username") String username,
                                @RequestParam("password") String password,
                                @RequestParam("telphone") String telphone,
                                @RequestParam("email") String email){

     return "";
    }
}
