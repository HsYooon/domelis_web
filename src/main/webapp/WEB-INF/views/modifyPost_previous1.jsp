<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="https://cdn.ckeditor.com/ckeditor5/33.0.0/classic/ckeditor.js"></script>
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

        /* ????????? ??????, ????????? ?????? (????????? 768px ~ 1023px)*/
        @media all and (min-width:768px) and (max-width:1023px){
            form{
                width: 80%;
                margin: 0 auto;
            }
            table{
                width: 800px;
            }
        }


        /* ????????? ??????, ????????? ?????? (????????? 480px ~ 767px)*/
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
<form method="post" action="/marketInfo/modify" enctype="multipart/form-data">
    <input type="hidden" name="id" value="${id}"/>
    <h2>????????? ??????</h2>
    <table>
        <tr>
            <td colspan="2">
                <select id="category" name="category">
                    <option value="">--??????--</option>
                    <c:forEach items="${infoCategoryList}" var="cd" >
                        <c:choose>
                            <c:when test="${cd.cd == post.category}">
                                <option value="${cd.cd}" selected="selected">${cd.name}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${cd.cd}">${cd.name}</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <label for="writer" style="color: white">?????????</label>
                <input type="text" id="writer" name="writer" value="${post.writer}"/>
            </td>
            <td>
                <label for="writer"  style="color: white">??????</label>
                <input type="text" value="${post.title}"  id="title" maxlength=30 name="title">
            </td>
        </tr>
        <tr>
            <td colspan="2" height=350>
<%--                <textarea name="article" placeholder="????????? ???????????????."  class="text"></textarea>--%>

                    <textarea name="article" id="editor" rows="10" cols="100" style="width:766px; height:412px; display:none;">${post.article}</textarea>
                    <!--textarea name="ir1" id="ir1" rows="10" cols="100" style="width:100%; height:412px; min-width:610px; display:none;"></textarea-->
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <label for="thumbnail">?????????</label>
                <input type="file" id="thumbnail" name="thumbnail" multiple="multiple"/>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="submit">
                <input type="button" onclick="submitContents(this);" value="??????" class="submit">
            </td>
        </tr>
    </table>
</form>
<script type="text/javascript">

    ClassicEditor
        .create( document.querySelector( '#editor' ),{
            extraPlugins: [MyCustomUploadAdapterPlugin],
        })
        .catch( error => {
            console.error( error );
        } );

    function MyCustomUploadAdapterPlugin(editor) {
        editor.plugins.get('FileRepository').createUploadAdapter = (loader) => {
            return new UploadAdapter(loader)
        }
    }

    function submitContents(submit) {
        try {
            submit.form.submit();
        } catch(e) {}
    }

    class UploadAdapter {constructor(loader) {
        this.loader = loader;
    }

        upload() {
            return this.loader.file.then( file => new Promise(((resolve, reject) => {
                this._initRequest();
                this._initListeners( resolve, reject, file );
                this._sendRequest( file );
            })))
        }

        _initRequest() {
            const xhr = this.xhr = new XMLHttpRequest();
            xhr.open('POST', 'https://www.domaelist.com/marketInfo/image', true);
            xhr.responseType = 'json';
        }

        _initListeners(resolve, reject, file) {
            const xhr = this.xhr;
            const loader = this.loader;
            const genericErrorText = '????????? ????????? ??? ??? ????????????.'

            xhr.addEventListener('error', () => {reject(genericErrorText)})
            xhr.addEventListener('abort', () => reject())
            xhr.addEventListener('load', () => {
                const response = xhr.response
                if(!response || response.error) {
                    return reject( response && response.error ? response.error.message : genericErrorText );
                }

                resolve({
                    default: response.image //???????????? ?????? ??????
                })
            })
        }

        _sendRequest(file) {
            const data = new FormData()
            data.append('upload',file)
            console.log("data ====> " + file)
            this.xhr.send(data)
        }
    }
</script>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>