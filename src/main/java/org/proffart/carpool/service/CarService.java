package org.proffart.carpool.service;

import org.proffart.carpool.domain.Car;

import java.sql.SQLException;
import java.util.List;

public interface CarService {
    int addCar(Car car) throws SQLException;
    void removeCar(int carId) throws SQLException;
    void updateCarData(Car car) throws SQLException;
    List<Car> getCars() throws SQLException;
}
