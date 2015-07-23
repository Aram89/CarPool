package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Find;
import org.proffart.carpool.domain.FindResult;
import org.proffart.carpool.domain.Route;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.sql.SQLException;
import java.util.List;

public class RouteDAOImpl extends SqlMapClientDaoSupport implements RouteDAO {

    public int insertRoute(Route route) throws SQLException {
       return (Integer) getSqlMapClient().insert("route.insert", route);
    }

    public List<Route> getRoutes(int userId) throws SQLException {
        //noinspection unchecked
        return getSqlMapClient().queryForList("route.getRoutes", userId);
    }

    public void updateRouteData(Route route) throws SQLException {
        getSqlMapClient().update("route.update", route);
    }

    public void deleteRoute(int routeId) throws SQLException {
        getSqlMapClient().delete("route.deleteById", routeId);
    }

    public List<FindResult> findRoutes(Find find) throws SQLException {
        //noinspection unchecked
        return getSqlMapClient().queryForList("route.find", find);
    }

}
