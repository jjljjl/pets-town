package pet.test;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pet.model.User;
import pet.service.UserService;

import javax.annotation.Resource;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMyBatis {

    @Resource
    private UserService userService;


    @Test
    public void test1(){
        User user = userService.getUserById(1);
        System.out.println(user.getName());
    }

    @Test
    public void testHello(){
        System.out.println("Hello world");
    }
}
