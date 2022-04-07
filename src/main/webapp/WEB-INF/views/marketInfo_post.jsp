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
    <script charset="utf-8" src="//cdn.iframe.ly/embed.js?api_key=365087f3062adf2f129131"></script>
    <title>게시물-${post.title}</title>
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
            <article>${post.article}</article>
            <c:if test="${role == 'admin'}">
                <input type="button" onclick="location.href='/modifyPost?id=${id}'" value="수정"/>
                <input type="button" onclick="confirmDelete(${id})" value="삭제"/>
            </c:if>
        </div><!-- //.container -->
    <div class="hotnews">
        <div class="container">
            <h2>인기 게시물</h2>
            <ul class="hotcontent">
                <c:forEach items="${popularPostList}" var="post">
                    <li>
                        <a href="/marketInfo/post?id=${post.id}">
                            <ul class="content">
                                <li><img src="/image/${post.thumbnail}" onerror="this.src='${pageContext.request.contextPath}/img/info_default.jpg'" alt="img1"></li>
                                <li><p>${post.title}</p></li>
                            </ul><!-- //.content -->
                        </a>
                    </li>
                </c:forEach>
            </ul><!-- //.hotcontent -->
        </div><!-- //.container -->
    </div><!-- //.hotnews -->
</div><!-- //.c3_board1 -->
    <jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
    <script>
        function confirmDelete(id) {
            if (confirm("삭제 하시겠습니까?")) {
                location.href="/deletePost?id=" + id;
            } else {
                return
            }
        }
            document.querySelectorAll( 'oembed[url]').forEach( element => {
            iframely.load( element, element.attributes.url.value) ;
        } );

    </script>
</body>
</html>