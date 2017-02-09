package com.leo.boot.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * com.leo.boot.controller
 * Created by leo on 17. 1. 24.
 */

@RestController
public class HealthController {

    @RequestMapping("/")
    public String check() {
        return "V2";
    }
}
