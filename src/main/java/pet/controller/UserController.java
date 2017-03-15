package pet.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pet.model.User;
import pet.service.UserService;
import pet.util.PagedResult;

import javax.annotation.Resource;

/**
 * Created by developer on 2017/2/10.
 */
@Controller
public class UserController extends BaseController{
    private Logger logger = LoggerFactory.getLogger(getClass());

    @Resource
    private UserService userService;

    @RequestMapping("/")
    public ModelAndView getIndex(){
        ModelAndView mav = new ModelAndView("index");
        User user = userService.getUserById(1);
        mav.addObject("user", user);
        return mav;
    }

    /**
     * 显示首页
     * @author linbingwen
     * @since  2015年10月23日
     * @return
     */
    @RequestMapping("/backstage")
    public String bootStrapTest1(){
        return "backstage";
    }

    /**
     * 分页查询用户信息
     * @author linbingwen
     * @since  2015年10月23日
     * @return
     */
    @RequestMapping("/list")
    @ResponseBody
    public String list(Integer pageNumber,Integer pageSize ,String userName) {
        logger.info("分页查询用户信息列表请求入参：pageNumber{},pageSize{}", pageNumber,pageSize);
        PagedResult<User> pageResult;
        try {
            if("".equals(userName)){
                pageResult = userService.queryByPage("%", pageNumber,pageSize);
            }else {

                 pageResult = userService.queryByPage(userName, pageNumber,pageSize);
            }
            return responseSuccess(pageResult,"");
        } catch (Exception e) {
            return responseFail(e.getMessage());
        }
    }



}
