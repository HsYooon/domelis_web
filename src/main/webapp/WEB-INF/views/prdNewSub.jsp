<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="referrer" content="no-referrer"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sub.css" type="text/css">
    <link rel="icon" type="image/png" href="img/favicon.png" sizes="192x192">
    <title>오늘의 도매 신상품</title>
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
        <div class="btn_wrap">
            <ul class="btnul">
                <li><a href="/product/new"><button>All</button></a></li>
                <li><a href="/product/new?cd=01"><button>종합</button></a></li>
                <li><a href="/product/new?cd=02"><button>생활</button></a></li>
                <li><a href="/product/new?cd=04"><button>식품</button></a></li>
                <li><a href="/product/new?cd=06"><button>자동차</button></a></li>
<%--                <li><a href="/product/new?cd=09"><button>디지털/가전</button></a></li>--%>
                <li><a href="/product/new?cd=03"><button>인테리어/소품</button></a></li>
                <li><a href="/product/new?cd=11"><button>의류</button></a></li>
                <li><a href="/product/new?cd=12"><button>신발/잡화</button></a></li>
                <li><a href="/product/new?cd=10"><button>아동/완구</button></a></li>
                <li><a href="/product/new?cd=08"><button>반려/애완</button></a></li>
                <li><a href="/product/new?cd=05"><button>헬스케어/뷰티</button></a></li>
            </ul><!-- //.btnul -->
        </div><!-- //.btn_wrap -->
        <div class="bestsite">
            <ul class="sitelist">
                <c:forEach items="${prdSubList}" var="tProduct">
                    <li>
                        <a href="javascript:window.open('${tProduct.url}');" onclick="goOutLink('${tProduct.name}')" >
                            <div class="inner_img">
                                <img async src="${tProduct.img}" onerror="this.src='${pageContext.request.contextPath}/img/site/blankimg.png'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <h3>${tProduct.title}</h3>
                                <h4>${tProduct.name}</h4>
                                <p>클릭 시 해당 도매몰로 이동합니다</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.sitelist -->
            <div class="pagination">
                <c:set var="targetUrl" value="/product/new?"/>
                <c:if test="${cd != null}">
                    <c:set var="targetUrl" value="/product/new?cd=${cd}&"/>
                </c:if>

                <c:choose>
                    <c:when test="${nowPage/5 <= 1}">
                        <a href="#">&lt;</a>
                    </c:when>
                    <c:when test="${nowPage/5 > 1}">
                        <a href="${targetUrl}page=${startPage - 1}">&lt;</a>
                    </c:when>
                </c:choose>
                <c:forEach begin="${startPage}" end="${endPage}" var="page">
                    <c:choose>
                        <c:when test="${page == nowPage}">
                            <a href="#" class="active">${page }</a>
                        </c:when>
                        <c:when test="${page != nowPage}">
                            <a href="${targetUrl}page=${page}">${page}</a>
                        </c:when>
                    </c:choose>
                </c:forEach>
                <c:choose>
                    <c:when test="${nowPage/5 + 1 >= lastPage/5}">
                        <a href="#">&gt;</a>
                    </c:when>
                    <c:when test="${nowPage/5 + 1 < lastPage/5}">
                        <a href="${targetUrl}page=${endPage + 1}">&gt;</a>
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
<script>
    function goOutLink(name, url) {
        console.log(name);
        console.log(url);
        var xhr = new XMLHttpRequest();
        xhr.open('POST', '/productIncrCnt', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
        };
        xhr.send('name='+name);
    }
</script>
</html>