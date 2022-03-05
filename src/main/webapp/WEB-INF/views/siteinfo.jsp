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
    <title>생활</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>

<div class="c1_sub">
    <div class="container">
        <div class="c1_list">
            <h2>${title}</h2>
            <p>사이트 모아보기 ▼</p>
            <ul class="sitelist">
                <c:forEach items="${siteInfoList}" var="item">
                    <li>
                        <a href="${item.url}" target="_blank">
                            <div class="inner_img">
                                <img src="${item.img}" alt="img3">
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