package com.ved.student_management_system.service;

import com.ved.student_management_system.dao.StudentDao;
import com.ved.student_management_system.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    @Autowired
    private StudentDao studentDao;

    public void addStudent(Student student) {
        studentDao.insert(student);
    }

    public Student getStudentById(int id) {
        return studentDao.findById(id);
    }

    public List<Student> getAllStudents() {
        return studentDao.findAll();
    }

    public void updateStudent(Student student) {
        studentDao.update(student);
    }

    public void deleteStudent(int id) {
        studentDao.delete(id);
    }
}