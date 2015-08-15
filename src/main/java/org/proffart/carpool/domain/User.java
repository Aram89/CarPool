package org.proffart.carpool.domain;


import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
public class User {

    private int id = 0;
    private String userName;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String password;
    private String token;
    private String enabled;
    private String fbLink;
    private String twLink;
    private String goLink;
    private long fbId = 0;
    private long twId = 0;
    private long goId = 0;


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

    public long getFbId() {
        return fbId;
    }

    public void setFbId(long fbId) {
        this.fbId = fbId;
    }

    public long getTwId() {
        return twId;
    }

    public void setTwId(long twId) {
        this.twId = twId;
    }

    public long getGoId() {
        return goId;
    }

    public void setGoId(long goId) {
        this.goId = goId;
    }
}
