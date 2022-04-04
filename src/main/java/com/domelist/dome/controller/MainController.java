package com.domelist.dome.controller;

import com.domelist.dome.dto.MarketPostDto;
import com.domelist.dome.service.DomeService;
import org.springframework.beans.factory.annotation.Autowired;
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
    public String marketInfo(Model model) {
        List<MarketPostDto> result = service.marketInfoPostList("01");
        model.addAttribute("marketPostList", result);
        return "marketInfo";
    }

    /* 필독 정보 모음 > 최신 마케팅 소식 */
    @GetMapping("/marketInfo/info")
    public String marketInfo01(Model model) {
        List<MarketPostDto> result = service.marketInfoPostList("01");
        model.addAttribute("marketInfoPostList", result);
        return "marketInfo_01";
    }

    /* 필독 정보 모음 > 마케팅 달력 */
    @GetMapping("/marketInfo/calendar")
    public String marketInfo02() {
        return "marketInfo_02";
    }

    /* 필독 정보 모음 > 마케팅 상품 모음 */
    @GetMapping("/marketInfo/product")
    public String marketInfo03(Model model) {
        List<MarketPostDto> result = service.marketInfoPostList("02");
        model.addAttribute("marketInfoPostList", result);
        return "marketInfo_03";
    }

    /* 필독 정보 모음 > 10억 아카데미 */
    @GetMapping("/marketInfo/academy")
    public String marketInfo04(Model model) {
        List<MarketPostDto> result = service.marketInfoPostList("03");
        model.addAttribute("marketInfoPostList", result);
        return "marketInfo_04";
    }

    /* 필독 정보 모음 > 필수프로그램 모음 */
    @GetMapping("/marketInfo/program")
    public String marketInfo05(Model model) {
        List<MarketPostDto> result = service.marketInfoPostList("04");
        model.addAttribute("marketInfoPostList", result);
        return "marketInfo_05";
    }

    /* 필독 정보 모음 > 정부지원사업모음 */
    @GetMapping("/marketInfo/business")
    public String marketInfo06(Model model) {
        List<MarketPostDto> result = service.marketInfoPostList("05");
        model.addAttribute("marketInfoPostList", result);
        return "marketInfo_06";
    }

    /* 필독 정보 모음 > 게시글 */
    @GetMapping("/marketInfo/post")
    public String infoMarket(@RequestParam("id") int id, Model model, HttpSession session) {
        MarketPostDto result = service.marketPost(id);
        System.out.println(result.toString());

        String role = (String)session.getAttribute("role");
        if(role == "admin"){
            model.addAttribute("role", role);
        }

        model.addAttribute("post", result);
        model.addAttribute("id",id);
        return "marketInfo_post";
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

    /* 게시글 작성폼 */
    @GetMapping("/writePost")
    public String marketInfoWritePost() {
        return "writePost";
    }

    /* 게시글 수정 */
    @GetMapping("/modifyPost")
    public String marketInfoModifyPost(@RequestParam("id") int id, Model model) {
        MarketPostDto result = service.marketPost(id);
        model.addAttribute("post", result);
        model.addAttribute("id",id);
        return "modifyPost";
    }

    /* 게시글 > 식제 */
    @GetMapping("/deletePost")
    public String marketInfoDeletePost(@RequestParam("id") int id) {
        System.out.println("id ===> " + id);
        service.deletePost(id);
        return "redirect:/marketInfo";
    }

    /* 게시글 작성 > 업로드*/
    @PostMapping("/marketInfo/upload")
    public String marketInfoUpload(@RequestParam MultipartFile[] image, @RequestParam String writer,
                                   @RequestParam String mediaType, @RequestParam String title,
                                   @RequestParam String article, @RequestParam String category,
                                   @RequestParam MultipartFile[] thumbnail) throws IOException {
        // 운영 서버 경로
        String path = "/var/lib/tomcat9/webapps/upload/";
        // 로컬 경로
        //String path = "/Users/hapsun/Desktop/study/img/";
        Map<String,String> post = new HashMap<>();
        if(image.length > 0) {
            for (MultipartFile file : image) {
                String name = UUID.randomUUID() + file.getOriginalFilename();
                File imageFile = new File(path+name);
                try {
                    file.transferTo(imageFile);
                    post.put("media", name);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        post.put("title", title);
        post.put("mediaType", mediaType);
        post.put("writer", writer);
        post.put("article", article);
        post.put("category", category);

        if(thumbnail.length > 0) {
            for (MultipartFile file : thumbnail) {
                String name = UUID.randomUUID() + file.getOriginalFilename();
                File imageFile = new File(path + name);
                try {
                    file.transferTo(imageFile);
                    post.put("thumbnail", name);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
       }

        service.uploadPost(post);
        return "writePost";
    }

    /* 게시글 수정 */
    @PostMapping("/marketInfo/modify")
    public String marketInfoModifyPost(@RequestParam MultipartFile[] image, @RequestParam String writer,
                                   @RequestParam String mediaType,  @RequestParam int id , @RequestParam String title,
                                   @RequestParam String article, @RequestParam String category,
                                   @RequestParam MultipartFile[] thumbnail) throws IOException {
        // 운영 서버 경로
        String path = "/var/lib/tomcat9/webapps/upload/";
        // 로컬 경로
        //String path = "/Users/hapsun/Desktop/study/img/";
        Map<String,Object> post = new HashMap<>();
        if(image.length > 0) {
            for (MultipartFile file : image) {
                String name = UUID.randomUUID() + file.getOriginalFilename();
                File imageFile = new File(path+name);
                try {
                    file.transferTo(imageFile);
                    post.put("media", name);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        post.put("title", title);
        post.put("mediaType", mediaType);
        post.put("writer", writer);
        post.put("article", article);
        post.put("category", category);

        if(thumbnail.length > 0) {
            for (MultipartFile file : thumbnail) {
                String name = UUID.randomUUID() + file.getOriginalFilename();
                File imageFile = new File(path + name);
                try {
                    file.transferTo(imageFile);
                    post.put("thumbnail", name);
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        post.put("id", id);
        service.modifyPost(post);
        return "redirect:/marketInfo";
    }

    @GetMapping(value = "/image/{filename}", produces = MediaType.IMAGE_JPEG_VALUE)
    @ResponseBody
    public byte[] userSearch(@PathVariable("filename") String filename) throws IOException {
        //InputStream imageStream = new FileInputStream("C://images/feed/" + filename);
        /* 운영 경로 */
        String path = "/var/lib/tomcat9/webapps/upload/";
        /* 로컬 경로 */
        //String path = "/Users/hapsun/Desktop/study/img/";
        File file = new File(path+filename);
        FileInputStream inputStream = new FileInputStream(file);
        byte[] bytes = new byte[inputStream.available()];
        inputStream.read(bytes, 0, inputStream.available());
        return bytes;
    }


}
