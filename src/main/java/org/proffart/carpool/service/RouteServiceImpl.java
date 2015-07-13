package org.proffart.carpool.service;

import org.proffart.carpool.dao.RouteDAO;
import org.proffart.carpool.domain.Route;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.List;

@Transactional
@Service
public class RouteServiceImpl implements RouteService {

    @Autowired
    private RouteDAO routeDAO;


    public int addRoute(Route route) throws SQLException {
        return routeDAO.insertRoute(route);
    }

    public void removeRoute(int routeId) {
        routeDAO.deleteRoute(routeId);
    }

    public void updateRouteData(Route route) {
        route.setUserId(UserServiceImpl.getCurrentUser().getId());
        routeDAO.updateRouteData(route);
    }

    public List<Route> getRoutes() throws SQLException {
        return routeDAO.getRoutes(UserServiceImpl.getCurrentUser().getId());
    }
}
