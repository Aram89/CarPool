package org.proffart.carpool.controller;

import org.proffart.carpool.domain.Route;
import org.proffart.carpool.service.RouteService;
import org.proffart.carpool.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.SQLException;

/**
 * Controller for manipulating routes.
 *
 * Created by Aram on 6/18/2015.
 */
public class RouteController {

    @Autowired
    RouteService routeService;

    @RequestMapping(value = RequestMappings.createRide, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody Route route) throws SQLException {
        routeService.create(route);
        return new ResponseEntity(HttpStatus.OK);
    }


}


