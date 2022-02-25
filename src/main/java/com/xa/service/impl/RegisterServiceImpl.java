package com.xa.service.impl;

import com.xa.annotation.ChangeTx;
import com.xa.entity.User;
import com.xa.repository.UserRepository;
import com.xa.service.RegisterService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.Serializable;

@Service
public class RegisterServiceImpl implements RegisterService, Serializable {

    private static final Logger LOGGER = Logger.getLogger(RegisterService.class);

    @Autowired
    private transient UserRepository userRepository;

    @ChangeTx
    @Override
    public String register(User user) {
        LOGGER.info(userRepository.save(user));
        if(user.getAge() == null) return "false";
        return "true";
    }

}
