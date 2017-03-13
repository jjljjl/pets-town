package pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import pet.model.User;
import pet.service.UserService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by developer on 2017/2/9.
 */
@Controller
@RequestMapping("/use")
public class TestController {

    @Resource
    private UserService testService;

    @RequestMapping("/showUser")
    public String test(HttpServletRequest request, Model model){
	int userId = Integer.parseInt(request.getParameter("id"));
        User user = testService.getUserById(userId);
        System.out.println(user.getName());
        model.addAttribute("user", user);
        return "showUser";
    }
}

