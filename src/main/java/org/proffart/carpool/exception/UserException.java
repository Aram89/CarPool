package org.proffart.carpool.exception;

/**
 * Created by Aram on 6/15/2015.
 */
public class UserException extends Exception {

    private String error;

    public UserException (String error) {
        this.error = error;
    }
}
