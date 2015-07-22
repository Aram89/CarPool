package org.proffart.carpool.service;

import org.proffart.carpool.domain.User;
import org.proffart.carpool.exception.UserException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

@Transactional
@Service
public interface UserService {

    void create (User user) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException;
    Boolean userExists (String userName) throws SQLException;
    Boolean emailExists (String email) throws SQLException;
    Boolean checkCredentials (String userName, String password) throws SQLException,
            UnsupportedEncodingException, NoSuchAlgorithmException, UserException;
    void logout();
    User getProfileData() throws SQLException;
    void updateProfileData(User user) throws SQLException;
}
