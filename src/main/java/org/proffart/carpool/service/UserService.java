package org.proffart.carpool.service;

import org.proffart.carpool.domain.User;

import java.sql.SQLException;

/**
 * Created by Aram on 4/13/2015.
 */
public interface UserService {

    public void create (User user) throws SQLException;
}
