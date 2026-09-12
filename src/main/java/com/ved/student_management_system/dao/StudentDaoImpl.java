package com.ved.student_management_system.dao;

import com.ved.student_management_system.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StudentDaoImpl implements StudentDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private RowMapper<Student> studentRowMapper = (rs, rowNum) -> new Student(
            rs.getInt("id"),
            rs.getString("name"),
            rs.getString("email"),
            rs.getString("course"),
            rs.getString("phone"),
            rs.getDate("enrollment_date")
    );

    @Override
    public void insert(Student student) {
        jdbcTemplate.update("INSERT INTO students (name, email, course, phone, enrollment_date) VALUES (?, ?, ?, ?, ?)",
                student.getName(), student.getEmail(), student.getCourse(), student.getPhone(), student.getEnrollmentDate());
    }

    @Override
    public Student findById(int id) {
        return jdbcTemplate.queryForObject("SELECT * FROM students WHERE id = ?", studentRowMapper, id);
    }

    @Override
    public List<Student> findAll() {
        return jdbcTemplate.query("SELECT * FROM students", studentRowMapper);
    }

    @Override
    public void update(Student student) {
        jdbcTemplate.update("UPDATE students SET name=?, email=?, course=?, phone=?, enrollment_date=? WHERE id=?",
                student.getName(), student.getEmail(), student.getCourse(), student.getPhone(), student.getEnrollmentDate(), student.getId());
    }

    @Override
    public void delete(int id) {
        jdbcTemplate.update("DELETE FROM students WHERE id = ?", id);
    }
}