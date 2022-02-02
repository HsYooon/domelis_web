package com.domelist.dome.controller;

import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.service.DomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class MainController {
    @Autowired
    DomeService service;

    @GetMapping("/test")
    List<DomeDto> test() {
        return service.test();
    }
}
