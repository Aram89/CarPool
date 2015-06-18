package org.proffart.carpool.exception;

/**
 * Created by Aram on 6/18/2015.
 */
public class Error {

    private String errorString;

    public Error(String errorString) {
        this.errorString = errorString;
    }

    public String getErrorString() {
        return errorString;
    }

    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }


}
