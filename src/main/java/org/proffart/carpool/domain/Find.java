package org.proffart.carpool.domain;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Find {
    private String startDate;
    private String startTime;
    private Double startLatitude = 0d;
    private Double endLatitude = 0d;
    private Double startLongitude = 0d;
    private Double endLongitude = 0d;
    private String dayname;


    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) throws ParseException {
        this.startDate = startDate;
        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
        Date dt1 = format1.parse(startDate);
        DateFormat format2 = new SimpleDateFormat("EEEE");
        dayname = format2.format(dt1);
        dayname = dayname.toLowerCase();
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public Double getStartLatitude() {
        return startLatitude;
    }

    public void setStartLatitude(Double startLatitude) {
        this.startLatitude = startLatitude;
    }

    public Double getEndLatitude() {
        return endLatitude;
    }

    public void setEndLatitude(Double endLatitude) {
        this.endLatitude = endLatitude;
    }

    public Double getStartLongitude() {
        return startLongitude;
    }

    public void setStartLongitude(Double startLongitude) {
        this.startLongitude = startLongitude;
    }

    public Double getEndLongitude() {
        return endLongitude;
    }

    public void setEndLongitude(Double endLongitude) {
        this.endLongitude = endLongitude;
    }

    public String getDayname() {
        return dayname;
    }

    public void setDayname(String dayname) {
    }
}
