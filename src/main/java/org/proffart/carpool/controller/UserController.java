package org.proffart.carpool.controller;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.json.UTF8JsonGenerator;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.ObjectMapper;
import org.proffart.carpool.dao.UserDAO;
import org.proffart.carpool.domain.User;
import org.proffart.carpool.service.UserService;
import org.proffart.carpool.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.ws.rs.core.Response;
import java.io.IOException;

/**
 * Created by Aram on 4/11/2015.
 */
@RestController
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = RequestMappings.create, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody User user) throws IOException {
        try{
            userService.create(user);
            User response = new User();
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(response);
            HttpHeaders headers = new HttpHeaders();
            headers.set("token", response.getToken());
            return new ResponseEntity(json,headers,HttpStatus.OK);
        }
        catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}
