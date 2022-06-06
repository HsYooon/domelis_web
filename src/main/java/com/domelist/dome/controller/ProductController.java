package com.domelist.dome.controller;

import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.service.CommonService;
import com.domelist.dome.service.DomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
public class ProductController {

    @Autowired
    DomeService service;

    @Autowired
    CommonService commonService;

    /* 오늘의 도매상품 */
    @GetMapping("/product")
    public String productMain(Model model) {
        List<DomeDto> prdMainNewList = service.prdMainNewList();
        List<DomeDto> prdMainBestList = service.prdMainBestList();
        model.addAttribute("prdMainNewList",prdMainNewList);
        model.addAttribute("prdMainBestList",prdMainBestList);
        return "prdMain";
    }

    /* 오늘의 도매상품 > 신상품 */
    @GetMapping("/product/new")
    public String productNew(@RequestParam(value ="page", required = false) String page,
                             @RequestParam(value ="cd",required = false) String cd, Model model) {
        String info = "11"; // 신상품
        int totalPrdCnt = commonService.totalPrdCnt(info, cd);
        Map<String, Object> map = service.todayProductList(info, page, cd, totalPrdCnt);
        if (map == null) {
            return "redirect:/error";
        }
        String title = "오늘의 도매 신상품";
        String desc1 = "도매사이트의 신규 상품을 한자리에 모았습니다.";
        String desc2 = "오늘 새롭게 올라온 상품을 확인하세요.";

        if(cd != null) {
            model.addAttribute("cd",cd);
        }
        model.addAttribute("info", info);
        model.addAttribute("lastPage", map.get("lastPage"));
        model.addAttribute("nowPage", map.get("nowPage"));
        model.addAttribute("prdSubList",map.get("result"));
        model.addAttribute("startPage", map.get("startPage"));
        model.addAttribute("endPage", map.get("endPage"));
        model.addAttribute("title", title);
        model.addAttribute("desc1", desc1);
        model.addAttribute("desc2", desc2);
        return "prdNewSub";
    }

    @GetMapping("/product/best")
    public String productBest(@RequestParam(value ="page", required = false) String page,
                              @RequestParam(value ="cd",required = false) String cd, Model model) {
        String info = "12"; // 신상품
        int totalPrdCnt = commonService.totalPrdCnt(info,cd);
        Map<String, Object> map = service.todayProductList(info, page, cd, totalPrdCnt);
        if (map == null) {
            return "redirect:/error";
        }
        String title = "오늘의 도매 베스트";
        String desc1 = "도매사이트의 인기 상품을 한자리에 모았습니다.";
        String desc2 = "잘 팔리는 상품을 확인하세요.";

        if(cd != null) {
            model.addAttribute("cd", cd);
        }
        model.addAttribute("info", info);
        model.addAttribute("lastPage", map.get("lastPage"));
        model.addAttribute("nowPage", map.get("nowPage"));
        model.addAttribute("startPage", map.get("startPage"));
        model.addAttribute("endPage", map.get("endPage"));
        model.addAttribute("prdSubList",map.get("result"));
        model.addAttribute("title", title);
        model.addAttribute("desc1", desc1);
        model.addAttribute("desc2", desc2);
        return "prdBestSub";
    }

    /* 상품 클릭시 > 사이트 조회수 update */
    @PostMapping("/productIncrCnt")
    public void productIncrCnt(HttpServletResponse response, String name) throws IOException {
        service.updateSiteCount(name);
        response.getWriter().write("ok");
    }
}
