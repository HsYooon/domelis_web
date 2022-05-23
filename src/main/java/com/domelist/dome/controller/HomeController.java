package com.domelist.dome.controller;

import com.domelist.dome.dto.DeliveryDto;
import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.dto.MarketPostDto;
import com.domelist.dome.dto.SiteInfoDto;
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
public class HomeController {
    @Autowired
    DomeService service;

    @Autowired
    CommonService commonService;

    /* 메인 */
    @GetMapping("/")
    public String home(Model model) {
        /* 12개의 상품 */
        List<DomeDto> mainNewList = service.mainNewList();
        /* 12개의 상품 */
        List<DomeDto> mainBestList = service.mainBestList();
        model.addAttribute("todayProductList", mainNewList);
        model.addAttribute("bestProductList", mainBestList);
        /* 최신 마케팅 소식 12개 */
        List<MarketPostDto> mainMarketPostList = service.marketInfoPostList2("01",12);
        /* 인기 사이트 top10 */
        //todo: dto 정리
        List<Object> siteInfoListByCnt = service.siteInfoListByCnt();
        model.addAttribute("marketPostList", mainMarketPostList);
        model.addAttribute("siteInfoListByCnt", siteInfoListByCnt);
        return "home";
    }

    /* 메인 */
    @GetMapping("/siteinfo")
    public String siteInfo(@RequestParam("cd") String cd, Model model) {
        /* cd = null or all : 모든 사이트*/
        List<SiteInfoDto> siteInfoList = service.siteInfoList(cd);
        List<Object> siteInfoListByCnt = service.siteInfoListByCnt();
        model.addAttribute("siteInfoListByCnt", siteInfoListByCnt);
        String title = "";
        if(cd.equals("all")) {
            model.addAttribute("title", title);
            model.addAttribute("siteInfoList", siteInfoList);
            return "siteinfo";
        }
        title = service.categoryNm(cd);
        model.addAttribute("title", title);
        model.addAttribute("siteInfoList", siteInfoList);
        return "siteinfo";
    }

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
    public String productNew(@RequestParam(value ="page", required = false) String page, Model model) {
        String info = "11"; // 신상품
        int totalPrdCnt = commonService.totalPrdCnt(info);
        Map<String, Object> map = service.todayProductList(info, page, totalPrdCnt);
        if (map == null) {
            return "error";
        }
        String title = "오늘의 도매 신상품";
        String desc1 = "도매사이트의 신규 상품을 한자리에 모았습니다.";
        String desc2 = "오늘 새롭게 올라온 상품을 확인하세요.";

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
    public String productBest(@RequestParam(value ="page", required = false) String page, Model model) {
        String info = "12"; // 신상품
        int totalPrdCnt = commonService.totalPrdCnt(info);
        Map<String, Object> map = service.todayProductList(info, page,totalPrdCnt);
        if (map == null) {
            return "error";
        }
        String title = "오늘의 도매 베스트";
        String desc1 = "도매사이트의 인기 상품을 한자리에 모았습니다.";
        String desc2 = "잘 팔리는 상품을 확인하세요.";

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

    /* 사이트 조회수 집계 */
    @PostMapping("/productIncrCnt")
    public void productIncrCnt(HttpServletResponse response, String name) throws IOException {
        service.updateSiteCount(name);
        response.getWriter().write("ok");
    }

    @GetMapping("/delivery")
    public String delivery(Model model) {
        Map<String, List> result = service.deliveryMainLists();
        model.addAttribute("domesticList", result.get("domestic"));
        model.addAttribute("abroadList", result.get("abroad"));
        model.addAttribute("advertiseList", result.get("advertise"));
        return "delivery";
    }

    @GetMapping("/delivery/request")
    public String deliveryRequest() {
        return "delivery_request";
    }

    @GetMapping("/delivery/domestic")
    public String deliveryDomesticInfo(Model model){
        String code = "domestic";
        String title = "3PL 물류/택배 대행 업체 정보 모음";
        String desc ="3PL 물류/택배 대행 업체 정보를 한자리에 모았습니다. 비지니스 성장을 위한 인사이트를 얻을 수 있는지 살펴 보세요.";
        List<DeliveryDto> result = service.deliveryDomesticList();
        model.addAttribute("code", code);
        model.addAttribute("title",title);
        model.addAttribute("desc", desc);
        model.addAttribute("deliveryList", result);
        return "delivery_info";
    }

    @GetMapping("/delivery/abroad")
    public String deliveryAbroadInfo(Model model){
        String code = "abroad";
        String title = "해외 수입구매 (대량구매/OEM/ODM) 대행 업체 정보 모음";
        String desc ="해외 수입구매 대행 업체 정보를 한자리에 모았습니다. 비지니스 성장을 위한 인사이트를 얻을 수 있는지 살펴 보세요.";
        List<DeliveryDto> result = service.deliveryAbroadList();
        model.addAttribute("code", code);
        model.addAttribute("title",title);
        model.addAttribute("desc", desc);
        model.addAttribute("deliveryList", result);
        return "delivery_info";
    }

    @GetMapping("/advertise")
    public String advertiseInfo(Model model) {
        String code = "advertise";
        Map<String, List> result = service.advertiseLists();
        model.addAttribute("code", code);
        model.addAttribute("searchList", result.get("searchList"));
        model.addAttribute("shoppingList", result.get("shoppingList"));
        model.addAttribute("daList", result.get("daList"));
        model.addAttribute("reviewList", result.get("reviewList"));
        return "advertise";
    }

    @GetMapping("/marketing")
    public String marketingInfo(){
        return "marketing";
    }

}
