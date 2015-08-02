package org.proffart.carpool.dao;

import org.proffart.carpool.domain.User;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.sql.SQLException;

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

    public User getUser(String userName) throws SQLException {
        return (User) getSqlMapClient().queryForObject("user.getUser", userName);
    }

    public User getUserById(int userId) throws SQLException {
        return (User) getSqlMapClient().queryForObject("user.getUserById", userId);
    }

    public void updateUserData(User user) throws SQLException {
        getSqlMapClient().update("user.update", user);
    }

    public User getUserPublicData(int userId) throws SQLException {
        return (User) getSqlMapClient().queryForObject("user.getUserPublicData", userId);
    }
}
