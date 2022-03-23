<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="referrer" content="no-referrer"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/category.css" type="text/css">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/favicon.png" sizes="192x192">
    <title>마케터를 위한 도구</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="category5">
    <div class="container">
        <h2>마케터를 위한 도구</h2>
        <p>Google 도구를 활용한여 소비자 동향과 유용한 정보를 살펴보고 당신의 디지털 마케팅 전략을 강화하세요.</p>
        <div class="box_wrap">
            <ul class="c5">
                <li>
                    <a href="https://datalab.naver.com/" target="_blank">
                        <h3>네이버 데이터랩</h3>
                        <p>네이버 쇼핑 분야별 클릭 추이와 분야별 검색어 현황을 확인할 수 있습니다.</p>
                        <img src="img/datalab.png" alt="datalab">
                    </a>
                </li>
                <li>
                    <a href="https://manage.searchad.naver.com/customers/2067087/tool/keyword-planner" target="_blank">
                        <h3>네이버 키워드 도구</h3>
                        <p>네이버 검색광고를 위한 키워드의 월간 검색수, 클릭수, 클릭률, 경쟁정도, 노출광고 수를 알수 있습니다.</p>
                        <img src="img/keyword.png" alt="keyword">
                    </a>
                </li>
                <li>
                    <a href="https://searchadvisor.naver.com/" target="_blank">
                        <h3>네이버 서치어드바이저</h3>
                        <p>여러분의 웹사이트를 성장시켜보세요. 가장 중요한 네이버 검색 노출에 최적화 시켜보세요.</p>
                        <img src="img/searchA.png" alt="search">
                    </a>
                </li>
                <li>
                    <a href="https://analytics.naver.com" target="_blank">
                        <h3>네이버 어낼리틱스</h3>
                        <p>네이버가 제공하는 웹 분석 서비스입니다. 여러분의 사이트 방문자, 페이지, 유입경로 등 데이터를 제공합니다. </p>
                        <img src="img/analytics.png" alt="analytics">
                    </a>
                </li>


                <li>
                    <a href="https://trends.google.com/trends/?geo=KR" target="_blank">
                        <h3>Google Trends</h3>
                        <p>소비자의 검색 트렌드를 실시간으로 파악하고 경쟁력 있는 키워드를 추출할 수 있는 유용한 도구입니다.</p>
                        <img src="img/trends.png" alt="g_analytics">
                    </a>
                </li>
                <li>
                    <a href="http://richmediagallery.com/" target="_blank">
                        <h3>Rich Media Gallery</h3>
                        <p>혁신을 주도하는 광고주와 에이전시가 제작한 창의적인 크리에이티브를 통해 새로운 캠페인 아이디어를 얻어보세요.</p>
                        <img src="img/rich.png" alt="g_analytics">
                    </a>
                </li>
                <li>
                    <a href="https://marketfinder.thinkwithgoogle.com/intl/en/?_ga=2.170770473.848563184.1645171732-531551690.1641950603&_gac=1.237838772.1644382380.EAIaIQobChMIroqHv9Xx9QIVuNxMAh00mQZmEAAYASAAEgKcxfD_BwE" target="_blank">
                        <h3>Market Finder</h3>
                        <p>중소 규모 비즈니스가 글로벌 시장을 파악하고 마케팅 계획을 실행에 옮기는 데 필요한 데이터 및 고객 통계를 제공합니다.</p>
                        <img src="img/market.png" alt="g_analytics">
                    </a>
                </li>
                <li>
                    <a href="https://www.thinkwithgoogle.com/intl/ko-kr/feature/testmysite/" target="_blank">
                        <h3>Test My Site</h3>
                        <p>모바일 사이트 속도를 동종 업계 사이트와 비교해보고, 속도를 개선할 수 있는 구체적인 방법을 알아볼 수 있습니다.</p>
                        <img src="img/test.png" alt="g_analytics">
                    </a>
                </li>
                <li>
                    <a href="https://marketingplatform.google.com/intl/ko/about" target="_blank">
                        <h3>구글 마케팅 플랫폼</h3>
                        <p>구글이 제공하는 스마트한 마케팅과 실적 개선을 위해 개발된 플랫폼입니다. 다양한 구글 마케팅 툴을 활용해보세요. </p>
                        <img src="img/marketing.png" alt="marketing">
                    </a>
                </li>
                <li>
                    <a href="https://marketingplatform.google.com/about/analytics/" target="_blank">
                        <h3>구글 어낼리틱스</h3>
                        <p>구글이 제공하는 웹 분석 서비스입니다. 여러분의 사이트 방문자, 페이지, 유입경로 분석해보세요.</p>
                        <img src="img/g_analytics.png" alt="g_analytics">
                    </a>
                </li>
            </ul><!-- //.c5 -->
        </div><!-- //.box_wrap -->
    </div><!-- //.container -->
</div><!-- //.category5 -->
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>