package org.proffart.carpool.controller;

import org.proffart.carpool.domain.Car;
import org.proffart.carpool.service.CarService;
import org.proffart.carpool.utils.RequestMappings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;

@RequestMapping(value = RequestMappings.car)
@Controller
public class CarController {

    @Autowired
    private CarService carService;

    @RequestMapping(value = RequestMappings.createCar, method = RequestMethod.POST)
    public ResponseEntity create(@RequestBody Car car) throws SQLException {
        int carId = carService.addCar(car);
        //noinspection unchecked
        return new ResponseEntity(carId, HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.editCar, method = RequestMethod.POST)
    public ResponseEntity edit(@RequestBody Car car) throws SQLException {
        carService.updateCarData(car);
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.deleteCar, method = RequestMethod.GET)
    public ResponseEntity delete(@RequestParam(value = "carId") int carId) throws SQLException {
        carService.removeCar(carId);
        return new ResponseEntity(HttpStatus.OK);
    }

    @RequestMapping(value = RequestMappings.getCarList, method = RequestMethod.GET)
    public ResponseEntity getList() throws SQLException {
        //noinspection unchecked
        return new ResponseEntity(carService.getCars(), HttpStatus.OK);
    }

}
