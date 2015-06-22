package org.proffart.carpool.service;

import org.proffart.carpool.dao.RouteDAO;
import org.proffart.carpool.domain.Coordinate;
import org.proffart.carpool.domain.Route;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

/**
 * Created by Aram on 6/18/2015.
 */
@Transactional
@Service
public class RouteServiceImpl implements RouteService {

    @Autowired
    RouteDAO routeDAO;


    public void create(Route route) throws SQLException {
        routeDAO.createRoute(route);
    }

    public List<Route> search(Coordinate coordinate, long date) throws SQLException {
        return Collections.emptyList();
    }

    public List<Route> search() throws SQLException {
        return null;
    }
}
