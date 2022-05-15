<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="/js/loadHTML.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/sub.css" type="text/css">
    <link rel="icon" type="image/png" href="/img/favicon.png" sizes="192x192">
    <title>물류 대행</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c4_sub3">
    <div class="container">
        <h2>광고 대행 업체 정보 모음</h2>
        <p class="p1">나에게 맞는 광고 상품과 이를 통해 같이 성장해 나갈 광고 대행사를 알아보세요.</p>
        <a href="/delivery/request" class="formclick_wrap">
            <div class="formclick">
                <h3>광고 대행</h3>
                <p>나에게 맞는 광고 상품과 이를 통해 같이 성장해 나갈 광고 대행사를 알아보세요.</p>
                <a href="/delivery/request" class="span_a">
                    <ul class="icon_txt">
                        <li><img src="/img/c4_img.png" alt="icon"></li>
                        <li><p>무료 견적 받기</p></li>
                    </ul>
                </a>
            </div>
        </a>
        <div class="bestsite">
            <h3>검색 광고</h3>
            <ul class="sitelist">
                <c:forEach items="${searchList}" var="item">
                    <li>
                        <a href="${item.url}">
                            <div class="inner_img">
                                <img src="${item.img}" onerror="this.src='${pageContext.request.contextPath}/img/advertise_default.jpg'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <span>${item.description}</span>
                                <p>${item.name}</p>
                            </div>
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.sitelist -->
        </div><!-- //.bestsite -->
        <div class="bestsite">
            <h3>쇼핑 광고</h3>
            <ul class="sitelist">
                <c:forEach items="${shoppingList}" var="item">
                    <li>
                        <a href="${item.url}">
                            <div class="inner_img">
                                <img src="${item.img}" onerror="this.src='${pageContext.request.contextPath}/img/advertise_default.jpg'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <span>${item.description}</span>
                                <p>${item.name}</p>
                            </div>
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.sitelist -->
        </div><!-- //.bestsite -->
        <div class="bestsite">
            <h3>DA 광고</h3>
            <ul class="sitelist">
                <c:forEach items="${daList}" var="item">
                    <li>
                        <a href="${item.url}">
                            <div class="inner_img">
                                <img src="${item.img}" onerror="this.src='${pageContext.request.contextPath}/img/advertise_default.jpg'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <span>${item.description}</span>
                                <p>${item.name}</p>
                            </div>
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.sitelist -->
        </div><!-- //.bestsite -->

        <div class="bestsite">
            <h3>체험단&리뷰 대행</h3>
            <ul class="sitelist">
                <c:forEach items="${reviewList}" var="item">
                    <li>
                        <a href="${item.url}">
                            <div class="inner_img">
                                <img src="${item.img}" onerror="this.src='${pageContext.request.contextPath}/img/advertise_default.jpg'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <span>${item.description}</span>
                                <p>${item.name}</p>
                            </div>
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.sitelist -->
        </div><!-- //.bestsite -->
    </div><!-- //.container -->
</div><!-- //.c4_sub2 -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>