package org.proffart.carpool.utils;

/**
 * Created by Aram on 4/20/2015.
 */
public class ErrorStings {
    private String errorString;


    public ErrorStings(String errorString) {
        this.errorString = errorString;
    }


    public String getErrorString() {
        return errorString;
    }

    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }


    public final static String USER_NAME_EXISTS = "userNameExists";
    public final static String EMAIL_EXISTS = "emailExists";
    public final static String WRONG_USER_NAME = "wrongUserName";
    public final static String WRONG_PASSWORD = "wrongPassword";

}
