package com.user.dao;

import com.user.model.DonationRequest;
import java.util.List;

public interface DonationRequestDAO {
    void createDonationRequest(DonationRequest donationRequest);
    DonationRequest getDonationRequestById(int donationRequestID);
    List<DonationRequest> getAllDonationRequests();
    void updateDonationRequest(DonationRequest donationRequest);
    void deleteDonationRequest(int donationRequestID);
}