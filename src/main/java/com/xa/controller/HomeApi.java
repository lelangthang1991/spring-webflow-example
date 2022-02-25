package com.xa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public interface HomeApi {

    @GetMapping("/")
    String home();

}
