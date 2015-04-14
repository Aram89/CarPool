package org.proffart.carpool.controller;

import org.proffart.carpool.dao.UserDAO;
import org.proffart.carpool.domain.User;
import org.proffart.carpool.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Aram on 4/11/2015.
 */
@RestController
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value="/create", method = RequestMethod.GET)
    public String create(User user){
       userService.create(user);
       return "test";
    }
}
