package com.domelist.dome.controller;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
public class imageController {

    /* 운영 경로 */
    // private final String path = "/var/lib/tomcat9/webapps/upload/";
    /* 로컬 경로 */
    private final String path = "/Users/hapsun/Desktop/study/img/";

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

    /* 이미지 다운로드 */
    @GetMapping(value = "/image/{filename}", produces = MediaType.IMAGE_JPEG_VALUE)
    @ResponseBody
    public byte[] userSearch(@PathVariable("filename") String filename) throws IOException {
        File file = new File(path+filename);
        FileInputStream inputStream = new FileInputStream(file);
        byte[] bytes = new byte[inputStream.available()];
        inputStream.read(bytes, 0, inputStream.available());
        return bytes;
    }
}
