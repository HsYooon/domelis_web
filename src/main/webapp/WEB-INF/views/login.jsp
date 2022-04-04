<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <title>login</title>
    <style>
        .form_wrap{
            width: 100%;
            height: auto;
            padding: 4em 0;
        }
        h2{
            width: 100%;
            padding: 2em auto;
            text-align: center;
            font-size: 2em;
        }
        p{
            display: block;
            margin: 0 auto;
            text-align: center;
            font-size: 0.75rem;
            padding-top: 1em;
        }
        .login-form{
            width: 25em;
            height: 25em;
            background-color: rgb(255, 255, 255);
            margin:  4em auto;
            padding: 1em;
            border-radius: 5px;
            border: 2px solid #989898;
        }
        form{
            margin-top: 3em;
            padding: 5%;
            text-align: center;
        }
        .text-field{
            font-size :1rem;
            width: 70%;
            border: 2px solid #989898;
            border-radius: 5px;
            padding: 1em;
            margin: 0.75em 0;
        }
        .submit-btn{
            font-size: 14px;
            background-color: #989898;
            color: #fff;
            width: 25%;
            border-radius: 5px;
            padding: 10px;
            border: none;
            margin-top: 7%;
            cursor: pointer;
        }
        .links{
            margin: 1em 0;
            text-align: center;
        }
        .links a{
            font-size: 1rem;
            color: #888;
        }
        .links a:hover{
            color: #000;
            text-decoration-line: underline;
        }
        /* 테블릿 가로, 테블릿 세로 (해상도 768px ~ 1023px)*/
        @media all and (min-width:768px) and (max-width:1023px){}



        /* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
        @media all and (max-width:767px){
            .login-form{
                width: 17em;
                height: 22em;
            }
        }


    </style>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<div class="form_wrap">
    <h2>로그인</h2>
    <p>회원 로그인을 하시면 각종 혜택 및 정보를 제공 받으실 수 있습니다.</p>
    <div class="login-form">
        <form method="post" action="/login_confirm">
            <input type="text" name="id" class="text-field" placeholder="아이디">
            <input type="password" name="password" class="text-field" placeholder="비밀번호">
            <input type="submit" value="로그인" class="submit-btn">
        </form>
<%--        <div class="links">--%>
<%--            <a href="/signup.html">Sign Up</a>--%>
<%--        </div><!-- //.links -->--%>
    </div><!-- //.login-form -->
</div><!-- //.form_wrap -->
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>