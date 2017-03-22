package pet.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pet.model.Admin;
import pet.service.AdminService;
import pet.util.PagedResult;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMyBatis {

    @Autowired
    private UserService userService;

    @Autowired
    private AdminService adminService;
    @Test
    public void test1(){
        User user = userService.getUserById(1);
        System.out.println(user.getName());
    }

    @Test
    public void testHello(){
        System.out.println("Hello world");
    }


    @Test
    public void queryByPage(){
        PagedResult<Admin> pagedResult = adminService.queryPage(null,1,10);//null表示查全部
        System.out.print("查找结果" + pagedResult);
    }
}
