package pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by developer on 2017/3/15.
 */
@Controller
public class IndexController {

    @RequestMapping("/login")
    public  String login(){
        return "login";
    }


    @RequestMapping("/toRegister")
    public  String register(){
        return "regist";
    }

    @RequestMapping("/toMain")
    public  String toMain(){
        return  "main";
    }
}

