package org.proffart.carpool.service;

import org.proffart.carpool.domain.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Created by Aram on 4/13/2015.
 */
@Transactional
@Service
public interface UserService {

    public void create (User user) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException;
    public Boolean userExists (String userName) throws SQLException;
    public Boolean emailExists (String email) throws SQLException;
    public Boolean checkCredentials (String userName, String password) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException;


}
