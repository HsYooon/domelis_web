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
    <title>연매출 10억 달성 아카데미</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c3_sub1">
    <div class="container">
        <h2>연매출 10억 달성 아카데미 모아보기</h2>
        <p>새로운 도구, 전문가의 견해, 활용 가능한 분석 정보를 통해 효과적인 마케팅 운영 및 관련 아이디어를 얻어보세요.</p>
        <ul class="m_news">
            <li class="mn_1">
                <a href="/delivery/request">
                    <h3>Inside Google 마케팅:인플루언서 마케팅 효과, 어떻게 측정해야 할까 ?</h3>
                    <span>게시글 보기</span>
                </a>
            </li>
            <li>
                <a href="/delivery/request">
                    <h3>2021년의 마케팅 성과 측정: 마케팅 효과 이해하기</h3>
                    <p>소비자의 검색 트렌드를 실시간으로 파악하고 경쟁력 있는 키워드를 추출할 수 있는 유용한 도구입니다.</p>
                    <span>게시글 보기</span>
                </a>
            </li>
            <li>
                <a href="/delivery/request">
                    <h3>해외 수입구매 (대량구매/OEM/ODM) 대행</h3>
                    <p>소비자의 검색 트렌드를 실시간으로 파악하고 경쟁력 있는 키워드를 추출할 수 있는 유용한 도구입니다.</p>
                    <span>게시글 보기</span>
                </a>
            </li>
        </ul><!-- //.m_news -->
        <div class="c3s1_contents">
            <h3>최신 마케팅 전략</h3>
            <ul class="sitelist">
                <c:forEach items="${marketInfoPostList}" var="post">
                    <li>
                        <a href="/marketInfo/post?id=${post.id}">
                            <div class="inner_img">
                                <img src="/image/${post.thumbnail}" onerror="this.src='${pageContext.request.contextPath}/img/info_default.jpg'" alt="img3">
                            </div>
                            <div class="inner_txt">
                                <span>게시글</span>
                                <p>${post.title}</p>
                            </div><!-- //.inner_txt -->
                        </a>
                    </li>
                </c:forEach>
            </ul>
        </div><!-- //.c3s1_contents -->
        <div class="c3s1_list">
            <h3>인기 아카데미</h3>
            <ul class="list_wrap">
                <li>
                    <a href="#">
                        <ul class="list_inner">
                            <li>
                                <a href="#">
                                    <img src="/img/img1.jpg" alt="img">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <p>새로운 스트리밍의 시대, 시청률을 효과적으로 높이는 YouTube 활용법</p>
                                </a>
                            </li>
                        </ul><!-- //.list_inner -->
                    </a>
                </li>
                <li>
                    <a href="#">
                        <ul class="list_inner">
                            <li>
                                <a href="#">
                                    <img src="/img/img3.jpg" alt="img">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <p>새로운 스트리밍의 시대, 시청률을 효과적으로 높이는 YouTube 활용법</p>
                                </a>
                            </li>
                        </ul><!-- //.list_inner -->
                    </a>
                </li>
                <li>
                    <a href="#">
                        <ul class="list_inner">
                            <li>
                                <a href="#">
                                    <img src="/img/img6.jpg" alt="img">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <p>새로운 스트리밍의 시대, 시청률을 효과적으로 높이는 YouTube 활용법</p>
                                </a>
                            </li>
                        </ul><!-- //.list_inner -->
                    </a>
                </li>
                <li>
                    <a href="#">
                        <ul class="list_inner">
                            <li>
                                <a href="#">
                                    <img src="/img/img5.jpg" alt="img">
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <p>새로운 스트리밍의 시대, 시청률을 효과적으로 높이는 YouTube 활용법</p>
                                </a>
                            </li>
                        </ul><!-- //.list_inner -->
                    </a>
                </li>
            </ul><!-- //.list_wrap -->
        </div><!-- //.c3s1_list -->
    </div><!-- //.container -->
</div><!-- //.c3_sub1 -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>
