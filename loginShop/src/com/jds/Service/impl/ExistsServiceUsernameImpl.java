package com.jds.Service.impl;

import com.jds.Service.ExistsServiceUsername;

import com.jds.entity.UserName;
import com.jds.repository.RepositoryExistsUsername;
import com.jds.repository.impl.RepositoryExistsUsernameImpl;


public class ExistsServiceUsernameImpl implements ExistsServiceUsername {
    private RepositoryExistsUsername repositoryExistsUsername=new RepositoryExistsUsernameImpl();

    public UserName register(String username){
       return repositoryExistsUsername.register(username);
    }
}
