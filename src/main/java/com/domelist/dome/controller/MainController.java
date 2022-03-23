package com.domelist.dome.controller;

import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.service.DomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

@Controller
public class MainController {
    @Autowired
    DomeService service;

    @RequestMapping(value = "/ads.txt")
    @ResponseBody
    public String adstxt(HttpServletResponse response) {
        String fileName = "ads.txt";
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
        String content = "google.com, pub-1708982640263259, DIRECT, f08c47fec0942fa0";
        return content;
    }

    @PostMapping("/search")
    public String searchPrd(String query, Model model) {
        Map<String,Object> result =  service.searchPrd(query);
        model.addAttribute("query", query);
        model.addAttribute("searchList", result.get("list"));
        model.addAttribute("cnt", result.get("cnt"));
        return "prdDefault";
    }


}
