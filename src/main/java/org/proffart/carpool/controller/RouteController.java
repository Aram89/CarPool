package org.proffart.carpool.controller;

import org.proffart.carpool.domain.Route;
import org.proffart.carpool.service.RouteService;
import org.proffart.carpool.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;

/**
 * Controller for manipulating routes.
 *
 */
@RequestMapping(value = RequestMappings.route)
@Controller
public class RouteController {

    @Autowired
    private RouteService routeService;

    @RequestMapping(value = RequestMappings.createRoute, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody Route route) throws SQLException {
        int routeId = routeService.addRoute(route);
        //noinspection unchecked
        return new ResponseEntity(routeId, HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.editRoute, method = RequestMethod.POST)
    public ResponseEntity edit(@RequestBody Route route) throws SQLException {
        routeService.updateRouteData(route);
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.deleteRoute, method = RequestMethod.GET)
    public ResponseEntity delete(@RequestParam(value = "routeId") int routeId) throws SQLException {
        routeService.removeRoute(routeId);
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.getRouteList, method = RequestMethod.GET)
    public ResponseEntity getList() throws SQLException {
        //noinspection unchecked
        return new ResponseEntity(routeService.getRoutes(), HttpStatus.OK);
    }


}


