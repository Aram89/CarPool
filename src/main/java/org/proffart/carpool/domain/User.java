package org.proffart.carpool.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Aram on 4/11/2015.
 */

@XmlRootElement
public class User {

    private int id;
    private String userName;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String password;
    private String confirmPassword;

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    private String salt;



    private String token;
    private String enabled;
    private String fbLink;
    private String twLink;
    private String goLink;
    private long fbID;
    private long twID;
    private long goID;


    public int getId() {
        return id;
    }


    public void setId(int id) {
        this.id = id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
;
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEnabled() {
        return enabled;
    }

    public void setEnabled(String enabled) {
        this.enabled = enabled;
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

    public long getFbID() {
        return fbID;
    }

    public void setFbID(long fbID) {
        this.fbID = fbID;
    }

    public long getTwID() {
        return twID;
    }

    public void setTwID(long twID) {
        this.twID = twID;
    }

    public long getGoID() {
        return goID;
    }

    public void setGoID(long goID) {
        this.goID = goID;
    }
}
