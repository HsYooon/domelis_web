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
    <title>정부지원 사업정보</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c3_sub6">
    <div class="container">
        <h2>정부 지원 사업 정보 모음</h2>
        <p>새로운 도구, 전문가의 견해, 활용 가능한 분석 정보를 통해 효과적인 마케팅 운영 및 관련 아이디어를 얻어보세요.</p>
        <ul class="m_news">
            <c:forEach items="${recentPostList}" var="post" varStatus="num">
                <c:choose>
                    <c:when test="${num.index == 0}">
                        <li class="mn_1">
                            <img src="/image/${post.thumbnail}" onerror="this.src='${pageContext.request.contextPath}/img/info_default.jpg'" />
                            <a href="/marketInfo/post?id=${post.id}">
                                <h3>${post.title}</h3>
                                <span>게시글 보기</span>
                            </a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li>
                            <a href="/marketInfo/post?id=${post.id}">
                                <h3>${post.title}</h3>
                                <p>최신 마케팅 소식을 놓치지 마세요</p>
                                <span>게시글 보기</span>
                            </a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </ul><!-- //.m_news -->
        <div class="c3s1_contents">
            <h3>최신 정보 모음</h3>
            <ul class="list_wrap">
                <c:forEach items="${marketInfoPostList}" var="post">
                    <li>
                        <a href="/marketInfo/post?id=${post.id}">
                            <ul class="list_inner">
                                <li>
                                    <a href="/marketInfo/post?id=${post.id}">
                                        <img src="/image/${post.thumbnail}" onerror="this.src='${pageContext.request.contextPath}/img/info_default.jpg'" alt="img3">
                                    </a>
                                </li>
                                <li>
                                    <a href="/marketInfo/post?id=${post.id}">
                                        <p>${post.title}</p>
                                    </a>
                                </li>
                            </ul><!-- //.list_inner -->
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.list_wrap -->
        </div><!-- //.c3s1_list -->
    </div><!-- //.container -->
</div><!-- //.c3_sub4 -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>
