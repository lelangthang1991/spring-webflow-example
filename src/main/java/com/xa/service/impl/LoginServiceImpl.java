package com.xa.service.impl;

import com.xa.annotation.ReadTx;
import com.xa.entity.User;
import com.xa.repository.UserRepository;
import com.xa.service.LoginService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;

@Service
public class LoginServiceImpl implements LoginService, Serializable {

    private static final Logger LOGGER = Logger.getLogger(LoginService.class);

    @Autowired
    private transient UserRepository userRepository;

    @ReadTx
    @Override
    public String loginProcess(User user) throws Exception {
        User u = userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword());
        if (u != null) {
            LOGGER.info(u.toString());
            return "true";
        }
        return "false";
    }
}
