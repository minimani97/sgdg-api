package com.kate.sgdgapi.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/")
    public String testEndpoint() {
        return "SGDG-api Server is RUNNING!";
    }

}
