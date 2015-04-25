package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Ride;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Aram on 4/21/2015.
 */
public class RideDAOImpl extends SqlMapClientDaoSupport implements RideDAO {


    @Override
    public void insertRide(Ride ride) throws SQLException {
        Integer id = (Integer) getSqlMapClient().insert("user.insert", ride);

    }

    @Override
    public List<Ride> search(long startPoint, long endPoint) {
        return null;
    }

    @Override
    public List<Ride> search(long startPoint, long endPint, String date) {
        return null;
    }
}
