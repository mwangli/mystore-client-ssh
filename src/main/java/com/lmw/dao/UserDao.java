package com.lmw.dao;

import com.lmw.beans.User;

public interface UserDao {

    void save(User user);

    User find(User user);

    User getUserByName(User user);
}
