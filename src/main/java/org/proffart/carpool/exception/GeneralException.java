package org.proffart.carpool.exception;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.io.IOException;

/**
 * Class for handling internal errors.
 */
@ControllerAdvice
public class GeneralException {

    private static Logger logger = LogManager.getLogger(GeneralException.class);

    /**
     * Returns INTERNAL_SERVER_ERROR
     * for all unhandled exceptions
     * @param e
     * @return
     */
    @ExceptionHandler(Exception.class)
    public ResponseEntity exception(Exception e) {
        logger.error("INTERNAL ERROR: ", e);
        return new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    /**
     * Handles User exceptions
     * @param ue ue
     * @return Bad Request
     */
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    @ResponseBody
    @ExceptionHandler(UserException.class)
    public Error userException(UserException ue) {
        return new Error(ue.getMessage());
    }
}
