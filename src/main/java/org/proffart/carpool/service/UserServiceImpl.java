package org.proffart.carpool.service;

import org.proffart.carpool.dao.UserDAO;
import org.proffart.carpool.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;

/**
 * Created by Aram on 4/13/2015.
 */
@Transactional
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserDAO userDAO;

    @Override
    public void create(User user) throws SQLException {
        userDAO.insert(user);
    }
}
