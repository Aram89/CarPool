package org.proffart.carpool.dao;

import org.proffart.carpool.domain.User;

import java.sql.SQLException;

public interface UserDAO {

    void insert (User user) throws SQLException;
    Integer getCount (String userName) throws SQLException;
    Integer getEmailCount (String email) throws SQLException;
    User getUser (String userName) throws SQLException;
    User getUserById(int userId) throws SQLException;
    void updateUserData(User user) throws SQLException;
    User getUserPublicData(int userId) throws SQLException;
}
