<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/category.css" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sub.css" type="text/css">
    <link rel="icon" type="image/png" href="/img/favicon.png" sizes="192x192">
    <title>마케팅 상품</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c3_sub3">
    <div class="container">
        <h2>마케팅 상품 모음</h2>
        <p>새로운 도구, 전문가의 견해, 활용 가능한 분석 정보를 통해 효과적인 마케팅 운영 및 관련 아이디어를 얻어보세요.</p>
        <ul class="sitelist">
            <c:forEach items="${marketInfoPostList}" var="post">
                <li>
                    <a href="/marketInfo/post?id=${post.id}">
                        <div class="inner_img">
                            <img src="/image/${post.thumbnail}" onerror="this.src='${pageContext.request.contextPath}/img/info_default.png'" alt="img3">
                        </div>
                        <div class="inner_txt">
                            <p>${post.title}</p>
                        </div><!-- //.inner_txt -->
                    </a>
                </li>
            </c:forEach>
        </ul><!-- //.sitelist -->
    </div><!-- //.container -->
</div><!--//.c3_sub3  -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>
