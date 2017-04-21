package pet.serviceIml;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import pet.service.ThePersonCenterService;

import java.util.Map;

/**
 * Created by developer on 2017/4/17.
 */
@Service
public class ThePersonCenterServiceIml implements ThePersonCenterService{
    @Autowired
    private JdbcTemplate jdbcTemplate;
    @Override
    public String selectTelphone(String userName) {
        String sql = "select telphone from t_user_register where user_name=?";
        Map<String, Object> map = jdbcTemplate.queryForMap(sql, userName);
        String telphone =map.get ("telphone").toString();
        return telphone;
    }

    @Override
    public void updateTelphone(String userName, String telphone) {
        String sql = "update t_user_register set telphone=? where user_name=?";
        jdbcTemplate.update(sql,telphone,userName);
    }

    @Override
    public void updateEmail(String email, String username) {
        String sql = "update t_user_register set email=? where user_name=?";
        jdbcTemplate.update(sql,email,username);
    }

    @Override
    public void updatePwd(String newPwd, String username) {
        String sql = "update t_user_register set password=? where user_name=?";
        jdbcTemplate.update(sql,newPwd,username);
    }
}
