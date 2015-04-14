package org.proffart.carpool.dao;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;
import com.ibatis.sqlmap.engine.impl.SqlMapClientImpl;
import org.proffart.carpool.domain.User;
import com.ibatis.sqlmap.client.SqlMapClient;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Aram on 4/5/2015.
 */

public class UserDAOImpl extends SqlMapClientDaoSupport implements UserDAO {
    @Override
    public void insert(User user) {
        try{
            Map<String, Object> params = new HashMap<String, Object>();
            params.put("id",205);
            params.put("userName", user.getUserName());
            params.put("password", user.getPassword());
            Integer id = (Integer)getSqlMapClient().insert("user.insert", params);
            System.out.println(id);

        }
        catch (Exception e) {
            e.printStackTrace();
            //TODO
        }

    }
}
