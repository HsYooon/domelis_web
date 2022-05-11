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
public class MainController {
    @Autowired
    DomeService service;

    /* 운영 경로 */
    private String path = "/var/lib/tomcat9/webapps/upload/";
    /* 로컬 경로 */
    //private String path = "/Users/hapsun/Desktop/study/img/";

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

    /* 필독 정보 모음 */
    @GetMapping("/marketInfo")
    public String marketInfo(Model model) {
        List<MarketPostDto> result1 = service.marketInfoPostList2("01",8);
        List<MarketPostDto> result2 = service.marketInfoPostList2("02",8);
        List<MarketPostDto> result3 = service.marketInfoPostList2("03",8);
        List<MarketPostDto> result4 = service.marketInfoPostList2("04",8);
        model.addAttribute("infoPostList", result1);
        model.addAttribute("productPostList", result2);
        model.addAttribute("academyPostList", result3);
        model.addAttribute("programPostList", result4);
        return "marketInfo";
    }

    /* 필독 정보 모음 > 최신 마케팅 소식 */
    @GetMapping("/marketInfo/info")
    public String marketInfo01(Model model) {
        List<MarketPostDto> result1 = service.marketInfoPostList("01");
        List<MarketPostDto> result2 = service.marketInfoPostListByCnt("01");
        model.addAttribute("marketInfoPostList", result1);
        model.addAttribute("popularPostList", result2);
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
        List<MarketPostDto> result1 = service.marketInfoPostList("03");
        List<MarketPostDto> result2 = service.marketInfoPostListByCnt("03");
        model.addAttribute("marketInfoPostList", result1);
        model.addAttribute("popularPostList", result2);
        return "marketInfo_04";
    }

    /* 필독 정보 모음 > 필수프로그램 모음 */
    @GetMapping("/marketInfo/program")
    public String marketInfo05(Model model) {
        List<MarketPostDto> result = service.marketInfoPostList("04");
        model.addAttribute("marketInfoPostList", result);
        return "marketInfo_05";
    }

    /* 필독 정보 모음 > 사업자를 위한 정보 모음 */
    @GetMapping("/marketInfo/business")
    public String marketInfo06(Model model) {
        List<MarketPostDto> result = service.marketInfoPostList("05");
        model.addAttribute("marketInfoPostList", result);
        return "marketInfo_06";
    }

    /* 필독 정보 모음 > 게시글 */
    @GetMapping("/marketInfo/post")
    public String infoMarket(@RequestParam("id") int id, Model model, HttpSession session) {
        // 게시글 조회
        MarketPostDto result1 = service.marketPost(id);
        // 전체 인기게시글 3개 조회
        int cnt = 3;
        List<MarketPostDto> result2 = service.allInfoPostListByCnt(cnt);
        String role = (String)session.getAttribute("role");

        if(role == "admin"){
            model.addAttribute("role", role);
        }else {
            // 관리자 아닌경우 조회수 증가
            service.updatePostCount(id);
        }

        model.addAttribute("post", result1);
        model.addAttribute("popularPostList", result2);
        model.addAttribute("id", id);
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
    public String marketInfoWritePost(Model model) {
        List<CdDto> result = service.infoCategoryList();
        model.addAttribute("infoCategoryList",result);
        return "writePost";
    }

    /* 게시글 수정 */
    @GetMapping("/modifyPost")
    public String marketInfoModifyPost(@RequestParam("id") String id, Model model) {

        int origin_id = Integer.parseInt(id);
        MarketPostDto result1 = service.marketPost(origin_id);
        List<CdDto> result2 = service.infoCategoryList();

        model.addAttribute("infoCategoryList",result2);
        model.addAttribute("post", result1);
        model.addAttribute("id",id);
        return "modifyPost";
    }

    /* 게시글 > 식제 */
    @GetMapping("/deletePost")
    public String marketInfoDeletePost(@RequestParam("id") String id) {
        int origin_id = Integer.parseInt(id);
        System.out.println("id ===> " + origin_id);
        service.deletePost(origin_id);
        return "redirect:/marketInfo";
    }

    /* 게시글 작성 > 업로드*/
    @PostMapping("/marketInfo/upload")
    public String marketInfoUpload(MultipartHttpServletRequest request) throws IOException {
        Map<String,String> post = new HashMap<>();
        post.put("title", request.getParameter("title"));
        post.put("writer", request.getParameter("writer"));
        post.put("article", request.getParameter("article"));
        post.put("category", request.getParameter("category"));

        /* 썸네일 없는 경우 패스 */
        MultipartFile thumbnail = request.getFile("thumbnail");
        System.out.println("upload post ==? " + thumbnail);
        if(!thumbnail.isEmpty()) {
            String name = UUID.randomUUID() + thumbnail.getOriginalFilename();
            File imageFile = new File(path + name);
            try {
                thumbnail.transferTo(imageFile);
                post.put("thumbnail", name);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }


        service.uploadPost(post);
        return "redirect:/marketInfo";
    }

    /* 게시글 수정 */
    @PostMapping("/marketInfo/modify")
    public String marketInfoModifyPost(MultipartHttpServletRequest request) throws IOException {

        Map<String,Object> post = new HashMap<>();

        post.put("title", request.getParameter("title"));
        post.put("writer", request.getParameter("writer"));
        post.put("article", request.getParameter("article"));
        post.put("category", request.getParameter("category"));

        MultipartFile thumbnail = request.getFile("thumbnail");
        /* 썸네일 없는 경우 패스 */
        if(!thumbnail.isEmpty()) {
            String name = UUID.randomUUID() + thumbnail.getOriginalFilename();
            File imageFile = new File(path + name);
            try {
                thumbnail.transferTo(imageFile);
                post.put("thumbnail", name);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        post.put("id", request.getParameter("id"));
        System.out.println("modify params ===> " + post.toString());
        service.modifyPost(post);
        return "redirect:/marketInfo";
    }

    /* 이미지 다운로드 -> imageController 로 이동해야함 */
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
