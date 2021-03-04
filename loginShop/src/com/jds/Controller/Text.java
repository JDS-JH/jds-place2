package com.jds.Controller;

import java.sql.*;

public class Text {
    public static void main(String[] args) throws ClassCastException, SQLException {
        try {
            //加载驱动
            Class.forName("com.mysql.jdbc.Driver");
            //获取链接
            String url="jdbc:mysql://localhost:3306/class2?useUnicode&characterEncoding=UTF-8";
            String user="root";
            String password="root";
            Connection connection= DriverManager.getConnection(url,user,password);
            String myname="jds";
            String mypassword="123";
            String sql="select * from my where username='"+myname+"' and password='"+ mypassword+"'";
            Statement statement=connection.createStatement();
            System.out.println(sql);
            ResultSet resultSet=statement.executeQuery(sql);
            if(resultSet.next()){
                System.out.println("登录成功");
            }else {
                System.out.println("登陆失败");
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
