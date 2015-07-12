package org.proffart.carpool.service;

import org.proffart.carpool.dao.CarDAO;
import org.proffart.carpool.domain.Car;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.List;

@Transactional
@Service
public class CarServiceImpl implements CarService {

    @Autowired
    private CarDAO carDAO;

    public int addCar(Car car) throws SQLException {
        car.setUserId(UserServiceImpl.getCurrentUser().getId());
        return carDAO.insertCar(car);
    }

    public void removeCar(int carId) throws SQLException {
        carDAO.deleteCarById(carId);
    }

    public void updateCarData(Car car) throws SQLException {
        carDAO.updateCarData(car);
    }

    public List<Car> getCars() throws SQLException {
        return carDAO.getCars(UserServiceImpl.getCurrentUser().getId());
    }
}
