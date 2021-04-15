
package com.learn.happytummy.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
     private int userId;
     private String username;
     private String userEmail;
 
     private String userPassword;
     private String userCPassword;
     @Column(length =12)
     private String userPhone;
     @Column(length=1500)
     private String userAddress;

    public User(int userId, String username, String userEmail, String userPassword, String userCPassword, String userPhone, String userAddress) {
        this.userId = userId;
        this.username = username;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userCPassword = userCPassword;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
    }

    public User(String username, String userEmail, String userPassword, String userCPassword, String userPhone, String userAddress) {
        this.username = username;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userCPassword = userCPassword;
        this.userPhone = userPhone;
        this.userAddress = userAddress;
    }

    public User() {
    }

    public User(String userName, String userEmail, String userPass, String userCPass, String userPhone) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserCPassword() {
        return userCPassword;
    }

    public void setUserCPassword(String userCPassword) {
        this.userCPassword = userCPassword;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", username=" + username + ", userEmail=" + userEmail + ", userPassword=" + userPassword + ", userCPassword=" + userCPassword + ", userPhone=" + userPhone + ", userAddress=" + userAddress + '}';
    }
    
            
     
}
