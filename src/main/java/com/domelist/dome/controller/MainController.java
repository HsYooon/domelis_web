package com.domelist.dome.controller;

import com.domelist.dome.dto.MarketPostDto;
import com.domelist.dome.service.DomeService;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

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

    /* 필독 정보 모음 */
    @GetMapping("/marketInfo")
    public String infoMain(Model model) {
        List<MarketPostDto> result = service.marketPostList();
        model.addAttribute("marketPostList", result);
        return "marketInfo";
    }

    @GetMapping("/marketInfo/info")
    public String infoNew(Model model) {
        List<MarketPostDto> result = service.marketPostList();
        model.addAttribute("marketPostList", result);
        return "marketInfo_info";
    }

    @GetMapping("/marketInfo/calendar")
    public String infoCalendar() {
        return "marketCalendar";
    }

    @GetMapping("/marketInfo/post")
    public String infoMarket(@RequestParam("id") int id, Model model) {
        MarketPostDto result = service.marketPost(id);
        System.out.println(result.toString());
        model.addAttribute("post", result);
        return "marketInfo_post";
    }

    @GetMapping("/marketInfo/writePost")
    public String marketInfoWritePost() {
        return "writePost";
    }

    @PostMapping("/marketInfo/upload")
    public String marketInfoUpload(@RequestParam MultipartFile[] image, @RequestParam String writer,
                                   @RequestParam String mediaType, @RequestParam String title,
                                   @RequestParam String article, @RequestParam MultipartFile[] thumbnail) {

        Map<String,String> post = new HashMap<>();
        if(image != null) {
            for (MultipartFile file : image) {
                File newFileName = new File(UUID.randomUUID() + file.getOriginalFilename());
                try {
                    file.transferTo(newFileName);
                    post.put("media", newFileName.getName());
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        post.put("title", title);
        post.put("mediaType", mediaType);
        post.put("writer", writer);
        post.put("article", article);

        for(MultipartFile file : thumbnail) {
            File newFileName = new File(UUID.randomUUID()+file.getOriginalFilename());
            try {
                file.transferTo(newFileName);
                post.put("thumbnail", newFileName.getName());
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        service.uploadPost(post);

        return "writePost";
    }

    @GetMapping(value = "/image/{filename}", produces = MediaType.IMAGE_JPEG_VALUE)
    @ResponseBody
    public byte[] userSearch(@PathVariable("filename") String filename) throws IOException {
        //InputStream imageStream = new FileInputStream("C://images/feed/" + filename);
        String path = "/Users/hapsun/Desktop/study/img/";
        File file = new File(path+filename);
        FileInputStream inputStream = new FileInputStream(file);
        byte[] bytes = new byte[inputStream.available()];
        inputStream.read(bytes, 0, inputStream.available());
        return bytes;
    }


}
