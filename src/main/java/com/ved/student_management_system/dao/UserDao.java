package com.ved.student_management_system.dao;

import com.ved.student_management_system.model.User;

public interface UserDao {
    User findByUsername(String username);
    void insert(User user);
}