package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Car;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import java.sql.SQLException;
import java.util.List;

public class CarDAOImpl extends SqlMapClientDaoSupport implements CarDAO {

    public int insertCar(Car car) throws SQLException {
        return (Integer) getSqlMapClient().insert("car.insert", car);
    }

    public void updateCarData(Car car) throws SQLException {
        getSqlMapClient().update("car.update", car);
    }

    public void deleteCarById(int carId) throws SQLException {
        getSqlMapClient().delete("car.deleteById", carId);
    }

    public List<Car> getCars(int userId) throws SQLException {
        //noinspection unchecked
        return getSqlMapClient().queryForList("car.getCars", userId);
    }
}
