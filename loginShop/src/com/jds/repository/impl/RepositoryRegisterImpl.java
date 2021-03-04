package com.jds.repository.impl;

import com.jds.entity.Reader;
import com.jds.entity.UserRegister;
import com.jds.repository.RepositoryRegister;
import com.jds.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RepositoryRegisterImpl implements RepositoryRegister {
    @Override
    public UserRegister userregister(String username, String password, Integer tel, String email) {
        Connection connection= JDBCTools.getConnection();
        PreparedStatement statement=null;
        ResultSet resultSet=null;
        String sql="insert into my(username,password,tel,email) values (?,?,?,?)";
        try {
            statement=connection.prepareStatement(sql);
            statement.setString(1,username);
            statement.setString(2,password);
            statement.setInt(3,tel);
            statement.setString(4,email);
            statement.execute();


        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCTools.release(connection,statement,resultSet);
        }
        return null;
    }
}
