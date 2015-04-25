package org.proffart.carpool.controller;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.ObjectMapper;
import org.proffart.carpool.dao.UserDAO;
import org.proffart.carpool.domain.User;
import org.proffart.carpool.service.UserService;
import org.proffart.carpool.utils.ErrorStings;
import org.proffart.carpool.utils.RequestMappings;
import org.proffart.carpool.utils.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.ws.rs.core.Response;
import java.io.IOException;

/**
 * Created by Aram on 4/11/2015.
 */
@RequestMapping (value = RequestMappings.user)
@RestController
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value =  RequestMappings.login, method = RequestMethod.POST)
    public ResponseEntity login (@RequestBody User user) {
       try{
           String userName = user.getUserName();
           String password = user.getPassword();
           if (!userService.userExists(userName)) {
               return ResultUtil.sendError(ErrorStings.WRONG_USER_NAME);
           }
           if (!userService.checkCredentials(userName,password)) {
               return ResultUtil.sendError(ErrorStings.WRONG_PASSWORD);
           }
           return new ResponseEntity(HttpStatus.OK);
       }
       catch (Exception e) {
           return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
       }

    }

    @RequestMapping(value = RequestMappings.checkUserName, method = RequestMethod.POST)
    public ResponseEntity checkUserName(@RequestBody User user) {
        try {
            String userName = user.getUserName();
            if (userService.userExists(userName)) {
                return ResultUtil.sendError(ErrorStings.USER_NAME_EXISTS);
            }
            return new ResponseEntity(HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @RequestMapping(value = RequestMappings.createUser, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody User user) throws IOException {
        try {
            userService.create(user);
            return new ResponseEntity(HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
