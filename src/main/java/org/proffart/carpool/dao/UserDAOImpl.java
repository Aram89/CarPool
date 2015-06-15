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
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Aram on 4/5/2015.
 */

public class UserDAOImpl extends SqlMapClientDaoSupport implements UserDAO {
    public void insert(User user) throws SQLException {
        Integer id = (Integer) getSqlMapClient().insert("user.insert", user);
    }

    public Integer getCount(String userName) throws SQLException {
        return (Integer)getSqlMapClient().queryForObject("user.checkUserName", userName);
    }

    public Integer getEmailCount(String email) throws SQLException {
        return (Integer)getSqlMapClient().queryForObject("user.checkEmail", email);
    }



    public String getPassword(String userName) throws SQLException {
        return (String)getSqlMapClient().queryForObject("user.getPassword",userName);
    }
}
