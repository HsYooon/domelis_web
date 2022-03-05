<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="referrer" content="no-referrer"/>
    <script src="${pageContext.request.contextPath}js/script.js" type="text/javascript"></script>
    <script src="https://code.jquery.com/jquery-1.4.4.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/category.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sub.css" type="text/css">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/favicon.png" sizes="192x192"/>
    <title>도매 필독 정보 모음</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="category3">
    <div class="c3_top">
        <div class="c3_section">
            <div class="container">
                <h2>MARKETING CALENDAR IN 2022</h2>
                <p class="p1">2022년 주목할 이슈를 미리 파악하는 발빠른 마케터가 되어보세요.</p>
                <div class="c3_section_bt">
                    <div class="bt_left">
                        <div class="txt_box1">
                            <span>2022 마케팅 달력</span>
                            <h3>빠르게 변화하는 트렌드에 적응하기 위한<br> 2022년 마케팅 달력</br></h3>
                            <p>코로나 19 이후 온라인 시장규모의 폭발적인 확대로 트렌드의 <br>
                                변화 속도도 빠르게 변화하고 있는 지금.
                                <br>
                                오프라인에서 온라인으로, 디지털화를 통해 1차원적인 마케팅에서 <br>다차원적인 마케팅으로 마케팅 기술도
                                진화하고 있는 가운데, <br>브랜드와 상품을 소비자들에게 좀 더 빠르고 강력하게 각인시켜줄 수 있는
                                <br>기술들을 2022년 최신 마케팅 소식, 마케팅 세미나, 자료 등을 도매리스트의<br>마케팅 달력에서 누구보다 빠르고, 한눈에 쉽게
                                알아보세요.
                            </p>
                        </div><!-- //.txt_box -->
                    </div><!-- //.bt_left -->
                    <div class="bt_right">
                        <a  href="${pageContext.request.contextPath}/sub/c3_sub1.html">
                            <img src="${pageContext.request.contextPath}/img/mainimg.png" alt="img2">
                        </a>
                    </div><!-- //.bt_right -->
                </div><!-- //.c3_section_bt -->

            </div><!-- //.container -->
        </div><!-- c3_section -->
    </div><!-- //.c3_top -->
    <div class="container">
        <h2>최신 마케팅 소식 </h2>
<%--        <a href="/sub/c3_sub1.html" class="c3btn_wrap"><button class="c3btn">더보기</button></a>--%>
        <ul class="sitelist">
            <c:forEach items="${marcketPostList}" var="post">
                <li>
                    <a href="/marketInfo/post?id=${post.id}">
                        <div class="inner_img">
                            <img src="/img/img3.jpg" alt="img3">
                        </div>
                        <div class="inner_txt">
                            <h3>${post.title}</h3>
                            <p>${post.reg_dttm}</p>
                        </div><!-- //.inner_txt -->
                    </a>
                </li>
            </c:forEach>
        </ul><!-- //.sitelist -->
    </div><!-- //.container -->
</div><!--//.category3  -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</footer>
</body>
</html>