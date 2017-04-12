package pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by developer on 2017/3/22.
 */
@Controller
public class BackstageController {

    @RequestMapping("/background/user")
    public String toUserManage(){
        return "backstageUsersManage";
    }

    @RequestMapping("background/admin")
    public String toAdminManage(){
        return "backstageAdminManage";
    }

    @RequestMapping("background/showPets")
    public  String toShowPetsManage(){
        return "backstageShowPetsManage";
    }

    @RequestMapping("background/indexVideo")
    public  String toIndexVideo(){
        return "backstageIndexVideoManage";
    }
}
