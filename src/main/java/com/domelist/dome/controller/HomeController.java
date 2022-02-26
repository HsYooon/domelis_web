package com.domelist.dome.controller;

import com.domelist.dome.dto.DomeDto;
import com.domelist.dome.dto.SiteInfoDto;
import com.domelist.dome.service.DomeService;
import jdk.nashorn.internal.objects.annotations.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    DomeService service;

    @GetMapping("/")
    public String home(Model model) {
        int cnt = 12;
        /* 12개의 상품 */
        List<DomeDto> todayProductList = service.mainNewList();
        /* 12개의 상품 */
        List<DomeDto> bestProductList = service.mainBestList();
        model.addAttribute("todayProductList", todayProductList);
        model.addAttribute("bestProductList", bestProductList);
        return "home";
    }
    @GetMapping("/category")
    public String category(@RequestParam("cd") String cd, Model model) {
        /* id = 1 : 생활 */
        List<SiteInfoDto> siteInfoList = service.siteInfoList(cd);
        model.addAttribute("siteInfoList", siteInfoList);
        return "category";
    }

    @GetMapping("/product")
    public String productMain(Model model) {
        List<DomeDto> prdMainNewList = service.prdMainNewList();
        List<DomeDto> prdMainBestList = service.prdMainBestList();
        model.addAttribute("prdMainNewList",prdMainNewList);
        model.addAttribute("prdMainBestList",prdMainBestList);
        return "prdMain";
    }
    @GetMapping("/product/new")
    public String productNew(Model model) {
        String title = "오늘의 도매 신상품";
        String desc = "도매사이트의 신규 상품을 한자리에 모았습니다. 오늘 새롭게 올라온 상품을 확인하세요.";
        List<DomeDto> prdSubNewList = service.todayProductList();

        model.addAttribute("prdSubNewList",prdSubNewList);
        model.addAttribute("title", title);
        model.addAttribute("desc", desc);
        return "prdSub";
    }

    @GetMapping("/board")
    public String postTest(Model model) {
        String article = "<h2>전 세계 YouTube 동영상을 통해 살펴본 <br>2021 트렌드 총정리</h2>\n" +
                "        <p>작성자 / 2022년 02월</p>\n" +
                "        <iframe src=\"https://www.youtube.com/embed/pi8BAPg9X8A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\n" +
                "        <article>\n" +
                "            <p class=\"p1\">이날 한국마이크로소프트는 서피스 신규 라인업과 신제품의 차별화된 가치, 활용 사례 등을 소개했다. 신제품은 서피스 프로 8(Surface Pro 8), 서피스 고 3(Surface Go 3), 서피스 랩탑 스튜디오(Surface Laptop Studio), 서피스 프로 X WiFi(Surface Pro X WiFi) 등 4종으로 국내 공식 출시를 알렸다.\n" +
                "                이번에 선보인 서피스 시리즈는 일하는 장소나 디바이스 등 물리적 환경으로부터 자유로우면서 유연성이 극대화된 근무 형태인 하이브리드 업무 환경에서 강력한 보안을 바탕으로 생산성과 협업을 극대화할 수 있는 윈도우 11(Windows 11) 기반의 디바이스다.</p>\n" +
                "            <p>윈도우11은 윈도우10을 기반으로 구축되어 IT 부서에서 관리가 쉽고 호환이 용이하며, 보안 기준을 높여 가장 안전한 윈도우 환경을 마련한 것은 물론, 새로워진 스냅 레이아웃, 스냅 그룹, 데스크톱 기능으로 멀티태스킹 경험을 강화해 서피스 제품과 결합되어 이용자의 작업 효율성과 집중도를 향상시킨다.\n" +
                "                서피스 프로 8은 노트북의 강력한 성능에 태블릿의 휴대성을 갖췄다. 얇아진 배젤로 세련된 디자인과 한층 더 커진 화면, 빨라진 속도가 워크로드(주어진 시간 안에 컴퓨터 시스템이 처리해야 하는 작업량)가 많은 전문가들에게 탁월한 업무 생산성과 여가를 위한 최고의 게임환경까지 제공한다.</p>\n" +
                "            <h3>한국 마이크로소프트가 25일 온라인 기자 간담회를 열고, 변화하는 일상에 맞춰 더 새로워진 서피스(Surface)시리즈를 공개했다.</h3>\n" +
                "            <p>11세대 인텔 코어 i5-1135G7 및 i7-1185G7 고성능 프로세서를 탑재하고, 프로 제품 최초로 인텔의 고성능 고효율 모바일 PC 인증제도인 인텔 이보(evo) 플랫폼 인증을 획득했다. 최대 16시간 사용 가능한 배터리가 뛰어난 성능을 오랫동안 수행할 수 있도록 돕는다.\n" +
                "                서피스 고 3는 무게 544g 강력한 휴대성으로 누구나 어디서든 재택 업무, 원격학습, 영상 시청, 게임, 쇼핑 등의 다양한 활동을 지원한다.\n" +
                "                또한, 서피스 고 2(8세대 intel Core M) 대비 13% 빠른 성능을 가진 10세대 인텔 코어 i3 프로세서, 최장 11시간 사용 가능한 배터리가 생산성 향상을 돕는 운영체제 윈도우 11의 기능을 더욱 극대화한다.\n" +
                "                서피스 랩탑 스튜디오는 전문가들의 원활한 디자인 및 렌더링 작업을 돕는 쿼드 코어 구동 11세대 Intel 코어 H 시리즈 프로세서와 최대 32GB RAM, 엔비디아 지포스 RTX 3050 Ti가 탑재되었으며, 비즈니스용에서는 추가 옵션으로 A2000 dGPU가 장착된다.\n" +
                "                14.4인치에 최대 120Hz 주사율의 터치 스크린은 모든 콘텐츠를 정확한 색으로 확인할 수 있으며, 지원되는 콘텐츠 재생 시 돌비 비전을 통해 밝은 부분은 더 밝게, 어두운 부분은 더 어둡게 세심한 연출이 가능하다.\n" +
                "                새로이 추가된 WiFi 단독 지원 옵션의 서피스 프로 X도 소개했다. 7.3mm의 얇은 두께와 774g의 무게에도 13 인치의 고해상도 픽셀센스 디스플레이(PixelSense display)와 3:2화면 비율을 통해 최적화된 작업 환경을 제공한다.\n" +
                "                또한, 퀄컴과의 협력을 통해 강력한 LTE 연결성에 고성능 컴퓨팅을 위한 ARM프로세서와 마이크로소프트 XBOX에 구현된 최고의 그래픽 기술을 통합한 맞춤형 프로세서SQ1에 이어 업그레이드된 SQ2 프로세서도 새롭게 선보였다.</p>\n" +
                "            <p>한국마이크로소프트는 KDB 산업은행, LG에너지솔루션을 비롯해 다양한 산업에서의 업무 생산성 극대화와 지속가능성을 갖춘 접근방식에 성공한 국내∙외 서피스 적용 사례도 소개했다.\n" +
                "                한편, 이번에 공개된 서피스 프로 8은 1월 25일, 서피스 랩탑 스튜디오는 오는 2월 8일 사전 예약 판매를 시작으로 3월 8일 공식 출시한다.</p>\n" +
                "        </article>";
        model.addAttribute("article",article);
        return "post";
    }
}
