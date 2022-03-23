<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.4.4.min.js"></script>
    <script src="js/loadHTML.js" type="text/javascript"></script>
    <script src="js/script.js" type="text/javascript"></script>
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-1708982640263259"
     crossorigin="anonymous"></script>
    <title>Document</title>
    <link rel="icon" type="image/png" href="/img/favicon.png" sizes="192x192">
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
    <style>
header{
    width: 100%;
    z-index: 2;
    border-bottom:0.0625rem solid #e0e0e0;
    box-shadow: 0 0.125rem 0.25rem rgb(226, 226, 226);
    min-height: 3.5rem;
    text-align: center;
    transition: min-height .25s cubic-bezier(.4,0,.2,1) background-color .25s cubic-bezier(.4,0,.2,1);
}
header .container{
    display: flex;
    width: 90%;
}
header .logo{
    margin-top: 1.7em;
}
header nav{
    width: 100%;
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
header nav .allmenu ul.depth1 a.logo{
    width:17%;
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
    width: 75%;
    height: 23px;
}
header nav .allmenu ul.depth2 li:hover{
    background-color: rgb(226, 226, 226);
}
header nav .allmenu ul.depth2 li a{
    display: block;
    font-size: 0.8rem;
    line-height: 50px;
}
.fa-search{
    margin-left: 0.5rem;
    font-size: 1.2rem;
}
/* .content{height:100vh; background:#ccc; opacity: 0.5; margin:0 auto; position:relative;display: none;} */
.head{
    position: absolute;
    right: 2%;
    top: 2%;
    height:50px;
    z-index: 1;
    background:#fff;
    display: none;
}
.head .menu{ width:50px; height:100%; position:relative; }
.head .menu .res-menu{ position:absolute; top:50%; left:50%; width:20px; height:12px; transform:translate(-50%, -50%); cursor:pointer; }
.head .menu .res-menu span{ display:block; position:absolute; width:100%; height:2px; background:#333; border-radius:2px; transition: transform .3s; }
.head .menu span:nth-child(1){ top:0;left:0; }
.head .menu span:nth-child(2){ top:50%; left:50%; transform:translate(-50%, -50%); }
.head .menu span:nth-child(3){ bottom:0;left:0; }
#sideopen {display:none;}
.head input[type="checkbox"]:checked + label > .res-menu span:nth-child(1){ top:50%; transform:translateY(-50%) rotate(-45deg); }
.head input[type="checkbox"]:checked + label > .res-menu span:nth-child(2){ display:none; }
.head input[type="checkbox"]:checked + label > .res-menu span:nth-child(3){ top:50%; transform:translateY(-50%) rotate(45deg); }
.sidebar{ position:fixed; /* fixed */ width:40%; height: calc(100vh - 0px); top:0; left:-70%; background:#f1f1f1; transition:left .5s;}
.head input[type="checkbox"]:checked + label + .sidebar{ left:0; }


/* 아코디언 메뉴 */
.cate{ width:100%; position:relative;}
.cate .menu{ display:block; position:relative; width:100%; background:rgb(167, 167, 167); height:50px; }
.cate .menu .menulink{ display:block; color:#fff; text-decoration:none; width:100%;  line-height:50px; font-size:1.125rem; }
.cate .menu .subopen{ position:absolute; width:20px; height:20px; right:15px; padding:0; top:0; bottom:0; margin:auto; }
.cate .menu .subopen span{ position:absolute; display:block; width:8px; height:8px; top:calc(50% - 4px); left:50%; transform:translate(-50%, -50%) rotate(45deg); border-right:1px solid #fff; border-bottom:1px solid #fff; transition:.3s; }
.cate .menu .subopen.active span{ top:50%; transform:translate(-50%, -50%) rotate(-135deg); }
.cate ul li{ padding:5px 15px; font-size:1rem; height: 50px; line-height:50px;}







/* 테블릿 가로, 테블릿 세로 (해상도 768px ~ 1023px)*/
@media all and (min-width:768px) and (max-width:1023px) {
.head{
    display: block;
}
header .container{
        width: 100%;
    }
header nav .allmenu ul.depth1 a.logo{
    padding-left: 3em;
    width: 20%;
}
header .logo img{
    margin-top: 0.1em;
}
header nav .allmenu ul.depth1 li{
    display: none;
}
.content{
    display: block;
}
.cate .menu input{
    margin-top: 1rem;
}
.cate .menu i{
    margin-left: 0.3rem;
}
}

/* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
@media all and (max-width:767px) {
    .head{
    display: block;
}
    header .container{
        width: 100%;
    }
header nav .allmenu ul.depth1 a.logo{
    padding-left: 3em;
    width: 35%;
}
header .logo img{
    margin-top: 0.1em;
}

header .modal nav.mo_nav ul.mo_menu li{
    font-size: 0.75rem;
}
header nav .allmenu ul.depth1 li{
    display: none;
}
.content{
    display: block;
}
.sidebar{
    width: 60%;
}
.cate .menu{
    height: 40px;

}
.cate .menu .menulink{
    font-size: 0.9rem;
    line-height: 40px;
}
.cate ul li{
    font-size: 0.75rem;
    height: 30px;
    line-height: 30px;
}
.cate .menu input{
    margin-top: 0.5rem;
    width: 40%;
}
.cate .menu i{
    margin-left: 0.1rem;
}
 }





    </style>
</head>
<body>
    <header id="header">
        <div class="content">
             <div class="header">
                  <div class="head">
                       <div class="menu">
                            <input type="checkbox" id="sideopen">
                            <label for="sideopen">
                            <div class="res-menu">
                                 <span></span>
                                 <span></span>
                                 <span></span>
                            </div> <!-- .res-menu -->
                            </label>
                            <div class="sidebar">
                                <div class="accordion" id="accordion">
                                    <div class="cate">
                                      <span class="menu">
                                        <a href="/siteinfo?cd=01" class="menulink">도매사이트 모음</a>
                                        <a href="javascript:void(0);" class="subopen"><span></span></a>
                                     </span>
                                     <ul>
                                        <li>
                                            <a href="/siteinfo?cd=01">종합</a>
                                        </li>
                                        <li>
                                            <a href="/siteinfo?cd=02">생활</a>
                                        </li>
                                        <li>
                                            <a href="/siteinfo?cd=04">식품</a>
                                        </li>
                                        <li>
                                            <a href="/siteinfo?cd=06">자동차</a>
                                        </li>
                                        <li>
                                            <a href="/siteinfo?cd=09">디지털/가전</a>
                                        </li>
                                        <li>
                                            <a href="/siteinfo?cd=03">인테리/소품</a>
                                        </li>
                                        <li>
                                            <a href="/siteinfo?cd=11">의류</a>
                                        </li>
                                        <li>
                                            <a href="/siteinfo?cd=12">신발</a>
                                        </li>
                                        <li>
                                            <a href="/siteinfo?cd=10">아동/완구</a>
                                        </li>
                                        <li>
                                            <a href="/sub/c1_sub9.html">반려/애완</a>
                                        </li>
                                        <li>
                                            <a href="/sub/c1_sub10.html">헬스케어/뷰티</a>
                                        </li>
                                    </ul>
                                    </div><!-- .cate -->
                                    <div class="cate">
                                        <span class="menu">
                                            <a href="/product" class="menulink">오늘의 도매상품</a>
                                            <a href="javascript:void(0);" class="subopen"><span></span></a>
                                        </span>
                                <ul>
                                    <li>
                                        <a href="/product/new">신상품</a>
                                    </li>
                                    <li>
                                        <a href="/product/best">베스트</a>
                                    </li>
                                </ul>
                            </div><!-- .cate -->
                            <div class="cate">
                                        <span class="menu">
                                            <a href="/info" class="menulink">필독 정보 모음</a>
                                            <a href="javascript:void(0);" class="subopen"><span></span></a>
                                        </span>
                                <ul>
<%--                                    <li>--%>
<%--                                        <a href="/sub/c3_sub1.html">최신 마케팅 소식</a>--%>
<%--                                    </li>--%>
                                    <li>
                                        <a href="/sub/c3_sub2.html">2022년 마케팅 달력</a>
                                    </li>
<%--                                    <li>--%>
<%--                                        <a href="/sub/c3_sub3.html">마케팅 상품 모음</a>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <a href="/sub/c3_sub4.html">연매출 10억 달성 아카데미 모아보기</a>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <a href="/sub/c3_sub5.html">필수 프로그램 모음</a>--%>
<%--                                    </li>--%>
<%--                                    <li>--%>
<%--                                        <a href="/sub/c3_sub6.html">정부지원사업정보 모음</a>--%>
<%--                                    </li>--%>
                                </ul>
                            </div><!-- .cate -->
                            <div class="cate">
                                        <span class="menu">
                                            <a href="/delivery" class="menulink">대행 업체 정보 모음</a>
                                            <a href="javascript:void(0);" class="subopen"><span></span></a>
                                        </span>
                                        <ul>
                                            <li>
                                                <a href="/delivery/abroad">해외수입대행</a>
                                            </li>
                                            <li>
                                                <a href="/delivery/domestic">물류대행</a>
                                            </li>
                                        </ul>
                                    </div><!-- .cate -->
                                    <div class="cate">
                                        <span class="menu">
                                            <a href="/category5.html" class="menulink">마케팅 도구</a>
                                        </span>
                                    </div><!-- .cate -->
                                    <div class="cate">
                                        <span class="menu">
                                            <input type="search">
                                            <i class="fa fa-search" aria-hidden="true"></i>
                                        </span>
                                    </div><!-- .cate -->
                                </div><!-- .accordion -->
                            </div><!-- sidebar -->
                        </div> <!-- .menu -->
                    </div><!-- head -->
                </div><!-- header -->
        </div><!-- //.content -->
        <div class="container">
            <a href="/" class="logo"><img src="/img/logo.png" alt="logo"></a>
            <nav>
                <div class="allmenu">
                    <ul class="depth1">
                        <li>
                            <a href="/siteinfo?cd=01">도매사이트 모음</a>
                            <ul class="depth2">
                                <li>
                                    <a href="/siteinfo?cd=01">종합</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=02">생활</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=04">식품</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=06">자동차</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=09">디지털/가전</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=03">인테리어/소품</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=11">의류</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=12">신발/잡화</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=10">아동/완구</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=08">반려/애완</a>
                                </li>
                                <li>
                                    <a href="/siteinfo?cd=05">헬스케어/뷰티</a>
                                </li>
                            </ul><!-- //depth2 -->
                        </li>

                        <li>
                            <a href="${pageContext.request.contextPath}/product">오늘의 도매상품</a>
                            <ul class="depth2">
                                <li>
                                    <a href="${pageContext.request.contextPath}/product/new">신상품</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/product/best">베스트</a>
                                </li>
                            </ul><!-- //depth2 -->
                        </li>
                        <li>
                            <a href="/marketInfo">필독 정보 모음</a>
                            <ul class="depth2">
                                <li>
                                    <a href="/marketInfo/calendar">2022년 마케팅 달력</a>
                                </li>
                            </ul><!-- //depth2 -->
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/delivery">대행 업체 정보 모음</a>
                            <ul class="depth2">
                                <li>
                                    <a href="${pageContext.request.contextPath}/delivery/abroad">해외수입대행</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/delivery/domestic">물류대행</a>
                                </li>
                            </ul><!-- //depth2 -->
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/marketing">마케터를 위한 도구</a>
                        </li>
                        <li>
                         <form action="${pageContext.request.contextPath}/search" method="post">
                            <div class="search">
                                <input type="text" name="query"/>
                                <button type="submit" style="border:0;outline:0;background:#fff">
                                <i class="fa fa-search" aria-hidden="true"></i>
                                </button>

                            </div>
                        </form>
                        </li>
                    </ul><!-- //.depth1 -->
                </div><!-- //.allmenu -->
            </nav>
        </div><!-- //.container -->
    </header>
</body>
</html>