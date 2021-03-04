package com.jds.Service;

import com.jds.entity.UserRegister;

public interface RegisterService {
    public UserRegister userregister(String username, String password, Integer tel, String email);
}
