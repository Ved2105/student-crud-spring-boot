package com.ved.student_management_system.dao;

import com.ved.student_management_system.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private RowMapper<User> userRowMapper = (rs, rowNum) -> new User(
            rs.getInt("id"),
            rs.getString("username"),
            rs.getString("password")
    );

    @Override
    public User findByUsername(String username) {
        List<User> results = jdbcTemplate.query(
                "SELECT * FROM users WHERE username = ?", userRowMapper, username);
        return results.isEmpty() ? null : results.get(0);
    }

    @Override
    public void insert(User user) {
        jdbcTemplate.update(
                "INSERT INTO users (username, password) VALUES (?, ?)",
                user.getUsername(), user.getPassword());
    }
}