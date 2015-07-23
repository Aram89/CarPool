package org.proffart.carpool.service;

import org.proffart.carpool.dao.RouteDAO;
import org.proffart.carpool.domain.Find;
import org.proffart.carpool.domain.FindResult;
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
        route.setUserId(UserServiceImpl.getCurrentUser().getId());
        return routeDAO.insertRoute(route);
    }

    public void removeRoute(int routeId) throws SQLException {
        routeDAO.deleteRoute(routeId);
    }

    public void updateRouteData(Route route) throws SQLException {
        route.setUserId(UserServiceImpl.getCurrentUser().getId());
        routeDAO.updateRouteData(route);
    }

    public List<Route> getRoutes() throws SQLException {
        return routeDAO.getRoutes(UserServiceImpl.getCurrentUser().getId());
    }

    public List<FindResult> findRoutes(Find find) throws SQLException {
        return routeDAO.findRoutes(find);
    }
}
