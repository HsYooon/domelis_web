<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="referrer" content="no-referrer"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sub.css" type="text/css">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/favicon.png" sizes="192x192">
    <title>해외 수입구매 대행</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>

<div class="c4_sub1">
    <div class="container">
        <h2>${title}</h2>
        <p class="p1">${desc}</p>
        <c:choose>
            <c:when test="${code == 'abroad'}">
                <a href="/delivery/request" class="formclick_wrap">
                    <div class="formclick">
                        <h3>해외 수입구매 (대량구매/OEM/ODM) 대행</h3>
                        <p>해외 수입구매 대행 업체 정보를 한자리에 모았습니다. 비지니스 성장을 위한 인사이트를 얻을 수 있는지 살펴 보세요.</p>
                        <a href="/delivery/request" class="span_a">
                            <ul class="icon_txt">
                                <li><img src="/img/c4_img.png" alt="icon"></li>
                                <li><p>무료 견적 받기</p></li>
                            </ul>
                        </a>
                    </div>
                </a>
            </c:when>
            <c:when test="${code == 'domestic'}">
                <a href="/delivery/request" class="formclick_wrap">
                    <div class="formclick">
                        <h3>3PL/물류/택배 대행</h3>
                        <p>3PL 물류/택배 대행 업체 정보를 한자리에 모았습니다. 비지니스 성장을 위한 인사이트를 얻을 수 있는지 살펴 보세요.</p>
                        <a href="/delivery/request" class="span_a">
                            <ul class="icon_txt">
                                <li><img src="/img/c4_img.png" alt="icon"></li>
                                <li><p>무료 견적 받기</p></li>
                            </ul>
                        </a>
                    </div>
                </a>
            </c:when>
        </c:choose>
        <div class="bestsite">
            <ul class="sitelist">
                <c:forEach items="${deliveryList}" var="item">
                    <li>
                        <a href="${item.url}">
                            <div class="inner_img">
                                <img src="${item.img}" onerror="this.src='${pageContext.request.contextPath}/img/delivery_default.jpg'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <span>${item.description}</span>
                                <p>${item.name}</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.sitelist -->
        </div><!-- //.bestsite -->
    </div><!-- //.container -->
</div><!-- //.c4_sub1 -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>