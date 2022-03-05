<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.4.4.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/script.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/loadHTML.js" type="text/javascript"></script>
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/category.css" type="text/css">
    <style>
        /* section5 필독 정보 모음 */
        .section5{
            width: 100%;
            padding-bottom: 2rem;
            padding-top: 2rem;
            margin: 50px auto;
            background-color: #fff;
        }
        .section5 h2{
            text-align: left;
            width: 70%;
            margin: 0 auto;
            font-size: 1.75rem;
            line-height: 2.25rem;
            font-weight: normal;
        }
        .info_wrap{
            width: 70%;
            height: 400px;
            margin: 50px auto;
        }
        .info_wrap ul.info_box{
            width: 100%;
        }
        .info_wrap ul.info_box li{
            width: 23%;
            float: left;
            height: 180px;
            margin-right: 2%;
            margin-bottom: 2%;
            border: 0.0625rem solid #eee;
            border-radius: 0.5rem;
            box-shadow: 1px 3px 1px 0px rgba(211, 208, 208, 0.61);
        }
        .info_wrap ul.info_box li:nth-child(4n){
            margin-right: 0;
        }
        .info_wrap ul.info_box li a{
            display: block;
            margin-top: 10px;
            padding: 5% ;
        }
        .info_wrap ul.info_box li a strong{
            font-size: 1.125rem;
        }
        .info_wrap ul.info_box li a p{
            display: block;
            margin-top: 8px;
            font-size:0.9rem;
            line-height: 1.5rem;
        }
        .info_wrap ul.info_box li a span{
            display: block;
            font-size: 0.75em;
            text-align: left;
            color: rgb(148, 148, 148);
            margin-top: 10%;
        }

        @media all and (min-width:768px) and (max-width:1023px) {
            .info_wrap{
                width: 70%;
                height: 500px;
                margin: 50px auto;
            }
            .info_wrap ul.info_box li{
                width: 30%;
                margin-right: 4%;
            }
            .info_wrap ul.info_box li:nth-child(3n){
                margin-right: 0;
            }
            .info_wrap ul.info_box li:nth-child(4n){
                margin-right: 4%;
            }
            .info_wrap ul.info_box li a{
                display: block;
                margin-top: 5px;
                padding: 2% ;
            }
            .info_wrap ul.info_box li a strong{
                font-size: 1rem;
            }
            .info_wrap ul.info_box li a p{
                font-size:0.8rem;
                line-height: 1.2rem;
            }
            .info_wrap ul.info_box li a span{
                margin-top: 6%;
            }

        }

        /* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
        @media all and (max-width:767px){
            .section5{
                padding-bottom: 0;
            }
            .section5 h2{
                font-size: 1.5rem;
                width: 75%;
            }
            .info_wrap{
                width: 75%;
                height: 52em;
                margin: 5% auto;
            }
            .info_wrap ul.info_box li{
                width: 100%;
                height: auto;
                margin-bottom: 5%;
            }
            .info_wrap ul.info_box li a p{
                display: none;
            }
        }







        /* tool_link */
        .section6{
            width: 100%;
            padding-bottom: 4rem;
            padding-top: 2rem;
            background-color: #f7f7f7;
            position: relative;
        }
        .section6 h2{
            text-align: left;
            width: 70%;
            padding-top:80px;
            margin: 0 auto;
            font-size: 1.75rem;
            line-height: 2.25rem;
            font-weight: normal;
        }
        .section6 ul.tool_link{
            width: 70%;
            display: flex;
            flex-wrap: wrap;
            margin: 30px auto;
        }
        .section6 ul.tool_link li{
            width: 23%;
            height: auto;
            background-color: #fff;
            margin-left: 2%;
            border: 0.0625rem solid #eee;
            border-radius: 0.5rem;
            margin-bottom: 2%;
        }
        .section6 ul.tool_link li:first-child{
            margin-left: 0;
        }
        .section6 ul.tool_link li:nth-child(5n){
            margin-left: 0;
        }
        .section6 ul.tool_link li a{
            display: block;
            padding: 4%;
        }
        .section6 ul.tool_link li .inner_img{
            width: 100%;
        }
        .section6 ul.tool_link li .inner_img img{
            width: 100%;
        }
        .section6 ul.tool_link li .inner_txt h3{
            margin-bottom: 5%;
            font-size: 1.125rem;
            line-height: 1.5rem;
            color: #3c4043;
            display: inline-block;
            font-weight: normal;
        }
        .section6 ul.tool_link li .inner_txt p{
            display: block;
            font-size: .875rem;
            letter-spacing: .00563rem;
            line-height: 1.25rem;
            padding-bottom: 10px;
            text-align: left;
            margin: 0.5rem 0;
            width: 100%;
            color: #3c4043;
        }
        .section6 .main_btn4{
            position: absolute;
            bottom: -8%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 80px;
            height: 40px;
            float: right;
            border: 0;
            border-radius: 5px;
            background-color: rgb(39, 75, 235);
            color: #fff;
            font-size: 14px;
            cursor: pointer;
        }

        @media all and (min-width:768px) and (max-width:1023px){
            .section6{
                padding-bottom: 6rem;
            }
            .section6 h2{
                padding-top: 2rem;
            }
            .section6 ul.tool_link{
                width: 70%;
                display: flex;
                margin: 30px auto;
                flex-wrap: wrap;
            }
            .section6 ul.tool_link li{
                width: 46%;
                background-color: #fff;
                margin-left: 3%;
                margin-bottom: 3%;
                border: 0.0625rem solid #eee;
                border-radius: 0.5rem;
            }
            .section6 ul.tool_link li:first-child{
                margin-left: 3%;
            }
            .section6 ul.tool_link li:nth-child(5n){
                margin-left: 3%;
            }
            .section6 .main_btn4{
                position: absolute;
                bottom: -7%;
                left: 50%;
                transform: translate(-50%,-50%);
            }
        }

        /* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
        @media all and (max-width:767px){
            .section6{
                padding-bottom: 6rem;
            }
            .section6 .container{
                width: 75%;
            }
            .section6 h2{
                width: 100%;
                padding-top: 2rem;
                font-size: 1.5rem;
            }
            .section6 ul.tool_link{
                display: inline;
            }
            .section6 ul.tool_link li{
                width: 100%;
                margin: 5% 0;
                display: flex;
            }
            .section6 ul.tool_link li .inner_img{
                width: 46%;
                float: left;
                padding-right: 2%;
                padding-top: 2%;
            }
            .section6 ul.tool_link li .inner_txt{
                width: 50%;
                float: right;
            }
            .section6 ul.tool_link li .inner_txt h3{
                font-size: 1rem;
                margin-bottom: 0;
            }
            .section6 ul.tool_link li .inner_txt p{
                font-size: 0.7rem;
                padding-bottom: 0;
                margin: 0.2rem 0;
            }
            .section6 .main_btn4{
                position: absolute;
                bottom: -7%;
                left: 50%;
                transform: translate(-50%,-50%);
            }
        }

    </style>
</head>
<body>
<div class="section5">
    <div class="container">
        <h2>필독 정보 모음</h2>
        <div class="info_wrap">
            <ul class="info_box">
                <li>
                    <a href="/marketInfo/calendar">
                        <strong>2022년 마케팅 달력</strong>
                        <p>2022년 주목할 이슈를 미리 파악하는 발 빠른 마케터가 되어보세요.</p>
                        <span>바로가기</span>
                    </a>
                </li>
<%--                <li>--%>
<%--                    <a href="/sub/c3_sub1.html">--%>
<%--                        <strong>최신 마케팅 소식 모아보기</strong>--%>
<%--                        <p>새로운 도구, 전문가의 견해, 활용 가능한 분석 정보를 통해 효과적인 마케팅 운영 및 관련 아이디어를 얻어보세요.</p>--%>
<%--                        <span>바로가기</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="/sub/c3_sub3.html">--%>
<%--                        <strong>마케팅 상품 모아보기</strong>--%>
<%--                        <p>다양한 마케팅 상품을 한자리에서 확인하고 비교하여 집행해보세요.</p>--%>
<%--                        <span>바로가기</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="/sub/c3_sub4.html">--%>
<%--                        <strong>연매출 10억 달성 아카데미 모아보기</strong>--%>
<%--                        <p>혼자서는 어려웠던 마케팅 노하우를 얻어가세요</p>--%>
<%--                        <span>바로가기</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="/sub/c3_sub5.html">--%>
<%--                        <strong>e커머스 필수 프로그램 모아보기</strong>--%>
<%--                        <p>e커머스 사업에 꼭 필요한 핵심 TOOL을 모아두었습니다.</p>--%>
<%--                        <span>바로가기</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="/sub/c3_sub6.html">--%>
<%--                        <strong>정부지원사업정보 모아보기</strong>--%>
<%--                        <p>다양한 정부 지원사업 정보를 한자리에서 확인해 혜택 꼭 챙겨가세요.</p>--%>
<%--                        <span>바로가기</span>--%>
<%--                    </a>--%>
<%--                </li>--%>
            </ul><!-- //.info_box -->
        </div><!-- //.info_wrap -->
    </div><!-- //.container -->
</div><!-- //.section5 -->



<div class="section6">
    <div class="container">
        <h2>마케터를 위한 도구</h2>
        <ul class="tool_link">
            <li>
                <a href="https://datalab.naver.com/" target="_blank">
                    <div class="inner_img">
                        <img src="/img/datalab.png" alt="img3">
                    </div>
                    <div class="inner_txt">
                        <h3>네이버 데이터랩</h3>
                        <p>네이버 쇼핑 분야별 클릭 추이와 분야별 검색어 현황을 확인할 수 있습니다.</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://manage.searchad.naver.com/customers/2067087/tool/keyword-planner" target="_blank">
                    <div class="inner_img">
                        <img src="/img/keyword.png" alt="img3">
                    </div>
                    <div class="inner_txt">
                        <h3>네이버 키워드 도구</h3>
                        <p>네이버 검색광고를 위한 키워드의 월간 검색수, 클릭수, 클릭률, 경쟁정도, 노출광고 수를 알수 있습니다.</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://searchadvisor.naver.com/" target="_blank">
                    <div class="inner_img">
                        <img src="/img/searchA.png" alt="img3">
                    </div>
                    <div class="inner_txt">
                        <h3>네이버 서치어드바이저</h3>
                        <p>여러분의 웹사이트를 성장시켜보세요. 가장 중요한 네이버 검색 노출에 최적화 시켜보세요.</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://analytics.naver.com" target="_blank">
                    <div class="inner_img">
                        <img src="/img/analytics.png" alt="analytics">
                    </div>
                    <div class="inner_txt">
                        <h3>네이버 어낼리틱스</h3>
                        <p>네이버가 제공하는 웹 분석 서비스입니다. 여러분의 사이트 방문자, 페이지, 유입경로 등 데이터를 제공합니다. </p>
                    </div>
                </a>
            </li>

            <li>
                <a href="https://trends.google.com/trends/?geo=KR" target="_blank">
                    <div class="inner_img">
                        <img src="/img/trends.png" alt="trends">
                    </div>
                    <div class="inner_txt">
                        <h3>Google Trends</h3>
                        <p>소비자의 검색 트렌드를 실시간으로 파악하고 경쟁력 있는 키워드를 추출할 수 있는 유용한 도구입니다. </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="http://richmediagallery.com/" target="_blank">
                    <div class="inner_img">
                        <img src="/img/rich.png" alt="rich">
                    </div>
                    <div class="inner_txt">
                        <h3>Rich Media Gallery</h3>
                        <p>혁신을 주도하는 광고주와 에이전시가 제작한 창의적인 크리에이티브를 통해 새로운 캠페인 아이디어를 얻어보세요. </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://marketfinder.thinkwithgoogle.com/intl/en/?_ga=2.170770473.848563184.1645171732-531551690.1641950603&_gac=1.237838772.1644382380.EAIaIQobChMIroqHv9Xx9QIVuNxMAh00mQZmEAAYASAAEgKcxfD_BwE" target="_blank">
                    <div class="inner_img">
                        <img src="/img/market.png" alt="market">
                    </div>
                    <div class="inner_txt">
                        <h3>Market Finder</h3>
                        <p>중소 규모 비즈니스가 글로벌 시장을 파악하고 마케팅 계획을 실행에 옮기는 데 필요한 데이터 및 고객 통계를 제공합니다. </p>
                    </div>
                </a>
            </li>
            <li>
                <a href="https://analytics.naver.com" target="_blank">
                    <div class="inner_img">
                        <img src="/img/test.png" alt="test">
                    </div>
                    <div class="inner_txt">
                        <h3>Test My Site</h3>
                        <p>모바일 사이트 속도를 동종 업계 사이트와 비교해보고, 속도를 개선할 수 있는 구체적인 방법을 알아볼 수 있습니다. </p>
                    </div>
                </a>
            </li>
        </ul><!-- //.tool_link -->
        <a href="/category5.html"><button class="main_btn4">더보기</button></a>
    </div><!-- //.container -->
</div><!-- //.section6 -->
</body>
</html>