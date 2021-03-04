package com.jds.repository;

import com.jds.entity.Reader;

public interface ReaderRepository {
    public Reader login(String username, String password);
}
