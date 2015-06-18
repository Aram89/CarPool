package org.proffart.carpool.service;

import org.proffart.carpool.domain.Ride;

import java.sql.SQLException;

/**
 * Created by Aram on 4/21/2015.
 */
public interface RideService {

    void createRide (Ride ride) throws SQLException;
}
