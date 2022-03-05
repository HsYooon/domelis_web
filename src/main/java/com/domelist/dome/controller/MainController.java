package com.domelist.dome.controller;

import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.service.DomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
public class MainController {
    @Autowired
    DomeService service;

    @PostMapping("/search")
    public String searchPrd(String query, Model model) {
        Map<String,Object> result =  service.searchPrd(query);
        model.addAttribute("query", query);
        model.addAttribute("searchList", result.get("list"));
        model.addAttribute("cnt", result.get("cnt"));
        return "prdDefault";
    }


}
