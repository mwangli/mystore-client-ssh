package com.lmw.service.impl;

import com.lmw.beans.User;
import com.lmw.dao.UserDao;
import com.lmw.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDaoImpl;

    @Override
    public void register(User user) {

        userDaoImpl.save(user);
    }

    @Override
    public User login(User user) {

        return userDaoImpl.find(user);
    }

    @Override
    public User getUserByName(User user) {
        return userDaoImpl.getUserByName(user);
    }
}
