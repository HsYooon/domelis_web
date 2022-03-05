<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="referrer" content="no-referrer"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css?a" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css?a" type="text/css">
    <title>필독 정보 모음</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c3_board1">
    <div class="c3_board1">
        <div class="container">
            <h2>${post.title}</h2>
            <p>${post.writer} / ${post.reg_dttm}</p>
            ${post.article}
        </div><!-- //.container -->
    <div class="hotnews">
        <div class="container">
            <h2>인기 게시물</h2>
            <ul class="hotcontent">
                <li>
                    <a href="#">
                        <ul class="content">
                            <li><img src="/img/img2.jpg" alt="img1"></li>
                            <li><p>2021 Year in Search: 앞서나가는 마케팅을 위해 지난해를 돌아보세요</p></li>
                        </ul><!-- //.content -->
                    </a>
                </li>
                <li>
                    <a href="#">
                        <ul class="content">
                            <li><img src="/img/img3.jpg" alt="img1"></li>
                            <li><p>중장년층에 대한 마케터의 인식이 바뀌어야 하는 이유</p></li>
                        </ul><!-- //.content -->
                    </a>
                </li>
                <li>
                    <a href="#">
                        <ul class="content">
                            <li><img src="/img/img4.jpg" alt="img1"></li>
                            <li><p>코로나10가 근본적으로 변화시킨 4가지 소비 트렌드</p></li>
                        </ul><!-- //.content -->
                    </a>
                </li>
            </ul><!-- //.hotcontent -->
        </div><!-- //.container -->
    </div><!-- //.hotnews -->
</div><!-- //.c3_board1 -->
    <jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>