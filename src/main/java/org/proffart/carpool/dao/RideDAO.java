package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Ride;

import java.sql.SQLException;

/**
 * Created by Aram on 4/21/2015.
 */
public interface RideDAO {

    public void insertRide (Ride ride) throws SQLException;
}
