package com.jds.repository.impl;




import com.jds.entity.UserName;
import com.jds.repository.RepositoryExistsUsername;
import com.jds.utils.JDBCTools;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RepositoryExistsUsernameImpl implements RepositoryExistsUsername {
    @Override
    public  UserName  register(String username) {
        Connection connection= JDBCTools.getConnection();
        PreparedStatement statement=null;
        ResultSet resultSet=null;
        UserName userName=null;
        String sql="select * from my where username= ?";
        try {
            statement=connection.prepareStatement(sql);
            statement.setString(1,username);
            resultSet=statement.executeQuery();
            if(resultSet.next()) {
                userName = new UserName(resultSet.getString(1));
            }
            else {
                System.out.println("错误");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JDBCTools.release(connection,statement,resultSet);
        }
        return userName;
    }
}
