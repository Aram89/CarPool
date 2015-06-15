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
    @Override
    public void insert(User user) throws SQLException {
        Integer id = (Integer) getSqlMapClient().insert("user.insert", user);
    }

    @Override
    public Integer getCount(String userName) throws SQLException {
        return (Integer)getSqlMapClient().queryForObject("user.checkUserName", userName);
    }

    @Override
    public Integer getEmailCount(String email) throws SQLException {
        return (Integer)getSqlMapClient().queryForObject("user.checkEmail", email);
    }

    @Override
    public User getUser(String userName) throws SQLException {
        return (User)getSqlMapClient().queryForObject("user.getUser",userName);
    }
}
