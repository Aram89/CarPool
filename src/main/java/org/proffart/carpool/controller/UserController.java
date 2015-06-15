package org.proffart.carpool.controller;

import org.proffart.carpool.domain.User;
import org.proffart.carpool.exception.UserException;
import org.proffart.carpool.service.UserService;
import org.proffart.carpool.utils.ErrorStings;
import org.proffart.carpool.utils.RequestMappings;
import org.proffart.carpool.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * ;2Created by Aram on 4/11/2015.
 */
@RequestMapping(value = RequestMappings.user)
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = RequestMappings.login, method = RequestMethod.POST)
    public ResponseEntity login(@RequestBody User user) throws SQLException, IOException,
            NoSuchAlgorithmException, UserException {
        String userName = user.getUserName();
        String password = user.getPassword();
        if (!userService.checkCredentials(userName, password)) {
            return ResultUtil.sendCheckResult(false, ErrorStings.WRONG_PASSWORD);
        }
        return ResultUtil.sendCheckResult(true, null);
    }

    @RequestMapping(value = RequestMappings.checkUserName, method = RequestMethod.GET)
    public ResponseEntity checkUserName(@RequestParam(value = "userName") String userName) throws Exception {
        if (userService.userExists(userName)) {
            return ResultUtil.sendCheckResult(false, ErrorStings.USER_NAME_EXISTS);
        }
        return ResultUtil.sendCheckResult(true, null);
    }

    @RequestMapping(value = RequestMappings.checkEmail, method = RequestMethod.GET)
    public ResponseEntity checkEmail(@RequestParam(value = "email") String email) throws Exception {
        if (userService.emailExists(email)) {
            return ResultUtil.sendCheckResult(false, ErrorStings.EMAIL_EXISTS);
        }
        return ResultUtil.sendCheckResult(true, null);
    }

    @RequestMapping(value = RequestMappings.createUser, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody User user) throws Exception {
        if (userService.userExists(user.getUserName())) {
            return ResultUtil.sendCheckResult(false, ErrorStings.USER_NAME_EXISTS);
        }
        userService.create(user);
        return ResultUtil.sendCheckResult(true, null);
    }
}
