package com.jds.entity;

public class UserName {
    private String username;
    public void setUsername(String username){
        this.username=username;
    }
    public String getUsername(){
        return username;
    }
    public UserName(String username) {
        this.username = username;
    }
}
