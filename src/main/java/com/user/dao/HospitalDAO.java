package com.user.dao;

import com.user.model.Hospital;
import java.util.List;

public interface HospitalDAO {
    void createHospital(Hospital hospital);
    Hospital getHospitalById(int hospitalID);
    List<Hospital> getAllHospitals();
    void updateHospital(Hospital hospital);
    void deleteHospital(int hospitalID);
}