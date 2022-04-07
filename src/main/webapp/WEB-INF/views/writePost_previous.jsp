<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/style.css" type="text/css">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript" src="/smartEditor2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
    <script>
        $(function(){
            $("#video").click(function(){
                $("input.url").show();
            });
            $("#image").click(function(){
                $("input.file").show();
            });
            $("#no").click(function(){
                $("input.url,input.file").hide();
            });
        });
    </script>
    <style>
        form{
            width: 100%;
            margin: 2em auto;
        }
        h2{
            width: 100%;
            padding: 1em 0;
            margin: 0 auto;
            text-align: center;
            font-size: 2em;
            font-weight: 500;
        }
        select{
            margin-bottom: 1em;
            height: 2em;
        }
        table{
            margin: 0 auto;
            width: 800px;
        }
        #writer{
            width: 12em;
            height: 2em;
            font-size: 0.79rem;
            padding-left: 2%;
        }
        #title{
            width: 30em;
            height: 2em;
            padding-left: 2%;
        }
        td{
            width: 100%;
        }
        td.select{
            padding: 1em 0;
        }
        td.thumbnail{
            padding: 1em 0;
        }
        input.file{
            display: none;
        }
        input.url{
            display: none;
        }
        td.submit{
            width: 100%;
        }
        input.submit{
            width: 5em;
            height: 3em;
            background-color: #fff;
            border: 2px solid #ddd;
            border-radius: 3px;
            cursor: pointer;
            color: #555;
            float: right;
        }
        #thumbnail{
            margin-left: 1%;
        }
        textarea.text{
            width: 100%;
            height: 100%;
            padding: 1%;
        }

        /* 테블릿 가로, 테블릿 세로 (해상도 768px ~ 1023px)*/
        @media all and (min-width:768px) and (max-width:1023px){
            form{
                width: 80%;
                margin: 0 auto;
            }
            table{
                width: 800px;
            }
        }


        /* 모바일 가로, 모바일 세로 (해상도 480px ~ 767px)*/
        @media all and (max-width:767px){
            form{
                width: 80%;
            }
            table{
                width: 800px;
            }
        }
    </style>
</head>
<body>
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<form method="post" action="/marketInfo/upload" enctype="multipart/form-data">
    <h2>게시물 작성</h2>
    <table>
        <tr>
            <td colspan="2">
                <select name="category">
                    <option value="">--선택--</option>
                    <option value="01">최신마케팅소식</option>
                    <option value="02">마케팅 상품모음</option>
                    <option value="03">10억 아카데미</option>
                    <option value="04">필수 프로그램</option>
                    <option value="05">정부 지원</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label for="writer">작성자</label>
                <input type="text" id="writer" name="writer" placeholder="작성자를 입력하세요."/>
            </td>
            <td>
                <label for="writer">제목</label>
                <input type="text" placeholder="제목을 입력하세요" id="title" maxlength=30 name="title">
            </td>
        </tr>
        <tr>
            <td class="select">
                <input type="radio" id="video" name="mediaType" value="video" >
                <label for="video">동영상</label>
                <input type="radio" id="image" name="mediaType" value="image">
                <label for="image">이미지</label>
                <input type="radio" id="no" name="mediaType" value="no" checked>
                <label for="no">없음</label>
            </td>
            <td>
                <input type="file" class="file" name="image" id="media_image" onchange="loadFile(this)" multiple="multiple"/>
                <input type="url" class="url" name="url" placeholder="동영상 iframe을 넣어주세요" >
            </td>
        </tr>
        <tr>
            <td>
                <div colspan="2" class="image-show" id="image-show"></div>
            </td>
        </tr>
        <tr>
            <td colspan="2" height=350>
<%--                <textarea name="article" placeholder="내용을 입력하세요."  class="text"></textarea>--%>

                    <textarea name="article" id="ir1" rows="10" cols="100" style="width:766px; height:412px; display:none;"></textarea>
                    <!--textarea name="ir1" id="ir1" rows="10" cols="100" style="width:100%; height:412px; min-width:610px; display:none;"></textarea-->
            </td>
        </tr>
        <tr>
            <td colspan="2" class="thumbnail">
                <label for="thumbnail">썸네일</label>
                <input type="file" id="thumbnail" name="thumbnail" multiple="multiple"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="submit">
                <input type="button" onclick="submitContents(this);" value="등록" class="submit">
            </td>
        </tr>
    </table>
</form>
<script type="text/javascript">
    var oEditors = [];

    var sLang = "ko_KR";	// 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR

    // 추가 글꼴 목록
    //var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

    nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "ir1",
        sSkinURI: "/smartEditor2/SmartEditor2Skin.html",
        htParams : {
            bUseToolbar : true,				// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,		// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true,			// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            //bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
            //aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
            fOnBeforeUnload : function(){
                //alert("완료!");
            },
            I18N_LOCALE : sLang
        }, //boolean
        fOnAppLoad : function(){
            //예제 코드
            //oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
        },
        fCreator: "createSEditor2"
    });

    function submitContents(elClickedObj) {
        oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.

        // 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.

        try {
            elClickedObj.form.submit();
        } catch(e) {}
    }
</script>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
<script>
    const mediaType = document.getElementsByName("mediaType");
    function loadFile(input) {
        var file = input.files[0];

        var newImage = document.createElement("img");
        newImage.setAttribute("class", 'img');

        newImage.src = URL.createObjectURL(file);

        newImage.style.width = "50%";
        newImage.style.height = "50%";
        newImage.style.visibility = "hidden";   //버튼을 누르기 전까지는 이미지 숨기기
        newImage.style.objectFit = "contain";

        var container = document.getElementById('image-show');
        container.appendChild(newImage);

        var newImage = document.getElementById('image-show').lastElementChild;
        newImage.style.visibility = "visible";

    };
</script>
</html>