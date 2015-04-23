package org.proffart.carpool.controller;

import org.proffart.carpool.domain.Ride;
import org.proffart.carpool.service.RideService;
import org.proffart.carpool.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * Created by Aram on 4/21/2015.
 */
@RestController
@RequestMapping(value = RequestMappings.ride)
public class RideController {
    @Autowired
    RideService rideService;

    @RequestMapping(value = RequestMappings.createRide, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody Ride ride) {
        try {
            rideService.createRide(ride);
            return new ResponseEntity(HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


}
