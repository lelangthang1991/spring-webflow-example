package com.xa.service;

import com.xa.annotation.ReadTx;
import com.xa.entity.User;

public interface LoginService {

    String loginProcess(User user) throws Exception;

}
