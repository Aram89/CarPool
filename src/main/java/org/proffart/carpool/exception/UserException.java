package org.proffart.carpool.exception;

public class UserException extends Exception {

    private String error;

    public UserException (String error) {
        super(error);
    }
}
