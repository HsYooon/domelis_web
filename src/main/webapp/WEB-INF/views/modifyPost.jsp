<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>SummerNoteExample</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- 서머노트를 위해 추가해야할 부분 -->
    <script src="/summernote/summernote-lite.js"></script>
    <script src="/summernote/summernote-ko-KR.js"></script>
    <link rel="stylesheet" href="/summernote/summernote-lite.css">
    <!--  -->
    <style>
        .container {
            margin-top: 100px;
            margin-bottom: 100px;
        }
        #writer,#title, #category {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        #thumbnail {
            width: 50%;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .submit {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .submit:hover {
            background-color: #45a049;
        }

        .section {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <div style="margin-bottom: 50px">
        <h2>게시물 수정</h2>
    </div>
    <form method="post" action="/marketInfo/modify" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${id}"/>
        <div class="section">
            <div style="text-align: left;margin-bottom: 20px">
                <label for="category">카테고리</label>
                <select id="category" name="category">
                    <option value="">--선택--</option>
                    <c:forEach items="${infoCategoryList}" var="cd" >
                        <c:choose>
                            <c:when test="${cd.cd == post.category}">
                                <option value="${cd.cd}" selected="selected">${cd.name}</option>
                            </c:when>
                            <c:when test="${cd.cd == '02'}">
                            </c:when>
                            <c:otherwise>
                                <option value="${cd.cd}">${cd.name}</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
                <label for="writer">작성자</label>
                <input type="text" id="writer" name="writer" value="${post.writer}"/>
            </div>
            <div>
                <label for="title">제목</label>
                <input type="text" value="${post.title}" id="title" maxlength=30 name="title"/>
            </div>
            </div>
        <textarea id="summernote" name="article">${post.article}</textarea>
        <div style="text-align: left;margin-top: 20px">
            <label for="thumbnail">썸네일</label>
            <input type="file" id="thumbnail" name="thumbnail" multiple="multiple"/>
            <div style="color: #1a9aef"> * 기존에 등록한 썸네일을 그대로 사용할 경우 다시 저장하지 않아도 됨 *</div>
        </div>
        <div style="text-align: center;margin-top: 20px">
            <input type="button" class="submit" onclick="submitContents(this);" value="수정" class="submit">
        </div>
    </form>
</div>
<script>

    $('#summernote').summernote({
        height: 450,    // 에디터 높이
        focus: true,    // 에디터 로딩후 포커스를 맞출지 여부
        lang: "ko-KR",	// 한글 설정
        callbacks: {	//여기 부분이 이미지를 첨부하는 부분
            onImageUpload : function(files) {
                uploadSummernoteImageFile(files[0],this);
            },
            onPaste: function (e) {
                var clipboardData = e.originalEvent.clipboardData;
                if (clipboardData && clipboardData.items && clipboardData.items.length) {
                    var item = clipboardData.items[0];
                    if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
                        e.preventDefault();
                    }
                }
            }
        }
    });

    /**
     * 이미지 파일 업로드
     */
    function uploadSummernoteImageFile(file, editor) {
        data = new FormData();
        data.append("upload", file);
        $.ajax({
            data : data,
            type : "POST",
            url : "/marketInfo/image",
            contentType : false,
            processData : false,
            success : function(data) {
                //항상 업로드된 파일의 url이 있어야 한다.
                $(editor).summernote('insertImage', data.image);
            }
        });
    }
    /**
     * 게시물 전송
     */
    function submitContents(submit) {
        try {
            submit.form.submit();
        } catch(e) {}
    }
</script>
</body>
</html>