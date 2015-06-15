package org.proffart.carpool.service;

import org.proffart.carpool.dao.UserDAO;
import org.proffart.carpool.domain.User;
import org.proffart.carpool.utils.StringUtils;
import org.proffart.carpool.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Aram on 4/13/2015.
 */
@Transactional
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDAO;

    @Override
    public void create(User user) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        String password = user.getPassword();
        String hash = Utils.hash(password);
        user.setPassword(hash);
        userDAO.insert(user);
    }

    @Override
    public Boolean userExists(String userName) throws SQLException {
        Integer count = userDAO.getCount(userName);
        return !count.equals(0);
    }

    @Override
    public Boolean emailExists(String email) throws SQLException {
        Integer count = userDAO.getCount(email);
        return !count.equals(0);
    }

    @Override
    public Boolean checkCredentials(String userName, String password) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        String pass = userDAO.getPassword(userName);
        String hash = Utils.hash(pass);
        return pass.equals(hash);
    }
}
