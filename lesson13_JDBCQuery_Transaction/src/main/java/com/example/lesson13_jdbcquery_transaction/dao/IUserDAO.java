package com.example.lesson13_jdbcquery_transaction.dao;

import com.example.lesson13_jdbcquery_transaction.model.User;

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

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, List<Integer> permission);

    void addUserTransaction(User user);

    public void insertUpdateWithoutTransaction();

    public void insertUpdateUseTransaction();

    List<User> getAllUsersBySP();

    boolean updateUserBySP(User user);

    boolean deleteUserBySP(int id);
}