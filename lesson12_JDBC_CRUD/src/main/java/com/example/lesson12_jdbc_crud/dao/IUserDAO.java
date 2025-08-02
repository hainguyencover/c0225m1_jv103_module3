package com.example.lesson12_jdbc_crud.dao;

import com.example.lesson12_jdbc_crud.mode.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    public void insertUser(User user) throws SQLException;

    public User selectUser(int id);

    public List<User> selectAllUsers();

    public List<User> searchByCountry(String country);

    public List<User> sortByName();

    public boolean deleteUser(int id) throws SQLException;

    public boolean updateUser(User user) throws SQLException;


}
