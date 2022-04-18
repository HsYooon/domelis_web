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
        .nav_container{
            width: 100%;
        }
        nav.c_nav{
            width: 100%;
            padding-bottom: 2em;
        }
        ul.nav_wrap{
            width: 100%;
            display: flex;
        }
        ul.nav_wrap a{
            width: 100%;
            font-size: 0.8rem;
            text-align: center;
            color: rgb(46, 44, 44);
            margin: 0 0.5rem;
        }
        ul.nav_wrap li{
            height: 2rem;
            line-height: 2.4;
            border-radius: 15px;
            border: 2px solid rgb(131, 130, 130);
            cursor: pointer;
        }
        ul.nav_wrap li:hover{
            box-shadow: 1px 1px 1px 1px rgba(146, 143, 143, 0.349);
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
<div class="nav_container">
    <nav class="c_nav">
        <ul class="nav_wrap">
            <a href="/siteinfo?cd=01"><li>종합</li></a>
            <a href="/siteinfo?cd=02"><li>생활</li></a>
            <a href="/siteinfo?cd=04"><li>식품</li></a>
            <a href="/siteinfo?cd=06"><li>자동차</li></a>
            <a href="/siteinfo?cd=09"><li>디지털/가전</li></a>
            <a href="/siteinfo?cd=03"><li>인테리어/소품</li></a>
            <a href="/siteinfo?cd=11"><li>의류</li></a>
            <a href="/siteinfo?cd=12"><li>신발/잡화</li></a>
            <a href="/siteinfo?cd=10"><li>아동/완구</li></a>
            <a href="/siteinfo?cd=08"><li>반려/애완</li></a>
            <a href="/siteinfo?cd=05"><li>헬스케어/뷰티</li></a>
        </ul><!-- //.nav_wrap -->
    </nav><!-- //.c_nav -->
</div><!-- //.nav_container -->
</body>
</html>