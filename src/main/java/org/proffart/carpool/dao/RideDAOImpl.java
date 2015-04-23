package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Ride;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.sql.SQLException;

/**
 * Created by Aram on 4/21/2015.
 */
public class RideDAOImpl extends SqlMapClientDaoSupport implements RideDAO {


    @Override
    public void insertRide(Ride ride) throws SQLException {
        Integer id = (Integer) getSqlMapClient().insert("user.insert", ride);

    }
}
