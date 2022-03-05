<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/category.css" type="text/css">
    <style>
        footer .container{
            display: flex;
            width: 90%;
            margin: 1em auto;
            padding-bottom: 1em;
        }
        footer .ft_left{
            width: 10%;
        }
        footer .ft_left a img{
            margin-top: 1.5em;
        }
        footer .ft_right{
            width: 90%;
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
            padding-bottom: 2em;
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


        /* 테블릿 가로, 테블릿 세로 (해상도 768px ~ 1023px)*/
        @media all and (min-width:768px) and (max-width:1023px) {
            footer .container{
                display: flex;
                width: 100%;
            }
            footer .ft_right .ft_cs ul.cs li{
                padding-bottom: 0;
            }
            footer .ft_left{
                width: 18%;
                margin: 0 1em;
            }
            footer .ft_left a img{
                margin-top: 2.5em;
            }
            footer .ft_right{
                width: 77%;
                margin-top: 0;
            }
            footer .ft_right .ft_copy ul.copy{
                display: inline;
                width: 100%;
            }
            footer .ft_right .ft_copy ul.copy li{
                width: 45%;
                float: left;
            }
            footer .ft_right .ft_copy ul.copy li:nth-child(3n){
                flex-wrap: wrap;
            }
        }

        /* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
        @media all and (max-width:767px){
            footer .container{
                margin: 0 auto;
            }
            footer .ft_left{
                width: 40%;
                padding-top: 28%;
                margin-right: 1.5em;
            }
            footer .ft_right{
                margin-bottom: 2em;
            }
            footer .ft_right .ft_cs{
                height: 38%;
            }
            footer .ft_right .ft_cs ul.cs{
                height: 0;
                flex-wrap: wrap;
            }
            footer .ft_right .ft_cs ul.cs li{
                padding-bottom: 0;
            }
            footer .ft_right{
                width: 58%;
            }
            footer .ft_right .ft_copy ul.copy{
                flex-wrap: wrap;
                padding-bottom: 5%;
            }
        }
    </style>
</head>
<body>
<footer>
    <div class="container">
        <div class="ft_left">
            <a href="#"><img src="img/logo1.png" alt="logo"></a>
        </div><!-- //.ft_left -->
        <div class="ft_right">
            <div class="ft_cs">
                <ul class="cs">
                    <li>고객센터 : 070-8834-1001</li>
                    <li>운영시간 : 평일 09:30 ~ 18:30 (토,일 공휴일 휴무)</li>
                </ul><!-- //.cs -->
            </div><!-- //.ft_cs -->
            <div class="ft_copy">
                <ul class="copy">
                    <li>상호명 : (주)씨에스커머스</li>
                    <li>대표 : 김고은</li>
                    <li>사업자등록번호 : 357-81-00813</li>
                    <li>통신판매업신고번호 : 제2018-서울강남-00239호</li>
                    <li>주소 : 서울특별시 강남구 학동로 31길 12 (벤쳐캐슬빌딩) 7층 770호</li>
                    <li>개인정보보호책임자 : 홍광희</li>
                </ul><!-- //.copy -->
            </div><!-- //.ft_copy -->
        </div><!-- //.ft_right -->

    </div><!-- //.container -->
</footer>
</body>
</html>