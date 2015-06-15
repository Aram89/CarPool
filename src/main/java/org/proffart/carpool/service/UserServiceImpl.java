package org.proffart.carpool.service;

import org.proffart.carpool.dao.UserDAO;
import org.proffart.carpool.domain.Guest;
import org.proffart.carpool.domain.User;
import org.proffart.carpool.exception.UserException;
import org.proffart.carpool.utils.ErrorStings;
import org.proffart.carpool.utils.StringUtils;
import org.proffart.carpool.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;
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
        String hash = Utils.hash(user.getPassword());
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
    public Boolean checkCredentials(String userName, String password) throws SQLException,
            UnsupportedEncodingException, NoSuchAlgorithmException, UserException {
        User user = null;
        user = userDAO.getUser(userName);
        if (user == null) {
            throw new UserException(ErrorStings.USER_NAME_EXISTS);
        }
        String pass = Utils.hash(password);
        return pass.equals(user.getPassword());
    }

    public static User getCurrentUser() {
        User user = null;
        try {
            ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
            HttpSession session = attr.getRequest().getSession();
            user = (User) session.getAttribute("userObject");
            if (user == null) {
                user = new Guest();
            }
        }
        catch (Exception e) {
            user = new Guest();
        }
        return user;
    }

    public static Boolean isLogged () {
        return !(getCurrentUser() instanceof Guest);
    }
}
