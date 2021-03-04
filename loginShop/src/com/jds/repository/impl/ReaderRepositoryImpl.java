package com.jds.repository.impl;

import com.jds.entity.Reader;
import com.jds.repository.ReaderRepository;
import com.jds.utils.JDBCTools;

import java.sql.*;

public class ReaderRepositoryImpl implements ReaderRepository {
    @Override
    public Reader login(String username, String password){
        Connection connection= JDBCTools.getConnection();
        PreparedStatement statement=null;
        ResultSet resultSet=null;
        Reader reader=null;
        String sql="select * from my where username= ? and password= ?";
        try {
            statement=connection.prepareStatement(sql);
            statement.setString(1,username);
            statement.setString(2,password);
            resultSet=statement.executeQuery();
            if(resultSet.next()){
                reader = new Reader(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getInt(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCTools.release(connection,statement,resultSet);
        }
        return reader;
    }
}
