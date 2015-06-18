package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Route;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Aram on 6/18/2015.
 */
public class RouteDAOImpl extends SqlMapClientDaoSupport implements RouteDAO {
    @Override
    public void createRoute(Route route) throws SQLException {

    }

    @Override
    public List<Route> search(long startPoint, long endPoint) {
        return null;
    }

    @Override
    public List<Route> search(long startPoint, long endPint, String date) {
        return null;
    }
}
