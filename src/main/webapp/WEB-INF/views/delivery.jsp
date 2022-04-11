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
    <title>비교 견적 받기</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="category4">
    <div class="container">
        <h2>저렴하고 편리하게 비교 견적 받으세요</h2>
        <p>도매리스트닷컴과 제휴되어 있는 업체들를 통해 무료 비교 견적을 받으세요.
            <br>저렴한 비용으로 선택과 집중을 할수 있습니다. 당신의 e커머스 사업을 강화하세요.
        </p>
        <ul class="formlink">
            <li>
                <a href="${pageContext.request.contextPath}/delivery/request">
                    <h3>3PL/물류/택배 대행</h3>
                    <p>3PL 물류/택배 대행 업체 정보를 한자리에 모았습니다. 비지니스 성장을 위한 인사이트를 얻을 수 있는지 살펴 보세요.</p>
                </a>
                <a href="${pageContext.request.contextPath}/delivery/request" class="span_a">
                    <ul class="icon_txt">
                        <li><img src="${pageContext.request.contextPath}/img/c4_img.png" alt="icon"></li>
                        <li><p>무료 견적 받기</p></li>
                    </ul>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/delivery/request">
                    <h3>해외 수입구매 (대량구매/OEM/ODM) 대행</h3>
                    <p>해외 수입구매 대행 업체 정보를 한자리에 모았습니다. 비지니스 성장을 위한 인사이트를 얻을 수 있는지 살펴 보세요.</p>
                </a>
                <a href="${pageContext.request.contextPath}/delivery/request" class="span_a">
                    <ul class="icon_txt">
                        <li><img src="${pageContext.request.contextPath}img/c4_img.png" alt="icon"></li>
                        <li><p>무료 견적 받기</p></li>
                    </ul>
                </a>
            </li>
            <li>
                <a href="${pageContext.request.contextPath}/delivery/request">
                    <h3>광고 대행</h3>
                    <p>나에게 맞는 광고 상품과 이를 통해 같이 성장해 나갈 광고 대행사를 알아보세요.</p>
                </a>
                <a href="${pageContext.request.contextPath}/delivery/request" class="span_a">
                    <ul class="icon_txt">
                        <li><img src="./img/c4_img.png" alt="icon"></li>
                        <li><p>무료 견적 받기</p></li>
                    </ul>
                </a>
            </li>
        </ul><!-- //.formlink -->
        <div class="c4_contents">
            <h3>3PL/물류/택배 업체 정보 모음</h3>
            <a href="${pageContext.request.contextPath}/delivery/domestic" target="_blank" class="c4btn_wrap"><button class="c4btn">더보기</button></a>
            <ul class="sitelist">
                <c:forEach items="${domesticList}" var="item">
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
            </ul>
        </div><!-- //.c4_contents -->
        <div class="c4_contents">
            <h3>해외 수입/구매 (대량구매/OEM/ODM) 대행 업체 정보 모음</h3>
            <a href="${pageContext.request.contextPath}/delivery/abroad" target="_blank" class="c4btn_wrap"><button class="c4btn">더보기</button></a>
            <ul class="sitelist">
                    <c:forEach items="${abroadList}" var="item">
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
            </ul>
        </div><!-- //.c4_contents -->
        <div class="c4_contents">
            <h3>광고 대행 업체 정보 모음</h3>
            <a href="${pageContext.request.contextPath}/advertise" target="_blank" class="c4btn_wrap"><button class="c4btn">더보기</button></a>
            <ul class="sitelist">
                <c:forEach items="${advertiseList}" var="item">
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
            </ul>
        </div><!-- //.c4_contents -->
    </div><!-- //.container -->
</div><!-- //.category4 -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</body>
</html>