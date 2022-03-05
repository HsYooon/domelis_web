<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="referrer" content="no-referrer"/>
    <script src="${pageContext.request.contextPath}/js/loadHTML.js" type="text/javascript"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/category.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sub.css" type="text/css">
    <link rel="icon" type="image/png" href="/img/favicon.png" sizes="192x192">
    <title>마케팅달력</title>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="c3_sub2">
    <div class="container">
        <h2>마케팅 달력</h2>
        <div class="box">
            <iframe src="https://calendar.google.com/calendar/embed?height=750&wkst=2&bgcolor=%23ffffff&ctz=Asia%2FSeoul&showTitle=1&showNav=1&showTabs=1&title=2022%EB%85%84%20%EB%A7%88%EC%BC%80%ED%8C%85%20%EB%8B%AC%EB%A0%A5&src=aWw4aHZrNjB1ZWZ2aHA1aWN0ZnFhYm9mdm9AZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&src=a28uc291dGhfa29yZWEjaG9saWRheUBncm91cC52LmNhbGVuZGFyLmdvb2dsZS5jb20&color=%238E24AA&color=%230B8043" style="border:solid 1px #777" width="100%" height="750" frameborder="0" scrolling="no"></iframe>
        </div><!-- //.box -->
    </div><!-- //.container -->
</div><!-- //.c3_sub2 -->
<jsp:include page="info.jsp" flush="true"/>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>