package org.proffart.carpool.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Class for handling internal errors.
 * Created by Aram on 6/12/2015.
 */
@ControllerAdvice
public class GeneralException {

    /**
     * Returns INTERNAL_SERVER_ERROR
     * for all unhandled exceptions
     * @param e
     * @return
     */
    @ExceptionHandler(Exception.class)
    public ResponseEntity exception(Exception e) {
        return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    /**
     * Handles User exceptions
     * @param ue ue
     * @return Bad Request
     */
    @ExceptionHandler(UserException.class)
    public ResponseEntity userException(UserException ue) {
        return new ResponseEntity(HttpStatus.BAD_REQUEST);
    }
}
