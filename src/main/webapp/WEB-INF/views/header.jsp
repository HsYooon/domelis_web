<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1708982640263259"
            crossorigin="anonymous"></script>
    <title>Document</title>
    <link rel="icon" type="image/png" href="img/favicon.png" sizes="192x192">
    <style>
        header{
            width: 100%;
            z-index: 2;
            border-bottom:0.0625rem solid #e0e0e0;
            box-shadow: 0 0.125rem 0.25rem rgb(226, 226, 226);
            min-height: 3.5rem;
            text-align: center;
        }
        header .container{
            display: flex;
            width: 90%;
        }
        header .logo{
            width: 10%
        }
        header .logo img{
            width: 100%;
            margin-top: 12px;
        }
        header nav{
            width: 90%;
            height: 80px;
            text-align: center;
            font-size: 1rem;
        }
        header nav .allmenu ul.depth1{
            display: flex;
        }
        header nav .allmenu ul.depth1 li{
            line-height: 5.25rem;
            width: 17%;
            height: 15%;
            position: relative;
        }
        header nav .allmenu ul.depth1 li:hover ul.depth2{display: block;}
        header nav .allmenu ul.depth2{
            width: 100%;
            position: absolute;
            left:0;
            top: 80px;
            z-index: 5;
            border:0.0625rem solid #e0e0e0;
            display: none;
        }
        header nav .allmenu ul.depth2 li{
            width: 100%;
            height: 50px;
            background-color: #fff;

        }
        header nav .allmenu ul.depth1 li input{
            width: 76%;
        }
        header nav .allmenu ul.depth2 li:hover{
            background-color: rgb(226, 226, 226);
        }
        header nav .allmenu ul.depth2 li a{
            display: block;
            font-size: 0.8rem;
            line-height: 50px;
        }
        .menu {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            max-width: 100%;
            transition: 0.5s ease;
            z-index: 1;
            background-color: #eee;
            display: none;
            width: auto;
        }
        .menu ul.mo_menu{
            width: 100%;
            padding-top: 20%;
            padding-left: 10%;
            z-index: 2;
            display: none;
        }
        .menu ul.mo_menu li{
            width: 100%;
            height: 50px;
            font-size: 1.125rem;
        }
        .burger-icon {
            cursor: pointer;
            display: none;
            position: absolute;
            z-index: 2;
            padding: 8px 0;
            top: 35px;
            left: 4%;
            user-select: none;
            width: auto;
            margin: 0;
        }

        .burger-icon .burger-sticks {
            background: #333;
            display: block;
            height: 2px;
            position: relative;
            transition: background .2s ease-out;
            width: 18px;
        }

        .burger-icon .burger-sticks:before,
        .burger-icon .burger-sticks:after {
            background: #333;
            content: '';
            display: block;
            height: 100%;
            position: absolute;
            transition: all .2s ease-out;
            width: 100%;
        }

        .burger-icon .burger-sticks:before {
            top: 5px;
        }

        .burger-icon .burger-sticks:after {
            top: -5px;
        }
        .burger-check {
            display: none;
        }

        .burger-check:checked~.menu {
            max-width: 200px;
            position: fixed;
        }

        .burger-check:checked~.burger-icon .burger-sticks {
            background: transparent;
        }

        .burger-check:checked~.burger-icon .burger-sticks:before {
            transform: rotate(-45deg);
        }

        .burger-check:checked~.burger-icon .burger-sticks:after {
            transform: rotate(45deg);
        }
        .burger-check:checked~.burger-icon:not(.steps) .burger-sticks:before,
        .burger-check:checked~.burger-icon:not(.steps) .burger-sticks:after {
            top: 0;
        }






        /* 테블릿 가로, 테블릿 세로 (해상도 768px ~ 1023px)*/
        @media all and (min-width:768px) and (max-width:1023px) {

            header .container{
                width: 100%;
            }
            header .logo{
                width: 28%;
                padding-left: 10%;
            }
            header .logo img{
                width: 100%;
                margin-top: 8%;
            }
            header nav .allmenu ul.depth1 li{
                display: none;
            }
            .menu{
                display: block;
            }
            .burger-icon{
                display: inline-block;
            }
        }

        /* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
        @media all and (max-width:767px) {
            header .container{
                width: 100%;
            }
            header .logo{
                width: 100%
            }
            header .logo img{
                width: 100%;
                margin-top: 8%;
            }

            header .modal nav.mo_nav .sidelogo img{
                width:88%;
            }
            header .modal nav.mo_nav ul.mo_menu li{
                font-size: 0.75rem;
            }
            header nav .allmenu ul.depth1 li{
                display: none;
            }
        }









    </style>
</head>
<body>
<header id="header">
    <div class="container">
        <input class="burger-check" type="checkbox" id="burger-check" /><label class="burger-icon" for="burger-check"><span class="burger-sticks"></span></label>
        <div class="menu">
            <ul class="mo_menu">
                <li><a href="/category1.html">도매사이트 모음</a></li>
                <li><a href="/category2.html">오늘의 도매상품</a></li>
                <li><a href="/category3.html">필독 정보 모음</a></li>
                <li><a href="/category4.html">대행 업체 정보 모음</a></li>
                <li><a href="/category5.html">마케터를 위한 도구</a></li>
            </ul>
        </div><!-- //.menu -->
    </div>
    <div class="container">
        <a href="/index.html" class="logo"><img src="/img/logo1.png" alt="logo"></a>
        <nav>
            <div class="allmenu">
                <ul class="depth1">
                    <li>
                        <a href="/category1.html">도매사이트 모음</a>
                        <ul class="depth2">
                            <li>
                                <a href="/category1.html">종합</a>
                            </li>
                            <li>
                                <a href="/sub/c1_sub1.html">생활</a>
                            </li>
                            <li>
                                <a href="/sub/c1_sub2.html">식품</a>
                            </li>
                            <li>
                                <a href="/sub/c1_sub3.html">자동차</a>
                            </li>
                            <li>
                                <a href="/sub/c1_sub4.html">디지털</a>
                            </li>
                            <li>
                                <a href="/sub/c1_sub5.html">가전</a>
                            </li>
                            <li>
                                <a href="/sub/c1_sub6.html">의류</a>
                            </li>
                            <li>
                                <a href="/sub/c1_sub7.html">신발</a>
                            </li>
                            <li>
                                <a href="/sub/c1_sub8.html">잡화</a>
                            </li>
                        </ul><!-- //depth2 -->
                    </li>
                    <li>
                        <a href="/product">오늘의 도매상품</a>
                        <ul class="depth2">
                            <li>
                                <a href="/product/new">신상품</a>
                            </li>
                            <li>
                                <a href="/product/best">베스트</a>
                            </li>
                        </ul><!-- //depth2 -->
                    </li>
                    <li>
                        <a href="/category3.html">필독 정보 모음</a>
                        <ul class="depth2">
                            <li>
                                <a href="/sub/c3_sub1.html">최신 마케팅 소식</a>
                            </li>
                            <li>
                                <a href="/sub/c3_sub2.html">2022년 마케팅 달력</a>
                            </li>
                            <li>
                                <a href="/sub/c3_sub3.html">마케팅 상품 모음</a>
                            </li>
                            <li>
                                <a href="/sub/c3_sub4.html">연매출 10억 달성 아카데미 모아보기</a>
                            </li>
                            <li>
                                <a href="/sub/c3_sub5.html">필수 프로그램 모음</a>
                            </li>
                            <li>
                                <a href="/sub/c3_sub6.html">정부지원사업정보 모음</a>
                            </li>
                        </ul><!-- //depth2 -->
                    </li>
                    <li>
                        <a href="/category4.html">대행 업체 정보 모음</a>
                        <ul class="depth2">
                            <li>
                                <a href="/sub/c4_sub1.html">해외수입대행</a>
                            </li>
                            <li>
                                <a href="/sub/c4_sub2.html">물류대행</a>
                            </li>
                        </ul><!-- //depth2 -->
                    </li>
                    <li>
                        <a href="/category5.html">마케터를 위한 도구</a>
                    </li>
                    <li>
                        <input type="search">
                    </li>
                </ul><!-- //.depth1 -->
            </div><!-- //.allmenu -->
        </nav>
    </div><!-- //.container -->
</header>
</body>
</html>