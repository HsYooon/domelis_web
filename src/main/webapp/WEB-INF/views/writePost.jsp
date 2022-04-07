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
        .ck-editor__editable {
            min-height: 500px;
        }
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
            <td colspan="2" height=350>
<%--                <textarea name="article" placeholder="내용을 입력하세요."  class="text"></textarea>--%>

                    <textarea name="article" id="editor" rows="10" cols="100" style="width:766px; height:412px; display:none;"></textarea>
                    <!--textarea name="ir1" id="ir1" rows="10" cols="100" style="width:100%; height:412px; min-width:610px; display:none;"></textarea-->
            </td>
        </tr>
        <tr>
            <td colspan="2">
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

    // document.getElementById('thumbnail').onchange = function() {
    //     // fire the upload here
    //     const file = this.files[0];
    //     const xhr = this.xhr = new XMLHttpRequest();
    //     xhr.open('POST', 'http://localhost:8080/marketInfo/image', true);
    //     xhr.responseType = 'json';
    //     const data = new FormData()
    //     data.append('upload',file)
    //     console.log("data ====> " + file)
    //     this.xhr.send(data)
    // };

    // function loadThumbnail() {
    //     const input = document.getElementById("thumbnail");
    //     const file = input.files[0];
    //     const data = new FormData()
    //     data.append('upload',file)
    //     console.log("data ====> " + file)
    //     this.xhr.send(data)
    //
    // }

    document.querySelectorAll( 'oembed[url]' ).forEach( element => {
        // Create the <a href="..." class="embedly-card"></a> element that Embedly uses
        // to discover the media.
        const anchor = document.createElement( 'a' );

        anchor.setAttribute( 'href', element.getAttribute( 'url' ) );
        anchor.className = 'embedly-card';

        element.appendChild( anchor );
    } );

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
            const genericErrorText = '파일을 업로드 할 수 없습니다.'

            xhr.addEventListener('error', () => {reject(genericErrorText)})
            xhr.addEventListener('abort', () => reject())
            xhr.addEventListener('load', () => {
                const response = xhr.response
                if(!response || response.error) {
                    return reject( response && response.error ? response.error.message : genericErrorText );
                }

                resolve({
                    default: response.image //업로드된 파일 주소
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