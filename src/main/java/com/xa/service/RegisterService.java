package com.xa.service;

import com.xa.entity.User;
import org.springframework.stereotype.Service;

@Service
public interface RegisterService {

    String register(User user);

}
