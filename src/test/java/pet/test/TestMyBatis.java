package pet.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pet.model.Admin;
import pet.service.AdminService;
import pet.service.ShowPetsService;
import pet.util.PagedResult;

import java.util.Date;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-mybatis.xml"})
public class TestMyBatis {



    @Autowired
    private AdminService adminService;

    @Autowired
    private ShowPetsService showPetsService;

    @Test
    public void testHello(){
        System.out.println("Hello world");
    }


    @Test
    public void queryByPage(){
        PagedResult<Admin> pagedResult = adminService.queryPage(null,1,10);//null表示查全部
        System.out.print("查找结果" + pagedResult);
    }

    @Test
   public void testRedis()
   {
       Date date = new Date();
       System.out.print(date.getTime());
   }
}
