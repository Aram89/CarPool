package org.proffart.carpool.service;

import org.proffart.carpool.dao.RideDAO;
import org.proffart.carpool.domain.Ride;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;

/**
 * Created by Aram on 4/21/2015.
 */
@Transactional
@Service
public class RideServiceImpl implements RideService {

    @Autowired
    RideDAO rideDAO;

    public void createRide(Ride ride) throws SQLException {
        rideDAO.insertRide(ride);
    }

}
