<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="referrer" content="no-referrer"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?a" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sub.css?a" type="text/css">
    <link rel="icon" type="image/png" href="img/favicon.png" sizes="192x192">
    <title>오늘의 베스트 상품</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>

<div class="c2_sub">
    <div class="container">
        <h2>${title}</h2>
        <p>${desc1}<br>${desc2}</p>
        <div class="bestsite">
            <ul class="sitelist">
                <c:forEach items="${prdSubList}" var="tProduct">
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
            <div>
                <c:if test="${nowPage != 1 }">
                <a href="/product/best?page=${nowPage - 1}">&lt;</a>
                </c:if>
                <c:forEach begin="1" end="${lastPage}" var="page">
                    <c:choose>
                        <c:when test="${page == nowPage}">
                            <b>${page }</b>
                        </c:when>
                        <c:when test="${page != nowPage}">
                            <a href="/product/best?page=${page}">${page}</a>
                        </c:when>
                    </c:choose>
                </c:forEach>
                <c:if test="${nowPage != lastPage }">
                    <a href="/product/best?page=${nowPage + 1}">&gt;</a>
                </c:if>
            </div>
        </div><!-- //.bestsite -->
    </div><!-- //.container -->
</div><!-- //.c1_sub -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>