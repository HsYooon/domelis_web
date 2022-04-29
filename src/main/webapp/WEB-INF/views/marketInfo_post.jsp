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
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/favicon.png" sizes="192x192">
    <title>게시물-${post.title}</title>
    <style>
        .c3_board1{
            width: 100%;
            background-color: #fff;
        }
        .c3_board1 .container{
            width: 70%;
            margin: 0 auto;
            padding: 2rem 0;
        }
        .c3_board1 h2{
            text-align: left;
            padding-top: 50px;
            font-weight: normal;
            font-size: 1.75rem;
        }
        .line{
            display: block;
            text-align: left;
            padding: 20px 0;
            border-bottom: 1px solid #dbd6d6;
        }
        .article{
            margin-top: 50px;
            margin-bottom: 50px;
        }
        .button_area{
            padding: 20px 20px 20px 20px;
            text-align: right;
        }
        .button{
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
        }

        .c3_board1 .hotnews{
            width: 100%;
            height: 400px;
            margin: 200px 0;
            background-color: #f7f7f7;
        }
        .c3_board1 .hotnews{
            width: 100%;
        }
        .c3_board1 .hotnews ul.hotcontent{
            width: 100%;
            display: flex;
            margin: 2rem 0;
            justify-content: space-between;
        }
        .c3_board1 .hotnews ul.hotcontent li{
            width: 30%;
        }
        .c3_board1 .hotnews ul.hotcontent li ul.content{
            width: 100%;
            height: 97%;
            float: left;
            background-color: #fff;
            box-shadow: 1px 2px 2px 0px rgba(129, 126, 126, 0.342);
            border-radius: 10px;
            transition: all 0.6s;
        }
        .c3_board1 .hotnews ul.hotcontent li ul.content:hover{
            transform: scale(1.1);
        }
        .c3_board1 .hotnews ul.hotcontent li ul.content li{
            width: 47%;
            float: left;
        }
        .c3_board1 .hotnews ul.hotcontent li ul.content li img{
            width: 75%;
            height: 70px;
            margin: 20px 10px;
            border-radius: 10px;
        }
        .c3_board1 .hotnews ul.hotcontent li ul.content li p{
            display: block;
            border-bottom: 0;
            font-size: 14px;
            line-height: 1.5;
            text-align: center;
            margin-top: 7%;
            padding-right: 10%;
            font-weight: 500;
        }

        @media all and (min-width:768px) and (max-width:1023px){
            .c3_board1 h2{
                font-size: 1.5rem;
            }
            .c3_board1 .hotnews ul.hotcontent li ul.content li img{
                width: 89%;
                margin: 33px auto;
            }
            .c3_board1 .hotnews ul.hotcontent li ul.content li p{
                font-weight: normal;
                font-size: 0.5rem;
                margin-top: 14%;
            }
            .c3_board1 .hotnews{
                margin: 2rem 0;
            }
        }
    </style>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c3_board1">
    <div class="container">
        <h2>${post.title}</h2>
        <p class="line">${post.writer} / ${post.reg_dttm}</p>
        <div id="article" class="article">${post.article}</div>
        <div class="button_area">
            <c:if test="${role == 'admin'}">
                <input type="button" class="button" onclick="location.href='/modifyPost?id=${id}'" value="수정"/>
                <input type="button" class="button" onclick="confirmDelete(${id})" value="삭제"/>
            </c:if>
        </div>
    </div><!-- //.container -->
    <div class="hotnews">
        <div class="container">
            <h2>인기 게시물</h2>
            <ul class="hotcontent">
                <c:forEach items="${popularPostList}" var="post">
                    <li>
                        <a href="/marketInfo/post?id=${post.id}">
                            <ul class="content">
                                <li><img src="/image/${post.thumbnail}" onerror="this.src='${pageContext.request.contextPath}/img/info_default.png'" alt="img1"></li>
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
    </script>
</body>
</html>