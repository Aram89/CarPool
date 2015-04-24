package org.proffart.carpool.domain;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Aram on 4/21/2015.
 */
@XmlRootElement
public class Ride {

    private int userID;
    private int carID;
    private String date;
    private String status;
    private String type;
    private long duration;
    private long length;
    private String startPoint;
    private String endPoint;
    private long startCoordinate;
    private long endCoordinate;

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

    public long getStartCoordinate() {
        return startCoordinate;
    }

    public void setStartCoordinate(long startCoordinate) {
        this.startCoordinate = startCoordinate;
    }

    public long getEndCoordinate() {
        return endCoordinate;
    }

    public void setEndCoordinate(long endCoordinate) {
        this.endCoordinate = endCoordinate;
    }

    public long getLength() {
        return length;
    }

    public void setLength(long length) {
        this.length = length;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
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


    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
