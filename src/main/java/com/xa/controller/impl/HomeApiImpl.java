package com.xa.controller.impl;

import com.xa.controller.HomeApi;
import org.springframework.stereotype.Component;

@Component
public class HomeApiImpl implements HomeApi {
    @Override
    public String home() {
        return "home";
    }

}
