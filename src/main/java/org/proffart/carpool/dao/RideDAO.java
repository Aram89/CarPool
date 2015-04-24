package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Ride;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Aram on 4/21/2015.
 */
public interface RideDAO {

    public void insertRide (Ride ride) throws SQLException;
    public List<Ride> search (long startPoint, long endPoint);
    public List<Ride> search (long startPoint, long endPint, String date);
}
