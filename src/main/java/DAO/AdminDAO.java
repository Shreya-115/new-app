package com.user.dao;

import com.user.model.Admin;
import java.util.List;

public interface AdminDAO {
    void createAdmin(Admin admin);
    Admin getAdminById(int adminID);
    List<Admin> getAllAdmins();
    void updateAdmin(Admin admin);
    void deleteAdmin(int adminID);
}