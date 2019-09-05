package com.lmw.service;

import com.lmw.beans.User;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface UserService {

    void register(User user);

    User login(User user);

    User getUserByName(User user);
}
