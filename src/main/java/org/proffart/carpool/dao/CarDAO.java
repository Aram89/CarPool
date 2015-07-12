package org.proffart.carpool.dao;

import org.proffart.carpool.domain.Car;

import java.sql.SQLException;
import java.util.List;

public interface CarDAO {
    int insertCar(Car car) throws SQLException;
    void updateCarData(Car car) throws SQLException;
    void deleteCarById(int carId) throws SQLException;
    List<Car> getCars(int userId) throws SQLException;
}
