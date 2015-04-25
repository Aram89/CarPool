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
        String salt = StringUtils.generateRandomStrong(10);
        String newPass = password + salt;
        String hash = Utils.hash(newPass);
        user.setPassword(hash);
        user.setSalt(salt);
        userDAO.insert(user);
    }

    @Override
    public Boolean userExists(String userName) throws SQLException {
        Integer count = userDAO.getCount(userName);
        return !count.equals(0);
    }

    @Override
    public Boolean checkCredentials(String userName, String password) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        User user = new User();
        user = userDAO.getPassword(userName);
        String salt = user.getSalt();
        String correctPass = user.getPassword();
        String passForCheck = password + salt;
        String hash = Utils.hash(passForCheck);
        return correctPass.equals(hash);
    }
}
