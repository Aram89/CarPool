package org.proffart.carpool.controller;

import org.proffart.carpool.domain.User;
import org.proffart.carpool.exception.ErrorStrings;
import org.proffart.carpool.exception.UserException;
import org.proffart.carpool.service.UserService;
import org.proffart.carpool.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

/**
 * Controller for user requests.
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
            throw new UserException(ErrorStrings.WRONG_PASSWORD);
        }
        return new ResponseEntity(HttpStatus.OK);
    }
    @RequestMapping(value = RequestMappings.logout, method = RequestMethod.GET)
    public ResponseEntity logout() {
        userService.logout();
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.checkUserName, method = RequestMethod.GET)
    public ResponseEntity checkUserName(@RequestParam(value = "userName") String userName) throws Exception {
        if (userService.userExists(userName)) {
            throw new UserException(ErrorStrings.USER_NAME_EXISTS);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.checkEmail, method = RequestMethod.GET)
    public ResponseEntity checkEmail(@RequestParam(value = "email") String email) throws Exception {
        if (userService.emailExists(email)) {
            throw new UserException(ErrorStrings.EMAIL_EXISTS);
        }
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.createUser, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody User user) throws Exception {
        if (userService.userExists(user.getUserName())) {
            throw new UserException(ErrorStrings.USER_NAME_EXISTS);
        }
        userService.create(user);
        userService.checkCredentials(user.getUserName());
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.getProfileData, method = RequestMethod.GET)
    public ResponseEntity getProfileData() throws Exception {
        //noinspection unchecked
        return new ResponseEntity(userService.getProfileData(), HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.saveProfileData, method = RequestMethod.POST)
    public ResponseEntity saveProfileData(@RequestBody User user) throws Exception {
        userService.updateProfileData(user);
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.getUserPublicData, method = RequestMethod.GET)
    public ResponseEntity getUserPublicData(@RequestParam(value = "userId") int userId) throws Exception {
        //noinspection unchecked
        return new ResponseEntity(userService.getUserPublicData(userId), HttpStatus.OK);
    }





}
