package com.jds.Service.impl;

import com.jds.Service.RegisterService;
import com.jds.entity.UserRegister;
import com.jds.repository.RepositoryRegister;
import com.jds.repository.impl.RepositoryRegisterImpl;


public class RegisterServiceImpl implements RegisterService {
    private RepositoryRegister repositoryRegister=new RepositoryRegisterImpl();
    public UserRegister userregister(String username, String password, Integer tel, String email) {
        return repositoryRegister.userregister( username,password,tel,email);
    }
}
