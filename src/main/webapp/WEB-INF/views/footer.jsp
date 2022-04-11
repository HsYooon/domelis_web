<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <link rel="stylesheet" href="/css/category.css" type="text/css">
    <style>
        footer{
            width: 100%;
            height: 130px;
            background-color: #fff;
            text-align: center;
            margin: 0 auto;
        }
        footer .container{
            display: flex;
            width: 90%;
            margin: 2em auto;
            padding-top: 1em;
        }
        footer .ft_left{
            width: 20%;
        }
        footer .ft_left a img{
            margin-top: 1.5em;
        }
        footer .ft_right{
            width: 80%;
            margin-top: 10px;
        }
        footer .ft_right .ft_cs{
            width: 100%;
        }
        footer .ft_right .ft_cs ul.cs{
            display: flex;
        }
        footer .ft_right .ft_cs ul.cs li{
            font-size: 0.75rem;
            margin: 0 auto;
            line-height: 2;
            font-weight: bold;
            color: #000;
            padding-bottom: 1em;
        }
        footer .ft_right .ft_cs ul.cs li span{
            border: 1px solid #ddd;
            margin-left: 10px;
            font-size: 0.5rem;
        }
        footer .ft_right .ft_copy{
            width: 100%;
        }
        footer .ft_right .ft_copy ul.copy{
            display: flex;
        }
        footer .ft_right .ft_copy ul.copy li{
            font-size: 0.75rem;
            color: #000;
            margin: 0 auto;
            line-height: 2;
            font-weight: bold;
        }
        footer .ft_right .ft_copy ul.copy li span{
            border:1px solid #ddd;
            margin-left: 10px;
            font-size: 0.5rem;
            font-weight: lighter;
        }

        /* 테블릿 가로, 테블릿 세로 (해상도 768px ~ 1023px)*/
        @media all and (min-width:768px) and (max-width:1023px) {
            footer{
                height: 460px;
            }
            footer .container{
                display: inline;
                width: 100%;
            }
            footer .ft_right .ft_cs ul.cs{
                display: inline;
            }
            footer .ft_right .ft_cs ul.cs li{
                padding-bottom: 0;
                width: 100%;
            }
            footer .ft_left{
                width: 100%;
                margin: 2em 1em;
            }
            footer .ft_left a img{
                margin-top: 2em;
            }
            footer .ft_right{
                width: 100%;
                margin-top: 0;
            }
            footer .ft_right .ft_copy ul.copy{
                display: inline;
                width: 100%;
            }
            footer .ft_right .ft_copy ul.copy li{
                width: 100%;
                float: left;
            }
            footer .ft_right .ft_copy ul.copy li{
                flex-wrap: wrap;
            }
        }

        /* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
        @media all and (max-width:767px){
            footer{
                height: 350px;
            }
            footer .container{
                display: inline;
                margin: 1em auto;
            }
            footer .ft_left a img{
                margin-top: 0.5em;
            }
            footer .ft_left{
                width: 100%;
                padding-top: 10%;
                margin-right: 1em;
            }
            footer .ft_right{
                margin-bottom: 2em;
                width: 100%;
            }
            footer .ft_right .ft_cs{
                height: 38%;
            }
            footer .ft_right .ft_cs ul.cs{
                height: 0;
                display: inline;
                flex-wrap: wrap;
            }
            footer .ft_right .ft_cs ul.cs li{
                padding-bottom: 0;
            }
            footer .ft_right{
                width: 100%;
                margin-bottom: 15%;
            }
            footer .ft_right .ft_copy ul.copy{
                flex-wrap: wrap;
                display: inline;
            }
        }


    </style>
</head>
<body>
<footer>
    <div class="container">
        <div class="ft_left">
            <a href="#"><img src="/img/logo.png" alt="logo"></a>
        </div><!-- //.ft_left -->
        <div class="ft_right">
            <div class="ft_cs">
                <ul class="cs">
                    <li>고객센터 : 070-8834-1001<span></span></li>
                    <li>운영시간 : 평일 09:30 ~ 18:30 (토,일 공휴일 휴무)<span></span></li>
                    <li>서비스 제휴 문의 : mousy008@naver.com<span></span></li>
                    <li>상호명 : (주)씨에스커머스<span></span></li>
                    <li>대표 : 김고은<span></span></li>
                </ul><!-- //.cs -->
            </div><!-- //.ft_cs -->
            <div class="ft_copy">
                <ul class="copy">
                    <li>사업자등록번호 : 357-81-00813<span></span></li>
                    <li>통신판매업신고번호 : 제2018-서울강남-00239호<span></span></li>
                    <li>주소 : 서울특별시 강남구 학동로 31길 12 (벤쳐캐슬빌딩) 7층 770호<span></span></li>
                    <li>개인정보보호책임자 : <a onclick="location.href='/writePost'">홍광희</a><span></span></li>
                </ul><!-- //.copy -->
            </div><!-- //.ft_copy -->
        </div><!-- //.ft_right -->
    </div><!-- //.container -->
</footer>
</body>
</html>