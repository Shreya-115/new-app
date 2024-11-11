package com.user.model;

import java.sql.Timestamp;

public class DonationRequest {
    private int donationRequestID;
    private int donorID;
    private String bloodType;
    private int quantity;
    private Timestamp requestDate;
    private String status; // 'Pending', 'Fulfilled', 'Cancelled'
    private Timestamp createdAt;
    private Timestamp updatedAt;

    // Getters and Setters
    public int getDonationRequestID() {
        return donationRequestID;
    }

    public void setDonationRequestID(int donationRequestID) {
        this.donationRequestID = donationRequestID;
    }

    public int getDonorID() {
        return donorID;
    }

    public void setDonorID(int donorID) {
        this.donorID = donorID;
    }

    public String getBloodType() {
        return bloodType;
    }

    public void setBloodType(String bloodType) {
        this.bloodType = bloodType;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Timestamp getRequestDate() {
        return requestDate;
    }

    public void setRequestDate(Timestamp requestDate) {
        this.requestDate = requestDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }
}