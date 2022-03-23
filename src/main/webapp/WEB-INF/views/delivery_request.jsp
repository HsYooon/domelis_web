<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="referrer" content="no-referrer"/>
    <script src="js/loadHTML.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/category.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/form.css"  type="text/css">
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/img/favicon.png" sizes="192x192">
    <title>비교 견적 받기</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c4_form">
    <div class="container">
        <!-- <form class="form1">
                <select class="selectbox">
                    <option value="선택">카테고리 선택</option>
                    <option value="해외수입대행">해외수입대행</option>
                    <option value="물류대행">물류대행</option>
                </select>
              <input class="un " type="text" placeholder="이름">lo
              <input class="pass" type="password"placeholder="이메일">
              <input class="tel" type="tel" placeholder="휴대폰 번호">
              <textarea class="textbox" type="text" placeholder="문의 내용을 입력해주세요"></textarea>
              <a class="submit">send</a>
              <p class="qnalink"><a href="#">1:1 문의하기</a></p>
            </form> -->
        <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSdFyr6jy-sZhffMI1mGwgY_vSVruHIIFYnoqgWxlZqnDhEp-A/viewform?embedded=true" width="1000" height="1000" frameborder="0" marginheight="0" marginwidth="0" scrolling="no">로드 중…</iframe>
    </div><!-- //.container -->
</div><!-- //.c4_form -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>