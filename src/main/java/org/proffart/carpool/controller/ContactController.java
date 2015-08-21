package org.proffart.carpool.controller;

import org.proffart.carpool.domain.Contact;
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
@RequestMapping(value = RequestMappings.contact)
@Controller
public class ContactController {

    @Autowired
    UserService userService;

    @RequestMapping(value = RequestMappings.createContact, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody Contact contact) throws Exception {
        userService.createContactUsMessage(contact);
        return new ResponseEntity(HttpStatus.OK);
    }





}
