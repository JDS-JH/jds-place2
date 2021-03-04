package com.jds.Service.impl;
import com.jds.Service.LoginService;
import com.jds.entity.Reader;
import com.jds.repository.ReaderRepository;
import com.jds.repository.impl.ReaderRepositoryImpl;


public class LoginServiceImpl implements LoginService {
    private ReaderRepository readerRepository=new ReaderRepositoryImpl();
    public Reader login(String username,String password){
        return readerRepository.login(username,password);
    }
}


