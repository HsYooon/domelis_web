<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/loadHTML.js" type="text/javascript"></script>
    <script src="js/script.js" type="text/javascript"></script>
    <title>Document</title>
    <style>
        header{
            width: 100%;
            height:80px;
            border-bottom: 1px solid #f1f1f1;
            text-align: center;
            line-height: 80px;
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
            margin-top: 8px;
        }
        header nav{
            width: 90%;
            height: 80px;
            text-align: center;
            font-size: 14px;
        }
        header nav .allmenu{

        }
        header nav .allmenu ul.depth1{
            display: flex;
        }
        header nav .allmenu ul.depth1 li{
            line-height: 80px;
            width: 15%;
            height: 15%;
            position: relative;
        }
        header nav .allmenu ul.depth1 li:hover ul.depth2 li{display: block;}
        header nav .allmenu ul.depth2{
            width: 100%;
            position: absolute;
            left:0;
            top: 80px;
            z-index: 5;

        }
        header nav .allmenu ul.depth2 li{
            width: 100%;
            background-color: rgb(226, 226, 226);
            display: none;
        }
        header nav .allmenu ul.depth2 li a{
            display: block;
            font-size: 12px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<header id="header">
    <div class="container">
        <a href="index.html" class="logo"><img src="./img/logo.png" alt="logo"></a>
        <nav>
            <div class="allmenu">
                <ul class="depth1">
                    <li>
                        <a href="category1.html">도매사이트 모음</a>
                        <ul class="depth2">
                            <li>
                                <a href="#">종합</a>
                            </li>
                            <li>
                                <a href="#">생활</a>
                            </li>
                            <li>
                                <a href="#">식품</a>
                            </li>
                            <li>
                                <a href="#">자동차</a>
                            </li>
                            <li>
                                <a href="#">디지털</a>
                            </li>
                            <li>
                                <a href="#">가전</a>
                            </li>
                            <li>
                                <a href="#">의류</a>
                            </li>
                            <li>
                                <a href="#">신발</a>
                            </li>
                            <li>
                                <a href="#">잡화</a>
                            </li>
                            <li>
                                <a href="#">판촉물</a>
                            </li>
                        </ul><!-- //depth2 -->
                    </li>
                    <li>
                        <a href="category2.html">오늘의 도매상품</a>
                        <ul class="depth2">
                            <li>
                                <a href="#">신상품</a>
                            </li>
                            <li>
                                <a href="#">베스트</a>
                            </li>
                            <li>
                                <a href="#">마진율 UP</a>
                            </li>
                        </ul><!-- //depth2 -->
                    </li>
                    <li>
                        <a href="#">오늘 가장 잘 팔리는 상품</a>
                    </li>
                    <li>
                        <a href="#">필독 정보 모음</a>
                        <ul class="depth2">
                            <li>
                                <a href="#">2022년 마케팅달력</a>
                            </li>
                            <li>
                                <a href="#">마케팅 상품 모음</a>
                            </li>
                            <li>
                                <a href="#">최신 마케팅 소식</a>
                            </li>
                            <li>
                                <a href="#">월 1억 달성 아카데미 모음</a>
                            </li>
                            <li>
                                <a href="#">필수 프로그램 모음</a>
                            </li>
                            <li>
                                <a href="#">정부지원사업정보 모음</a>
                            </li>
                        </ul><!-- //depth2 -->
                    </li>
                    <li>
                        <a href="#">비교 견적 받기</a>
                        <ul class="depth2">
                            <li>
                                <a href="#">해외수입대행</a>
                            </li>
                            <li>
                                <a href="#">물류대행</a>
                            </li>
                        </ul><!-- //depth2 -->
                    </li>
                    <li>
                        <a href="#">질문과 답변</a>
                    </li>
                    <li>
                        <input type="search">
                    </li>
                    <li>
                        <button id="login_btn">로그인
                            <script>loadHTML("login.html");</script>
                        </button>

                    </li>
                </ul><!-- //.depth1 -->
            </div><!-- //.allmenu -->
        </nav>
    </div><!-- //.container -->
</header>
</body>
</html>