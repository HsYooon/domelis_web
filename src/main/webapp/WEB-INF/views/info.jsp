<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="/js/loadHTML.js" type="text/javascript"></script>
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/category.css" type="text/css">
    <style>
        /* section5 필독 정보 모음 */
        .section5{
            width: 100%;
            padding-bottom: 4rem;
            padding-top: 2rem;
            margin: 50px auto;
            background-color: #fff;
        }
        .section5 h2{
            text-align: left;
            width: 70%;
            margin: 0 auto;
            font-size: 1.75rem;
            line-height: 2.25rem;
            font-weight: normal;
        }
        .info_wrap{
            width: 70%;
            height: 400px;
            margin: 50px auto;
        }
        .info_wrap ul.info_box{
            width: 100%;
        }
        .info_wrap ul.info_box li{
            width: 23%;
            float: left;
            height: 180px;
            margin-right: 2%;
            margin-bottom: 2%;
            border: 0.0625rem solid #eee;
            border-radius: 0.5rem;
            box-shadow: 1px 3px 1px 0px rgba(211, 208, 208, 0.61);
        }
        .info_wrap ul.info_box li:nth-child(4n){
            margin-right: 0;
        }
        .info_wrap ul.info_box li a{
            display: block;
            margin-top: 10px;
            padding: 5% ;
        }
        .info_wrap ul.info_box li a strong{
            font-size: 1.125rem;
        }
        .info_wrap ul.info_box li a p{
            display: block;
            margin-top: 8px;
            font-size:0.9rem;
            line-height: 1.5rem;
        }
        .info_wrap ul.info_box li a span{
            display: block;
            font-size: 0.75em;
            text-align: left;
            color: rgb(148, 148, 148);
            margin-top: 10%;
        }


        /* tool_link */
        .section6{
            width: 100%;
            padding-bottom: 4rem;
            padding-top: 2rem;
            background-color: #f7f7f7;
            position: relative;
        }
        .section6 h2{
            text-align: left;
            width: 70%;
            padding-top:80px;
            margin: 0 auto;
            font-size: 1.75rem;
            line-height: 2.25rem;
            font-weight: normal;
        }
        .section6 ul.tool_link{
            width: 70%;
            display: flex;
            margin: 30px auto;
        }
        .section6 ul.tool_link li{
            width: 25%;
            height: auto;
            background-color: #fff;
            margin-left: 5%;
            border: 0.0625rem solid #eee;
            border-radius: 0.5rem;
        }
        .section6 ul.tool_link li:first-child{
            margin-left: 0;
        }
        .section6 ul.tool_link li a{
            display: block;
            padding: 4%;
        }
        .section6 ul.tool_link li .inner_img{
            width: 100%;
        }
        .section6 ul.tool_link li .inner_img img{
            width: 100%;
        }
        .section6 ul.tool_link li .inner_txt h3{
            margin-bottom: 5%;
            font-size: 1.125rem;
            line-height: 1.5rem;
            color: #3c4043;
            display: inline-block;
            font-weight: normal;
        }
        .section6 ul.tool_link li .inner_txt p{
            display: block;
            font-size: .875rem;
            letter-spacing: .00563rem;
            line-height: 1.25rem;
            padding-bottom: 10px;
            text-align: left;
            margin: 0.5rem 0;
            width: 100%;
            color: #3c4043;
        }
        .section6 .main_btn4{
            position: absolute;
            bottom: -20%;
            left: 50%;
            transform: translate(-50%,-50%);
            background-color:rgb(175, 166, 166);
            border: 0;
            width: 80px;
            height: 40px;
            border-radius: 5px;
            color: #fff;
            cursor: pointer;
        }



    </style>
</head>
<body>
<div class="section5">
    <div class="container">
        <h2>필독 정보 모음</h2>
        <div class="info_wrap">
            <ul class="info_box">
                <li>
                    <a href="#">
                        <strong>2022년 마케팅 달력</strong>
                        <p>Think with Wholesale에 올라온 새로운 소식들을 한 번에 확인해보세요!</p>
                        <span>바로가기</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <strong>최신 마케팅 소식 모아보기</strong>
                        <p>최신 광고 사례를 통해 새로운 아이디어를 얻어보세요.</p>
                        <span>바로가기</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <strong>광고/마케팅 상품 모아보기</strong>
                        <p>다양한 우수 광고 사례를 통해 새로운 아이디어를 얻어보세요.</p>
                        <span>바로가기</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <strong>월 1억 달성 아카데미 모아보기</strong>
                        <p>월 1억 달성 아카데미 프로그램 자세히 알아보기.</p>
                        <span>바로가기</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <strong>e커머스 필수 프로그램 모아보기</strong>
                        <p>여러 e커머스 프로그램을 둘러보세요.</p>
                        <span>바로가기</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <strong>정부지원사업정보 모아보기</strong>
                        <p>다양한 정부 지원 사업 정보에 대해 자세히 알아보세요.</p>
                        <span>바로가기</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <strong>마케터를 위한 도구 모아보기</strong>
                        <p>마케터를 위한 효과적인 도구를 찾고 있다면 Think with Wholesale에서 알아보세요.</p>
                        <span>바로가기</span>
                    </a>
                </li>
            </ul><!-- //.info_box -->
        </div><!-- //.info_wrap -->
    </div><!-- //.container -->
</div><!-- //.section5 -->





<div class="section6">
    <div class="container">
        <h2>마케터를 위한 도구</h2>
        <ul class="tool_link">
            <li>
                <a href="#">
                    <div class="inner_img">
                        <img src="/img/img3.jpg" alt="img3">
                    </div>
                    <div class="inner_txt">
                        <h3>Rich Media Gallery</h3>
                        <p>혁신을 주도하는 광고주와 에이전시가 제작한 창의적인 크리에이티브를 통해 새로운 캠페인 아이디어를 얻어보세요.</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="inner_img">
                        <img src="/img/img3.jpg" alt="img3">
                    </div>
                    <div class="inner_txt">
                        <h3>Rich Media Gallery</h3>
                        <p>혁신을 주도하는 광고주와 에이전시가 제작한 창의적인 크리에이티브를 통해 새로운 캠페인 아이디어를 얻어보세요.</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="inner_img">
                        <img src="/img/img3.jpg" alt="img3">
                    </div>
                    <div class="inner_txt">
                        <h3>Rich Media Gallery</h3>
                        <p>혁신을 주도하는 광고주와 에이전시가 제작한 창의적인 크리에이티브를 통해 새로운 캠페인 아이디어를 얻어보세요.</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="inner_img">
                        <img src="/img/img3.jpg" alt="img3">
                    </div>
                    <div class="inner_txt">
                        <h3>Rich Media Gallery</h3>
                        <p>혁신을 주도하는 광고주와 에이전시가 제작한 창의적인 크리에이티브를 통해 새로운 캠페인 아이디어를 얻어보세요.</p>
                    </div>
                </a>
            </li>
        </ul><!-- //.tool_link -->
        <a href="#"><button class="main_btn4">더보기</button></a>
    </div><!-- //.container -->
</div><!-- //.section6 -->
</body>
</html>