package pet.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import pet.model.Admin;
import pet.service.AdminService;
import pet.util.PagedResult;

import javax.annotation.Resource;

/**
 * Created by developer on 2017/3/16.
 */
@Controller
public class AdminController extends  BaseController{
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Resource
    private AdminService adminService;


 @RequestMapping("/admin")
    public String adminLogin(@RequestParam("username") String username,
                             @RequestParam("password") String password,
                             ModelMap modelMap){

    Boolean isHave =  adminService.isHave(username,password);
     if(isHave){
         return "backstage";
     }
     modelMap.addAttribute("error","用户名或者密码不正确");
     return "admin";
 }

 @RequestMapping("/toAdmin")
    public String toAdmin(){
     return "admin";
 }

    @RequestMapping("/admins")
    @ResponseBody
    public String list(Integer pageNumber,Integer pageSize ,String userName) {
        logger.info("分页查询用户信息列表请求入参：pageNumber{},pageSize{}", pageNumber,pageSize);
        PagedResult<Admin> pageResult;
        try {
            if("".equals(userName)){
                pageResult = adminService.queryPage("%", pageNumber,pageSize);
            }else {

                pageResult = adminService.queryPage(userName, pageNumber,pageSize);
            }
            return responseSuccess(pageResult,"");
        } catch (Exception e) {
            return responseFail(e.getMessage());
        }
    }
}
