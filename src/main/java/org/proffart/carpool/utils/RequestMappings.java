package org.proffart.carpool.utils;

public interface RequestMappings {

    public static final String user = "user";
    public static final String createUser = "/create";
    public static final String login = "/login";
    public static final String logout = "/logout";
    public static final String checkUserName = "/check-user-name";
    public static final String checkEmail = "/check-email";
    public static final String getProfileData = "/get-profile-data";
    public static final String saveProfileData = "/save-profile-data";


    public static final String route = "route";
    public static final String getRouteList = "/list";
    public static final String createRoute = "/create";
    public static final String editRoute = "/edit";
    public static final String deleteRoute = "/delete";

    public static final String mapPage = "map";
    public static final String registrationPage = "registration";

    public static final String car = "car";
    public static final String createCar = "/create";
    public static final String editCar = "/edit";
    public static final String deleteCar = "/delete";
    public static final String getCarList = "/list";


}
