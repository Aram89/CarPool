package org.proffart.carpool.exception;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * Class for handling internal errors.
 * Created by Aram on 6/12/2015.
 */
@ControllerAdvice
public class GeneralExceptionHandler {

    /**
     * Returning INTERNAL_SERVER_ERROR
     * for all unhandled exceptions
     *
     * @param e
     * @return
     */
    @ExceptionHandler(Exception.class)
    public ResponseEntity exception(Exception e) {
        return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
