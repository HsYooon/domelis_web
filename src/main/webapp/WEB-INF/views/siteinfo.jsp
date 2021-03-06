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
    <link rel="icon" type="image/png" href="img/favicon.png" sizes="192x192">
    <title>${title}</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>

<div class="c1_sub">
    <div class="container">
        <div class="c1_list">
            <h2>${title}</h2>
            <p>${title} 카테고리의 도매 사이트를 한자리에 모았습니다.<br>신규 및 인기 상품을 살펴보세요.</p>
            <jsp:include page="categorynav.jsp" flush="true"/>
            <div class="lank_txt">
                <h4>${title} 사이트 인기순위</h4>
                <ul class="sitelank">
                    <c:forEach items="${siteInfoListByCnt}" var="item" varStatus="status">
                        <c:if test="${status.index < 5}">
                            <li><a href="${item.url}" target="_blank">${status.index+1}. ${item.name}</a></li>
                        </c:if>
                    </c:forEach>
                </ul><!-- //.sitelank -->
                <ul class="sitelank">
                    <c:forEach items="${siteInfoListByCnt}" var="item" varStatus="status">
                        <c:if test="${status.index  > 4}">
                            <li><a href="${item.url}">${status.index+1}. ${item.name}</a></li>
                        </c:if>
                    </c:forEach>
                </ul>
            </div><!-- //.lank_txt -->
            <ul class="sitelist">
                <c:forEach items="${siteInfoList}" var="item">
                    <li>
                        <a href="${item.url}" target="_blank">
                            <div class="inner_img">
                                <img src="img/site/${item.img}" onerror="this.src='${pageContext.request.contextPath}/img/site/blankimg.png'" alt="">
                            </div>
                            <div class="inner_txt">
                                <h3>${item.name}</h3>
                                <p>${item.info}</p>
                            </div>
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div><!-- //.c1_list -->
    </div><!-- //.container -->
</div><!-- //.c1_sub -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>