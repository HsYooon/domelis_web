<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="css/sub.css" type="text/css">
    <link rel="icon" type="image/png" href="img/favicon.png" sizes="192x192">
    <title>오늘의 도매 신상품</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>

<div class="c2_sub">
    <div class="container">
        <h2>오늘의 도매 신규 상품</h2>
        <p>도매사이트의 신규 상품을 한자리에 모았습니다.<br>오늘 새롭게 올라온 상품을 확인하세요.</p>
        <div class="bestsite">
            <ul class="sitelist">
                <c:forEach items="${prdSubNewList}" var="tProduct">
                    <li>
                        <a href="${tProduct.url}">
                            <div class="inner_img">
                                <img src="${tProduct.img}" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>${tProduct.title}</h3>
                                <p>회원 가입 후 가격확인</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.sitelist -->
        </div><!-- //.bestsite -->
    </div><!-- //.container -->
</div><!-- //.c1_sub -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>