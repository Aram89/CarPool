package org.proffart.carpool.exception;

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
