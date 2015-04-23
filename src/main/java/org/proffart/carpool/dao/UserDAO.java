package org.proffart.carpool.dao;

import org.proffart.carpool.domain.User;

import java.sql.SQLException;

/**
 * Created by Aram on 4/5/2015.
 */
public interface UserDAO {

    public void insert (User user) throws SQLException;
    public Integer getCount (String userName) throws SQLException;
    public Integer checkCredentials (String userName, String password) throws SQLException;

}
