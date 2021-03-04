package com.jds.repository;

import com.jds.entity.Reader;
import com.jds.entity.UserRegister;

public interface RepositoryRegister {
         UserRegister userregister(String username, String password, Integer tel, String email);
}

