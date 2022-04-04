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
    <title>오늘의 베스트 상품</title>
    <style>
        .pagination {
            display: inline-block;
        }

        .pagination a {
            color: black;
            float: left;
            padding: 8px 16px;
            text-decoration: none;
        }

        .pagination a.active {
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
        }

        .pagination a:hover:not(.active) {
            background-color: #ddd;
            border-radius: 5px;
        }
    </style>
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
                                <img src="${tProduct.img}" onerror="this.src='${pageContext.request.contextPath}/img/site/blankimg.png'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>${tProduct.title}</h3>
                                <h4>${tProduct.name}</h4>
                                <p>클릭 시 해당 도매몰로 이동합니다<br>해당 도매몰 로그인 후 자세한 정보 확인이 가능합니다</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.sitelist -->
            <div class="pagination">
                <c:choose>
                    <c:when test="${nowPage/5 <= 1}">
                        <a href="#">&lt;</a>
                    </c:when>
                    <c:when test="${nowPage/5 > 1}">
                        <a href="/product/best?page=${startPage - 1}">&lt;</a>
                    </c:when>
                </c:choose>
                <c:forEach begin="${startPage}" end="${endPage}" var="page">
                    <c:choose>
                        <c:when test="${page == nowPage}">
                            <a href="#" class="active">${page }</a>
                        </c:when>
                        <c:when test="${page != nowPage}">
                            <a href="/product/best?page=${page}">${page}</a>
                        </c:when>
                    </c:choose>
                </c:forEach>
                <c:choose>
                    <c:when test="${nowPage/5 + 1 >= lastPage/5}">
                        <a href="#">&gt;</a>
                    </c:when>
                    <c:when test="${nowPage/5 + 1 < lastPage/5}">
                        <a href="/product/best?page=${endPage + 1}">&gt;</a>
                    </c:when>
                </c:choose>
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