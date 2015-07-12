package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Route;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.sql.SQLException;
import java.util.List;

public class RouteDAOImpl extends SqlMapClientDaoSupport implements RouteDAO {
    public void createRoute(Route route) throws SQLException {

    }

    public List<Route> search(long startPoint, long endPoint) {
        return null;
    }

    public List<Route> search(long startPoint, long endPint, String date) {
        return null;
    }
}
