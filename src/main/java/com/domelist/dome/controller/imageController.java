package com.domelist.dome.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
public class imageController {

    /* 운영 경로 */
    private String path = "/var/lib/tomcat9/webapps/upload/";
    /* 로컬 경로 */
    // private String path = "/Users/hapsun/Desktop/study/img/";

    @PostMapping("/marketInfo/image")
    public Map<String, String> marketInfoImage(MultipartHttpServletRequest request) {
        Map<String, String> response = new HashMap<>();

        MultipartFile file = request.getFile("upload");
        String name = UUID.randomUUID() + file.getOriginalFilename();
        File imageFile = new File(path + name);
        try {
            file.transferTo(imageFile);
            response.put("image", "/image/" + name);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return response;
    }
}
