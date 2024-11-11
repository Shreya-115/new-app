package com.user.dao;

import com.user.model.donor;
import java.util.List;

public interface DonorDAO {
    void createDonor(donor donor);
    donor getDonorById(int donorID);
    List<donor> getAllDonors();
    void updateDonor(donor donor);
    void deleteDonor(int donorID);
}