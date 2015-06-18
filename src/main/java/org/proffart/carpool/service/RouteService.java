package org.proffart.carpool.service;

import org.proffart.carpool.domain.Route;

import java.sql.SQLClientInfoException;
import java.sql.SQLException;

/**
 * Created by Aram on 6/18/2015.
 */
public interface RouteService {

    void create(Route route) throws SQLException;
}
