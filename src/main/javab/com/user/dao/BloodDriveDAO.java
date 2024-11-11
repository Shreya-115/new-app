package com.user.dao;

import com.user.model.BloodDrive;
import java.util.List;

public interface BloodDriveDAO {
    void createBloodDrive(BloodDrive bloodDrive);
    BloodDrive getBloodDriveById(int bloodDriveID);
    List<BloodDrive> getAllBloodDrives();
    void updateBloodDrive(BloodDrive bloodDrive);
    void deleteBloodDrive(int bloodDriveID);
}