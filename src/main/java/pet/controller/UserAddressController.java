package pet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pet.model.UserRegister;
import pet.service.UserAddressService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by developer on 2017/4/18.
 */
@Controller
public class UserAddressController {

    @Autowired
    private UserAddressService userAddressService;

    @RequestMapping("/addAddress")
    public String addAddress(HttpServletRequest request, @RequestParam("province") String province,
                             @RequestParam("city") String city,
                             @RequestParam("district") String district,
                             @RequestParam("fullAddress") String fullAddress,
                             @RequestParam("postCode") String postCode,
                             @RequestParam("receiptName") String receiptName,
                             @RequestParam("telphone") String telphone){
        HttpSession session = request.getSession(false);
        UserRegister user = (UserRegister) session.getAttribute("user");
        Integer uId = user.getId();
        String adrArea =province+","+city+","+district;
        userAddressService.insertAddress(uId,adrArea,fullAddress,postCode,receiptName,telphone);
        return "redirect:/seePets";
    }
}
