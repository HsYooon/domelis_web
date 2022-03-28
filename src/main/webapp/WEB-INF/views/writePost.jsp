<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<form method="post" action="/marketInfo/upload" enctype="multipart/form-data">
    <table width=600>
        <tr>
            <th colspan="2">
                최신마케팅소식
            </th>
        </tr>
        <tr>
            <td width=100>
                <label for="writer">작성자</label>
                <input type="text" id="writer" name="writer" placeholder="작성자를 써주세요"/>
            </td>
            <td>
                <label for="writer">제목</label>
                <input type="text" placeholder="제목을 입력하세요"
                       maxlength=30
                       style="width:100%" name="title">
            </td>
        </tr>
        <tr>
            <td>
                <input type="radio" id="video" name="mediaType" value="video" checked>
                <label for="video">동영상</label>
                <input type="radio" id="image" name="mediaType" value="image">
                <label for="image">이미지</label>
                <input type="radio" id="no" name="mediaType" value="no">
                <label for="no">없음</label>
            </td>
            <td>
                <input type="file" name="image" multiple="multiple"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" height=400>
                <textarea name="article" placeholder="내용을 입력하세요 " style="width: 100%; height: 100%"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <label for="thumbnail">썸네일</label>
                <input type="file" id="thumbnail" name="thumbnail" multiple="multiple"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align=right>
                <input type="submit" value="등록">
            </td>
        </tr>
    </table>
</form>
</body>
<script>
    const mediaType = document.getElementsByName("mediaType");
</script>
</html>
