package com.ved.student_management_system.dao;

import com.ved.student_management_system.model.Student;
import java.util.List;

public interface StudentDao {
    void insert(Student student);
    Student findById(int id);
    List<Student> findAll();
    void update(Student student);
    void delete(int id);
}