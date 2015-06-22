package org.proffart.carpool.service;

import org.proffart.carpool.domain.Coordinate;
import org.proffart.carpool.domain.Route;

import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Aram on 6/18/2015.
 */
public interface RouteService {

    /**
     * Save route
     *
     * @param route route
     * @throws SQLException
     */
    void create(Route route) throws SQLException;

    /**
     * Returns list of routes for given date
     * ordered by coordinates.
     *
     * @param coordinate coordinates for finding nearest routes.
     * @param date date.
     * @return Returns list of routes
     * @throws SQLException
     */
    List <Route> search(Coordinate coordinate, long date) throws SQLException;
}
