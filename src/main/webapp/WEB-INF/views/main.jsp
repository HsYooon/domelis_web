<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/script.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title>WVM</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<main class="contents">
    <div class="section1">
        <h2>위탁판매 도매 사이트 모음
            <br>
            WVM
        </h2>
        <div class="container">
            <div class="section1_bt">
                <div class="bt_left">
                    <div class="txt_box1">
                        <h3>Wholesale Category</h3>
                        <p>@도매사이트 카테고리별 모음</p>
                    </div><!-- //.txt_box -->
                    <div class="img_box">
                        <a href="#">
                            <img src="img/img1.jpg" alt="img1">
                        </a>
                    </div><!-- //.img_box -->
                </div><!-- //.bt_left -->
                <div class="bt_right">
                    <a  href="#">
                        <img src="img/img2.jpg" alt="img2">
                    </a>
                </div><!-- //.bt_right -->
            </div><!-- //.section1_bt -->
        </div><!-- //.container -->
    </div><!-- section1 -->
    <div class="section2">
        <h2>도매 사이트 모음</h2>
        <div class="container">
            <div class="section_wrap">
                <ul class="box_wrap">
                    <c:forEach items="${todayProductList}" var="tProduct">
                    <li>
                        <a href="${tProduct.url}">
                            <img src="${tProduct.img}" alt="img3">
                            <div class="inner_txt">
                                <strong>${tProduct.title}</strong>
                                <p>${tProduct.name}</p>
                                <p>회원 가입 후 가격확인</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    </c:forEach>
                </ul><!-- //.box_wrap -->
            </div><!-- //.section_wrap -->
        </div><!-- //.container -->
        <div class="container">
            <div class="section_wrap2">
                <ul class="box_wrap2">
                    <li>
                        <a href="#">
                            <img src="img/img1.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img2.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img4.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img7.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                </ul><!-- //.box_wrap2 -->
            </div><!-- //.section_wrap2 -->
        </div><!-- //.container -->
    </div><!-- //.section2 -->
    <div class="section3">
        <h2>오늘의 도매 상품</h2>
        <div class="container">
            <div class="section_wrap">
                <ul class="box_wrap">
                    <li>
                        <a href="#">
                            <img src="img/img3.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img4.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img5.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img6.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                </ul><!-- //.box_wrap -->
            </div><!-- //.section_wrap -->
        </div><!-- //.container -->
        <div class="container">
            <div class="section_wrap2">
                <ul class="box_wrap2">
                    <li>
                        <a href="#">
                            <img src="img/img1.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img2.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img4.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img src="img/img7.jpg" alt="img3">
                            <div class="inner_txt">
                                <strong>title</strong>
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                    Culpa saepe eaque, blanditiis sapiente dignissimos similique dolor,
                                    iste suscipit nihil, sint omnis expedita
                                    excepturi quas harum fuga ratione voluptas labore!</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                </ul><!-- //.box_wrap2 -->
            </div><!-- //.section_wrap2 -->
        </div><!-- //.container -->
    </div><!-- //.section3 -->
    <div class="section4">
        <div class="container">
            <h2>필독 정보 모음</h2>
            <div class="info_wrap">
                <ul class="info_box">
                    <li>
                        <a href="#">
                            <strong>title</strong>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <strong>title</strong>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <strong>title</strong>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <strong>title</strong>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                        </a>
                    </li>
                </ul><!-- //.info_box -->
            </div><!-- //.info_wrap -->
        </div><!-- //.container -->
        <div class="container">
            <div class="info_wrap2">
                <ul class="info_box2">
                    <li>
                        <a href="#">
                            <strong>title</strong>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <strong>title</strong>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <strong>title</strong>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <strong>title</strong>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                        </a>
                    </li>
                </ul><!-- //.info_box2 -->
            </div><!-- //.info_wrap2 -->
        </div><!-- //.container -->
    </div><!-- //.section4 -->
    <div class="section5">
        <div class="container">
            <h2>비교 견적 받기</h2>
            <div class="form_box">
                <ul class="form_txt">
                    <li>
                        <p>text</p>
                        <input type="text">
                    </li>
                    <li>
                        <p>text</p>
                        <input type="text">
                    </li>
                    <li>
                        <p>text</p>
                        <input type="text">
                    </li>
                </ul><!-- //.form_txt -->
                <input type="submit" class="submit">
            </div>
        </div><!-- //.container -->
    </div><!-- //.section5 -->
</main>
<footer id="footer" class="fixed-top">
    <script>loadHTML("footer.html");</script>
</footer>
</body>
</html>