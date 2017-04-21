package pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pet.model.UserRegister;
import pet.service.UserRegisterService;
import pet.util.PagedResult;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * Created by developer on 2017/3/15.
 */
@Controller
public class UserRegisterController extends BaseController{

   @Resource
    private UserRegisterService userRegisterService;


    @RequestMapping("/register")
    public String UserRegister(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               @RequestParam("telphone") String telphone,
                               @RequestParam("email") String email,
                               ModelMap modelMap, HttpServletRequest request){
        Boolean isExistUser = userRegisterService.isHave(username);
        if(isExistUser){
            UserRegister user = new UserRegister();
            user.setEmail(email);
            user.setPassword(password);
            user.setTelphone(telphone);
            user.setUserName(username);
            modelMap.addAttribute("msg","注册成功");
            userRegisterService.insertUser(user);
            request.getSession().setAttribute("user",user);
            return "main";
        }
     modelMap.addAttribute("msg","该用户名已存在");
     return "regist";
    }

    @RequestMapping("/toLog")
    public String toMain(){
        return "main";
    }

    @RequestMapping("/lists")
    @ResponseBody
    public PagedResult<UserRegister> list(Integer pageNumber,Integer pageSize ,String userName) {
        logger.info("分页查询用户信息列表请求入参：pageNumber{},pageSize{}", pageNumber,pageSize);
        PagedResult<UserRegister> pageResult;

            if("".equals(userName)){
                pageResult = userRegisterService.queryPage("%", pageNumber,pageSize);
            }else {

                pageResult = userRegisterService.queryPage(userName, pageNumber,pageSize);
            }
           return  pageResult;
    }

    @RequestMapping("/delete/user")
    public String deleteUser(@RequestParam("userId") int userId){
         userRegisterService.deleteUser(userId);
         return "redirect:/background/user";
    }
}
