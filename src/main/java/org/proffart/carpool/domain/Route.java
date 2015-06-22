package org.proffart.carpool.domain;

/**
 * Created by Aram on 6/18/2015.
 */
public class Route {

    // Route owner id.
    private int userID;

    // Route car id.
    private int carID;

    // Route date.
    private String date;

    // Route type.
    private String type;

    // Startpoint address.
    private String startPoint;

    // Endpoint address.
    private String endPoint;

    // Week days.
    private Week week;

    // Coordinates.

    public Coordinate getCoordinate() {
        return coordinate;
    }

    public void setCoordinate(Coordinate coordinate) {
        this.coordinate = coordinate;
    }

    public Week getWeek() {
        return week;
    }

    public void setWeek(Week week) {
        this.week = week;
    }

    private Coordinate coordinate;

    public String getStartPoint() {
        return startPoint;
    }

    public void setStartPoint(String startPoint) {
        this.startPoint = startPoint;
    }

    public String getEndPoint() {
        return endPoint;
    }

    public void setEndPoint(String endPoint) {
        this.endPoint = endPoint;
    }


    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getCarID() {
        return carID;
    }

    public void setCarID(int carID) {
        this.carID = carID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
