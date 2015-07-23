package org.proffart.carpool.domain;

public class FindResult {

    private int userId;
    private int routeId;

    private String profileName;
    private String startPoint;
    private String endPoint;
    private String date;
    private String startTime;

    private String firstName;
    private String lastName;

    private String carNumber;
    private String carModel;
    private String carDescription;

    private String startDate;

    private String fbLink;
    private String twLink;
    private String goLink;

    private boolean periodic;

    private boolean monday;
    private boolean tuesday;
    private boolean wednesday;
    private boolean thursday;
    private boolean friday;
    private boolean saturday;
    private boolean sunday;


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRouteId() {
        return routeId;
    }

    public void setRouteId(int routeId) {
        this.routeId = routeId;
    }

    public String getProfileName() {
        String newName = "";
        if(firstName != null && !firstName.isEmpty()) {
            newName += firstName;
        }
        if(lastName != null && !lastName.isEmpty()) {
            if(!newName.isEmpty()) {
                newName += " ";
            }
            newName += lastName;
        }
        if(!newName.isEmpty()) {
            profileName = newName;
        }
        return profileName;
    }

    public void setProfileName(String profileName) {
        this.profileName = profileName;
    }

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

    public String getDate() {
        if(!isPeriodic()) {
            return startDate;
        }
        boolean isFirst = true;
        String res = "";
        if(isMonday()) {
            res += "Monday";
            isFirst = false;
        }
        if(isTuesday()) {
            if(!isFirst) {
                res += ", ";
            }
            res += "Tuesday";
            isFirst = false;
        }
        if(isWednesday()) {
            if(!isFirst) {
                res += ", ";
            }
            res += "Wednesday";
            isFirst = false;
        }
        if(isThursday()) {
            if(!isFirst) {
                res += ", ";
            }
            res += "Thursday";
            isFirst = false;
        }
        if(isFriday()) {
            if(!isFirst) {
                res += ", ";
            }
            res += "Friday";
            isFirst = false;
        }
        if(isSaturday()) {
            if(!isFirst) {
                res += ", ";
            }
            res += "Saturday";
            isFirst = false;
        }
        if(isSunday()) {
            if(!isFirst) {
                res += ", ";
            }
            res += "sunday";
        }
        return res;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getCarDescription() {
        return carDescription;
    }

    public void setCarDescription(String carDescription) {
        this.carDescription = carDescription;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getFbLink() {
        return fbLink;
    }

    public void setFbLink(String fbLink) {
        this.fbLink = fbLink;
    }

    public String getTwLink() {
        return twLink;
    }

    public void setTwLink(String twLink) {
        this.twLink = twLink;
    }

    public String getGoLink() {
        return goLink;
    }

    public void setGoLink(String goLink) {
        this.goLink = goLink;
    }

    public boolean isPeriodic() {
        return periodic;
    }

    public void setPeriodic(boolean periodic) {
        this.periodic = periodic;
    }

    public boolean isMonday() {
        return monday;
    }

    public void setMonday(boolean monday) {
        this.monday = monday;
    }

    public boolean isTuesday() {
        return tuesday;
    }

    public void setTuesday(boolean tuesday) {
        this.tuesday = tuesday;
    }

    public boolean isWednesday() {
        return wednesday;
    }

    public void setWednesday(boolean wednesday) {
        this.wednesday = wednesday;
    }

    public boolean isThursday() {
        return thursday;
    }

    public void setThursday(boolean thursday) {
        this.thursday = thursday;
    }

    public boolean isFriday() {
        return friday;
    }

    public void setFriday(boolean friday) {
        this.friday = friday;
    }

    public boolean isSaturday() {
        return saturday;
    }

    public void setSaturday(boolean saturday) {
        this.saturday = saturday;
    }

    public boolean isSunday() {
        return sunday;
    }

    public void setSunday(boolean sunday) {
        this.sunday = sunday;
    }
}
