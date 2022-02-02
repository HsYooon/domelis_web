package com.domelist.dome.controller;

import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.service.DomeService;
import jdk.nashorn.internal.objects.annotations.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    DomeService service;

    @GetMapping("/")
    public String home(Model model) {
        List<DomeDto> todayProductList = service.todayProductList();
        model.addAttribute("todayProductList", todayProductList);
        return "main";
    }
}
