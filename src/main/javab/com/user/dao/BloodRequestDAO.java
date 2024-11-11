package com.user.dao;

import com.user.model.BloodRequest;
import java.util.List;

public interface BloodRequestDAO {
    void createBloodRequest(BloodRequest bloodRequest);
    BloodRequest getBloodRequestById(int requestID);
    List<BloodRequest> getAllBloodRequests();
    void updateBloodRequest(BloodRequest bloodRequest);
    void deleteBloodRequest(int requestID);
}