<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="referrer" content="no-referrer"/>
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <script src="${pageContext.request.contextPath}js/script.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-1.4.4.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/favicon.png" sizes="192x192"/>
    <title>도매/위탁판매 사이트 모음 - Think With Domaelist.com </title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<main class="contents">
    <div class="section1">
                <div class="container">
                <h2>Solve e-commerce in one shot.
                </h2>
                <p class="p1">Think with Domaelist.com과 함께 더욱 업그레이드된 e커머스 사업을 펼쳐보세요.</p>
                    <div class="section1_bt">
                        <!-- <div class="mo_top">
                            <img src="./img/main.jpg" alt="moimg">
                        </div> -->
                        <div class="bt_left">
                            <div class="txt_box1">
                                <span>도매/위탁판매 사이트 모음</span>
                                <h3>Think With Domaelist.com</h3>
                                <p>매출상승으로 가는 지름길!<br>
                                    국내 인기 B2B 도매&위탁판매 사이트 순위, 리스트, 정보 모음까지!<br>
                                    TOP10 및 장단점을 총 정리했습니다. 도매리스트닷컴에서 지금 시작하세요.<br>
                                    당신이 원하는 상품부터 광고까지  모든 정보를 한자리에서 해결해보세요!

                                </p>
                            </div><!-- //.txt_box -->
                        </div><!-- //.bt_left -->
                        <!--<div class="bt_right">
                            <a  href="#">
                                <img src="./img/main.jpg" alt="img2">
                            </a>
                        </div> //.bt_right -->
                    </div><!-- //.section1_bt -->
                </div><!-- //.container -->
            </div><!-- section1 -->
    <div class="section2">
        <h2>도매 사이트 카테고리별 모음</h2>
        <div class="container">
            <div class="section_wrap">
                <ul class="box_wrap">
                  <li>
                     <a href="/siteinfo?cd=01">
                      <div class="inner_img">
                       <img src="img/category/c_img11.png" alt="img3">
                       </div>
                      <div class="inner_txt">
                        <h3>종합</h3>
                         <p>바로가기</p>
                         </div><!-- //.inner_txt -->
                               </a>
                    </li>
                    <li>
                        <a href="/siteinfo?cd=02">
                            <div class="inner_img">
                                <img src="img/category/c_img1.png" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>생활</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/siteinfo?cd=04">
                            <div class="inner_img">
                                <img src="img/category/c_img2.png" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>식품</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/siteinfo?cd=06">
                            <div class="inner_img">
                                <img src="img/category/c_img3.png" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>자동차</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/siteinfo?cd=09">
                            <div class="inner_img">
                                <img src="img/category/c_img4.png" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>디지털/가전</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/siteinfo?cd=03">
                            <div class="inner_img">
                                <img src="img/category/c_img5.png" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>인테리어/소품</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/siteinfo?cd=11">
                            <div class="inner_img">
                                <img src="img/category/c_img6.png" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>의류</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/siteinfo?cd=12">
                            <div class="inner_img">
                                <img src="img/category/c_img7.png" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>신발/잡화</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/siteinfo?cd=10">
                            <div class="inner_img">
                                <img src="img/category/c_img8.png" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>아동/완구</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                     <li>
                       <a href="/siteinfo?cd=08">
                        <div class="inner_img">
                         <img src="img/category/c_img9.png" alt="img3">
                         </div>
                        <div class="inner_txt">
                          <h3>반려/애완</h3>
                           <p>바로가기</p>
                           </div><!-- //.inner_txt -->
                                 </a>
                      </li>
                       <li>
                         <a href="/siteinfo?cd=05">
                          <div class="inner_img">
                           <img src="img/category/c_img10.png" alt="img3">
                           </div>
                          <div class="inner_txt">
                            <h3>헬스케어/뷰티</h3>
                             <p>바로가기</p>
                             </div><!-- //.inner_txt -->
                                   </a>
                        </li>
                            <li>
                                 <a href="/siteinfo?cd=01">
                                  <div class="inner_img">
                                   <img src="img/category/c_img12.png" alt="img3">
                                   </div>
                                  <div class="inner_txt">
                                    <h3>더보기</h3>
                                     <p>바로가기</p>
                                     </div><!-- //.inner_txt -->
                                           </a>
                                </li>

                </ul><!-- //.box_wrap -->
            </div><!-- //.section_wrap -->
        </div><!-- //.container -->
    </div><!-- //.section2 -->
    <div class="section3">
        <h2>오늘의 도매 신규 상품</h2>
        <div class="container">
            <div class="section_wrap">
                <a href="${pageContext.request.contextPath}/product/new" class="main_btn2_wrap"><button class="main_btn2">더보기</button></a>
                <ul class="box_wrap">
                    <c:forEach items="${todayProductList}" var="tProduct">
                        <li>
                            <a href="${tProduct.url}">
                                <div class="inner_img">
                                    <img src="${tProduct.img}" onerror="this.src='${pageContext.request.contextPath}/img/site/blankimg.png'" alt="img3">
                                </div>
                                <div class="inner_txt">
                                    <h3>${tProduct.title}</h3>
                                    <h4>${tProduct.name}</h4>
                                    <p>클릭 시 해당 도매몰로 이동합니다</p>
                                </div><!-- //.inner_txt -->
                            </a>
                        </li>
                    </c:forEach>
                </ul><!-- //.box_wrap -->
            </div><!-- //.section_wrap -->
        </div><!-- //.container -->
    </div><!-- //.section3 -->
    <div class="section4">
        <h2>오늘의 도매 베스트 상품</h2>
        <div class="container">
            <div class="section_wrap">
                <a href="${pageContext.request.contextPath}/product/best" class="main_btn2_wrap"><button class="main_btn2">더보기</button></a>
                <ul class="box_wrap">
                    <c:forEach items="${bestProductList}" var="tProduct">
                        <li>
                            <a href="${tProduct.url}">
                                <div class="inner_img">
                                    <img src="${tProduct.img}" onerror="this.src='${pageContext.request.contextPath}/img/site/blankimg.png'" alt="img3">
                                </div>
                                <div class="inner_txt">
                                    <h3>${tProduct.title}</h3>
                                    <h4>${tProduct.name}</h4>
                                    <p>클릭 시 해당 도매몰로 이동합니다</p>
                                </div><!-- //.inner_txt -->
                            </a>
                        </li>
                    </c:forEach>
                </ul><!-- //.box_wrap -->
            </div><!-- //.section_wrap -->
        </div><!-- //.container -->
    </div><!-- //.section4 -->
    <jsp:include page="info.jsp" flush="true"/>
</main>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>