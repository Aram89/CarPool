package org.proffart.carpool.service;

import org.proffart.carpool.dao.RouteDAO;
import org.proffart.carpool.domain.Route;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLClientInfoException;
import java.sql.SQLException;

/**
 * Created by Aram on 6/18/2015.
 */
@Transactional
@Service
public class RouteServiceImpl implements RouteService {

    @Autowired
    RouteDAO routeDAO;


    @Override
    public void create(Route route) throws SQLException {
        routeDAO.createRoute(route);
    }
}
