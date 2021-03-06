package org.proffart.carpool.service;

import org.proffart.carpool.dao.UserDAO;
import org.proffart.carpool.domain.Contact;
import org.proffart.carpool.domain.Guest;
import org.proffart.carpool.domain.User;
import org.proffart.carpool.exception.ErrorStrings;
import org.proffart.carpool.exception.UserException;
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

@Transactional
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    public void create(User user) throws SQLException, UnsupportedEncodingException, NoSuchAlgorithmException {
        String password = user.getPassword();
        String hash = Utils.hash(user.getPassword());
        user.setPassword(hash);
        userDAO.insert(user);
    }

    public Boolean userExists(String userName) throws SQLException {
        Integer count = userDAO.getCount(userName);
        return !count.equals(0);
    }

    public Boolean emailExists(String email) throws SQLException {
        Integer count = userDAO.getCount(email);
        return !count.equals(0);
    }

    public Boolean checkCredentials(String userName, String password) throws SQLException,
            UnsupportedEncodingException, NoSuchAlgorithmException, UserException {
        User user = null;
        user = userDAO.getUser(userName);
        if (user == null) {
            throw new UserException(ErrorStrings.WRONG_USER_NAME);
        }
        String pass = Utils.hash(password);
        if(pass.equals(user.getPassword())) {
            ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
            HttpSession session = attr.getRequest().getSession();
            session.setAttribute("userObject", user);
        }
        return isLogged();
    }

    public Boolean checkCredentials(String userName) throws UserException, SQLException {
        User user = null;
        user = userDAO.getUser(userName);
        if (user == null) {
            throw new UserException(ErrorStrings.WRONG_USER_NAME);
        }
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        session.setAttribute("userObject", user);
        return isLogged();
    }

    public void logout() {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        session.setAttribute("userObject", null);
    }

    public User getProfileData() throws SQLException {
        User user = null;
        if(isLogged()) {
            user = userDAO.getUserById(getCurrentUser().getId());
        }
        return user;
    }

    public void updateProfileData(User user) throws SQLException {
        userDAO.updateUserData(user);
        user = userDAO.getUserById(getCurrentUser().getId());
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpSession session = attr.getRequest().getSession();
        session.setAttribute("userObject", user);
    }

    public User getUserPublicData(int userId) throws SQLException {
        return userDAO.getUserPublicData(userId);
    }

    public void createContactUsMessage(Contact contact) throws SQLException {
        if(isLogged()) {
            contact.setUserId(getCurrentUser().getId());
        }
        userDAO.createContactUsMessage(contact);
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
