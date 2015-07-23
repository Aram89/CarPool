package org.proffart.carpool.service;

import org.proffart.carpool.domain.Find;
import org.proffart.carpool.domain.FindResult;
import org.proffart.carpool.domain.Route;

import java.sql.SQLException;
import java.util.List;

public interface RouteService {

    int addRoute(Route route) throws SQLException;
    void removeRoute(int routeId) throws SQLException;
    void updateRouteData(Route route) throws SQLException;
    List <Route> getRoutes() throws SQLException;
    List<FindResult> findRoutes(Find find) throws SQLException;
}
