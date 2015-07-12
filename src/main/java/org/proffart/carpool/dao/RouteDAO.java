package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Route;

import java.sql.SQLException;
import java.util.List;

public interface RouteDAO {
    void createRoute (Route route) throws SQLException;
    List<Route> search (long startPoint, long endPoint);
    List<Route> search (long startPoint, long endPint, String date);
}
