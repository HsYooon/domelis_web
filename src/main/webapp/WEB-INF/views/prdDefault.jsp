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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sub.css" type="text/css">
    <link rel="icon" type="image/png" href="img/favicon.png" sizes="192x192">
    <title>검색 결과</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c2_sub">
    <div class="container">
        <h2>"${query}"검색 결과 총 ${cnt}건이 검색되었습니다</h2>
        <div class="bestsite">
            <ul class="sitelist">
                <c:forEach items="${searchList}" var="product">
                    <li>
                        <a href="${product.url}">
                            <div class="inner_img">
                                <img src="${product.img}" onerror="this.src='${pageContext.request.contextPath}/img/site/blankimg.png'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>${product.title}</h3>
                                <h4>${tProduct.name}</h4>
                                <p>클릭 시 해당 도매몰로 이동합니다<br>해당 도매몰 로그인 후 자세한 정보 확인이 가능합니다</p>
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