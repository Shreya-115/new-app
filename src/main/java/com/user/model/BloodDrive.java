package com.user.model;

import java.sql.Timestamp;
import java.sql.Date;
import java.sql.Time;

public class BloodDrive {
    private int bloodDriveID;
    private String location;
    private Date date;
    private Time time;
    private int adminID;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    // Getters and Setters
    public int getBloodDriveID() {
        return bloodDriveID;
    }

    public void setBloodDriveID(int bloodDriveID) {
        this.bloodDriveID = bloodDriveID;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public int getAdminID() {
        return adminID;
    }
    
    public Timestamp getUpdatedAt() {
    	return updatedAt;
    }
    
    public Timestamp getCreatedAt() {
    	return createdAt;
    }


}