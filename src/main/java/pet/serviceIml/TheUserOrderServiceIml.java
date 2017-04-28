package pet.serviceIml;

import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import pet.dao.TheUserOrderMapper;
import pet.model.TheUserOrder;
import pet.service.TheUserOrderService;
import pet.util.BeanUtil;
import pet.util.PagedResult;

import java.sql.Timestamp;
import java.util.List;

/**
 * Created by developer on 2017/4/21.
 */
@Service
public class TheUserOrderServiceIml implements TheUserOrderService {
    @Autowired
    private TheUserOrderMapper theUserOrderMapper;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public <T> List<T> findBySql(String sql, Class<T> clz, Object... args) {
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(clz), args);
    }

    @Override
    public void addToCar(Integer uId, Double petPrice, Timestamp createOn, Integer id) {
        TheUserOrder theUserOrder = new TheUserOrder();
        theUserOrder.setuId(uId);
        theUserOrder.setPetPrice(petPrice);
        theUserOrder.setPetCount(1);
        theUserOrder.setpId(id);
        theUserOrder.setCreateOn(createOn);
        theUserOrder.setStatus(0);
        theUserOrderMapper.insert(theUserOrder);
    }

    public PagedResult<Order> queryPage(Integer pageNo, Integer pageSize,Integer uid) {
        pageNo = pageNo == null?1:pageNo;
        pageSize = pageSize == null?10:pageSize;
        PageHelper.startPage(pageNo,pageSize);
        String sql = "SELECT o.id, p_id,pet_name,pet_image,p.`pet_price`, SUM(pet_count) sum_count,SUM(o.pet_price) sum_price FROM `t_user_order` o \n" +
                " JOIN t_show_pets p ON o.`p_id`=p.`id`  WHERE o.`u_id`= ? GROUP BY o.`p_id`";
        List<Order> orderList = this.findBySql(sql, Order.class,new Object[]{uid});
        orderList.forEach(e->e.setPetImage("/pets-town/uploadImg/index-jinmao/"+e.getPetImage()));
        return BeanUtil.toPagedResult(orderList);
    }

    @Override
    public void deleteOrder(Integer id) {
        theUserOrderMapper.deleteByPrimaryKey(id);
    }

    public static class Order{
        private  Integer id;
        private Integer pId;
        private String petName;
        private String petImage;
        private Double petPrice;
        private Integer sumCount;
        private Double sumPrice;

        public Integer getpId() {
            return pId;
        }

        public void setpId(Integer pId) {
            this.pId = pId;
        }

        public String getPetName() {
            return petName;
        }

        public void setPetName(String petName) {
            this.petName = petName;
        }

        public String getPetImage() {
            return petImage;
        }

        public void setPetImage(String petImage) {
            this.petImage = petImage;
        }

        public Double getPetPrice() {
            return petPrice;
        }

        public void setPetPrice(Double petPrice) {
            this.petPrice = petPrice;
        }

        public Integer getSumCount() {
            return sumCount;
        }

        public void setSumCount(Integer sumCount) {
            this.sumCount = sumCount;
        }

        public Double getSumPrice() {
            return sumPrice;
        }

        public void setSumPrice(Double sumPrice) {
            this.sumPrice = sumPrice;
        }

        public Integer getId() {
            return id;
        }

        public void setId(Integer id) {
            this.id = id;
        }
    }
}
