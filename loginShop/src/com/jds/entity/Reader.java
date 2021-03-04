package com.jds.entity;

public class Reader {
    private String username;
    private String password;
    private Integer tel;
    private String name;


    public void setUsername(String username){
        this.username=username;
    }
    public String getUsername(){
        return username;
    }
    public void setPassword(String password){
        this.password=password;
    }
    public String getPassword(){
        return password;
    }

    public void setTel(int tel){
        this.tel=tel;
    }
    public int getTel(){
        return tel;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return name;
    }


    public Reader(String username, String password,String name ,Integer tel) {
        this.username = username;
        this.password = password;
        this.tel = tel;
        this.name = name;
    }

}
