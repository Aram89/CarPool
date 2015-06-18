package org.proffart.carpool.dao;

import org.proffart.carpool.domain.User;

import java.sql.SQLException;

/**
 * Created by Aram on 4/5/2015.
 */
public interface UserDAO {

    void insert (User user) throws SQLException;
    Integer getCount (String userName) throws SQLException;
    Integer getEmailCount (String email) throws SQLException;
    User getUser (String userName) throws SQLException;

}
