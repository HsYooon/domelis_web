<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title>WVM</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<main class="contents">
    <div class="section1">
        <div class="container">
            <h2>위탁판매 도매 사이트 모음
                <br>
                WVM
            </h2>
            <p class="p1">Think with Google과 함께 더욱 업그레이드 된 마케팅을 펼쳐보세요.</p>
            <div class="section1_bt">
                <div class="bt_left">
                    <div class="txt_box1">
                        <span>@도매사이트 모음</span>
                        <h3>Wholesale Vertical Media</h3>
                        <p>위탁판매 도매사이트 Wholesale Vertical Media<br>
                            도매사이트를 한 번에 찾아보세요 !
                            <br>
                            2021년은 우리가 알던 기존의 세상이 완전히 뒤바뀌었다는 사실을 인정해야만 했던 한 해였습니다. Google은 수많은 검색 데이터를 분석하여 여러분이 2022년을 잘 준비할 수 있도록 '올해의 검색어 리포트 (Year in Search)'에 2021년을 대표한 5가지 주요 트렌드를 정리했습니다. 리포트를 통해 지난해를 돌아보며 앞으로 나아갈 힘과 영감을 얻어보세요.
                        </p>
                    </div><!-- //.txt_box -->
                </div><!-- //.bt_left -->
                <div class="bt_right">
                    <a href="#">
                        <img src="img/main.jpg" alt="img2">
                    </a>
                </div><!-- //.bt_right -->
            </div><!-- //.section1_bt -->
        </div><!-- //.container -->
    </div><!-- section1 -->
    <div class="section2">
        <h2>도매 사이트 카테고리별 모음</h2>
        <div class="container">
            <div class="section_wrap">
                <ul class="box_wrap">
                    <li>
                        <a href="/category?cd=01">
                            <div class="inner_img">
                                <img src="img/img3.jpg" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>생활</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/sub/c1_sub2.html">
                            <div class="inner_img">
                                <img src="img/img4.jpg" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>식품</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/sub/c1_sub3.html">
                            <div class="inner_img">
                                <img src="./img/img2.jpg" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>자동차</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/sub/c1_sub4.html">
                            <div class="inner_img">
                                <img src="./img/img1.jpg" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>디지털</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/sub/c1_sub5.html">
                            <div class="inner_img">
                                <img src="./img/img5.jpg" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>가전</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/sub/c1_sub6.html">
                            <div class="inner_img">
                                <img src="./img/img6.jpg" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>의류</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/sub/c1_sub7.html">
                            <div class="inner_img">
                                <img src="./img/img7.jpg" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>신발</h3>
                                <p>바로가기</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="/sub/c1_sub8.html">
                            <div class="inner_img">
                                <img src="./img/img2.jpg" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>잡화</h3>
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
                <ul class="box_wrap">
                    <c:forEach items="${todayProductList}" var="tProduct">
                        <li>
                            <a href="${tProduct.url}">
                                <div class="inner_img">
                                <img src="${tProduct.img}" alt="img3">
                                </div>
                                <div class="inner_txt">
                                    <h4>${tProduct.name}</h4>
                                    <h3>${tProduct.title}</h3>
                                    <p>회원가입 후 가격 확인</p>
                                </div><!-- //.inner_txt -->
                            </a>
                        </li>
                    </c:forEach>
                </ul><!-- //.box_wrap -->
            </div><!-- //.section_wrap -->
        </div><!-- //.container -->
        <a href="/sub/c2_sub1.html"><button class="main_btn2">더보기</button></a>
    </div><!-- //.section3 -->


    <div class="section4">
        <h2>오늘의 도매 베스트 상품</h2>
        <div class="container">
            <div class="section_wrap">
                <ul class="box_wrap">
                    <c:forEach items="${bestProductList}" var="tProduct">
                        <li>
                            <a href="${tProduct.url}">
                                <div class="inner_img">
                                    <img src="${tProduct.img}" alt="img3">
                                </div>
                                <div class="inner_txt">
                                    <h3>${tProduct.title}</h3>
                                    <h4>${tProduct.name}</h4>
                                    <p>회원가입 후 가격 확인</p>
                                </div><!-- //.inner_txt -->
                            </a>
                        </li>
                    </c:forEach>
                </ul><!-- //.box_wrap -->
            </div><!-- //.section_wrap -->
        </div><!-- //.container -->
        <a href="/sub/c2_sub2.html"><button class="main_btn3">더보기</button></a>
    </div><!-- //.section4 -->
    <jsp:include page="info.jsp" flush="true"/>
</main>
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>