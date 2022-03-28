<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>nav</title>
    <style>
        .container{
            width: 70%;
        }
        nav.c_nav{
            width: 100%;
            padding-bottom: 2em;
        }
        ul.nav_wrap{
            width: 100%;
            display: flex;
        }
        ul.nav_wrap li{
            width: 8%;
            height: 2rem;
            line-height: 1.8;
            margin: 0 0.3rem;
            border-radius: 15px;
            border: 2px solid rgb(131, 130, 130);
            cursor: pointer;
        }
        ul.nav_wrap li:hover{
            box-shadow: 1px 1px 1px 1px rgba(146, 143, 143, 0.349);
        }
        ul.nav_wrap li a{
            font-size: 0.7rem;
            text-align: center;
            color: rgb(46, 44, 44);
        }
        /* ul.nav_wrap li:nth-child(5){
            width: 9%;
        }
        ul.nav_wrap li:nth-child(6){
            width: 10%;
        }
        ul.nav_wrap li:nth-child(8){
            width: 7%;
        }
        ul.nav_wrap li:nth-child(9){
            width: 7%;
        }
        ul.nav_wrap li:nth-child(10){
            width: 7%;
        }
        ul.nav_wrap li:nth-child(11){
            width: 10%;
        }
         */
        /* 테블릿 가로, 테블릿 세로 (해상도 768px ~ 1023px)*/
        @media all and (min-width:768px) and (max-width:1023px){
            .c_nav{
                display: none;
            }
        }

        /* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
        @media all and (max-width:767px){
            .c_nav{
                display: none;
            }
        }

    </style>
</head>
<body>
    <div class="container">
        <nav class="c_nav">
            <ul class="nav_wrap">
                <li><a href="/siteinfo?cd=01">종합</a></li>
                <li><a href="/siteinfo?cd=02">생활</a></li>
                <li><a href="/siteinfo?cd=04">식품</a></li>
                <li><a href="/siteinfo?cd=06">자동차</a></li>
                <li><a href="/siteinfo?cd=09">디지털/가전</a></li>
                <li><a href="/siteinfo?cd=03">인테리어/소품</a></li>
                <li><a href="/siteinfo?cd=11">의류</a></li>
                <li><a href="/siteinfo?cd=12">신발/잡화</a></li>
                <li><a href="/siteinfo?cd=10">아동/완구</a></li>
                <li><a href="/siteinfo?cd=08">반려/애완</a></li>
                <li><a href="/siteinfo?cd=05">헬스케어/뷰티</a></li>
            </ul><!-- //.nav_wrap -->
        </nav><!-- //.c_nav -->
    </div><!-- //.container -->
</body>
</html>