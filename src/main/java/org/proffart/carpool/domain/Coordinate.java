package org.proffart.carpool.domain;

/**
 * Model for point start
 * and end coordinates.
 */
public class Coordinate {

    // Start coordinate.
    private double startLatitude;

    // Start coordinate.
    private double startLongitude;

    // End coordinate.
    private double endLatitude;

    // End coordinate.
    private double endLongitude;

    public double getStartLatitude() {
        return startLatitude;
    }

    public void setStartLatitude(double startLatitude) {
        this.startLatitude = startLatitude;
    }

    public double getStartLongitude() {
        return startLongitude;
    }

    public void setStartLongitude(double startLongitude) {
        this.startLongitude = startLongitude;
    }

    public double getEndLatitude() {
        return endLatitude;
    }

    public void setEndLatitude(double endLatitude) {
        this.endLatitude = endLatitude;
    }

    public double getEndLongitude() {
        return endLongitude;
    }

    public void setEndLongitude(double endLongitude) {
        this.endLongitude = endLongitude;
    }
}
