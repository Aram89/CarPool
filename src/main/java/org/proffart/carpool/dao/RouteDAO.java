package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Find;
import org.proffart.carpool.domain.FindResult;
import org.proffart.carpool.domain.Route;

import java.sql.SQLException;
import java.util.List;

public interface RouteDAO {
    int insertRoute (Route route) throws SQLException;
    List<Route> getRoutes(int userId) throws SQLException;
    void updateRouteData(Route route) throws SQLException;
    void deleteRoute(int routeId) throws SQLException;
    List<FindResult> findRoutes(Find find) throws SQLException;
}
