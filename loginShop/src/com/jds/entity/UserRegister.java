package com.jds.entity;

public class UserRegister {
    private String username;
    private String password;
    private Integer tel;
    private String email;

    public UserRegister(String username, String password, Integer tel, String email) {
        this.username = username;
        this.password = password;
        this.tel = tel;
        this.email = email;
    }
}
