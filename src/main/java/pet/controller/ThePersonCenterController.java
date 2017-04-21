package pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pet.service.ThePersonCenterService;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by developer on 2017/4/17.
 */
@Controller
public class ThePersonCenterController {

    @Autowired
    ThePersonCenterService thePersonCenterService;

    @RequestMapping("/changeTelphone")
    public String changeTelphone(ModelMap modelMap, HttpServletRequest request, @RequestParam("telphone") String telphone
                               ){
        String userName = request.getParameter("username");
        String oldTelphone = thePersonCenterService.selectTelphone(userName);
        thePersonCenterService.updateTelphone(userName,telphone);
        modelMap.addAttribute("value",telphone);
        return  "redirect:/toPersonCenter";
    }

    @RequestMapping("/changeEmail")
    public String changeEmail(@RequestParam("email") String email,
                              @RequestParam("username") String username){
        thePersonCenterService.updateEmail(email,username);
        return "redirect:/toPersonCenter";
    }

    @RequestMapping("/changePwd")
    public String changePwd(@RequestParam("username") String username,
                            @RequestParam("newPwd") String newPwd){
       thePersonCenterService.updatePwd(newPwd,username);
        return "ThePersonCenter";
    }
}
