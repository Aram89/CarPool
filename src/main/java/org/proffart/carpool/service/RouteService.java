package org.proffart.carpool.service;

import org.proffart.carpool.domain.Route;

import java.sql.SQLException;
import java.util.List;

public interface RouteService {

    int addRoute(Route route) throws SQLException;
    void removeRoute(int routeId);
    void updateRouteData(Route route);
    List <Route> getRoutes() throws SQLException;
}
