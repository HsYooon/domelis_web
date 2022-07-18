package com.domelist.dome.controller;

import com.domelist.dome.dto.CdDto;
import com.domelist.dome.dto.MarketPostDto;
import com.domelist.dome.service.DomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class CommonController {
    @Autowired
    DomeService service;

    /* 운영 경로 */
    private String path = "/var/lib/tomcat9/webapps/upload/";
    /* 로컬 경로 */
    // private String path = "/Users/hapsun/Desktop/study/img/";

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
        System.out.print("query : " + query);
        Map<String,Object> result =  service.searchPrd(query);
        model.addAttribute("query", query);
        model.addAttribute("searchList", result.get("list"));
        model.addAttribute("cnt", result.get("cnt"));
        return "prdDefault";
    }

    /* 로그인 */
    @GetMapping("/login")
    public String login_form() {
        return "login";
    }

    /* 로그인 확인 */
    @PostMapping("/login_confirm")
    public String login(@RequestParam String id, @RequestParam String password, HttpSession session) {
        if (id.equals("admin") && password.equals("domelist")) {
            session.setAttribute("role", "admin");
            return "redirect:/writePost";
        }else {
            return "redirect:/";
        }
    }
}
