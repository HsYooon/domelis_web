<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">
<head>
    <title>CKEditor 5 ClassicEditor build</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="https://c.cksource.com/a/1/logos/ckeditor5.png">
    <link rel="stylesheet" type="text/css" href="/css/editor.css">
</head>
<body data-editor="ClassicEditor" data-collaboration="false" data-revision-history="false">
<header id="header" class="fixed-top">
    <jsp:include page="header.jsp" flush="true"/>
</header>
<main>
    <div class="message">
        <div class="centered">
            <h2>게시물 작성</h2>
        </div>
    </div>
    <form method="post" action="/marketInfo/modify" enctype="multipart/form-data">
        <div style="text-align: center;margin-bottom: 20px">
            <label for="category" style="color: white">카테고리</label>
            <select id="category" name="category">
                <option value="">--선택--</option>
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
            <label for="writer" style="color: white">작성자</label>
            <input type="text" id="writer" name="writer" value="${post.writer}"/>

            <label for="title" style="color: white">제목</label>
            <input type="text" value="${post.title}" id="title" maxlength=30 name="title">
        </div>x
        <div class="centered">
            <div class="row row-editor">
                <div class="editor-container">
                <textarea id="editor" class="editor" name="article">
                    ${post.article}
                </textarea>
                </div>
            </div></div>
        </div>
        <div style="text-align: center;margin-top: 20px">
            <label for="thumbnail">썸네일</label>
            <input type="file" id="thumbnail" name="thumbnail" multiple="multiple"/>
        </div>
        <div style="text-align: center;margin-top: 20px">
            <input type="button" onclick="submitContents(this);" value="수정" class="submit">
        </div>
    </form>
</main>
<footer>
    <p><a href="https://ckeditor.com/ckeditor-5/" target="_blank" rel="noopener">CKEditor 5</a>
        – Rich text editor of tomorrow, available today
    </p>
    <p>Copyright © 2003-2022,
        <a href="https://cksource.com/" target="_blank" rel="noopener">CKSource</a>
        Holding sp. z o.o. All rights reserved.
    </p>
</footer>
<script src="/js/editor/ckeditor.js"></script>
<script>
    ClassicEditor
        .create( document.querySelector( '.editor' ), {
            licenseKey: '',
            extraPlugins: [MyCustomUploadAdapterPlugin],
        } )
        .then( editor => {
            window.editor = editor;
        } )
        .catch( error => {
            console.error( 'Oops, something went wrong!' );
            console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
            console.warn( 'Build id: z6vqpijl0963-iwx3ybpozoc9' );
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
            xhr.open('POST', '/marketInfo/image', true);
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

    function submitContents(submit) {
        try {
            submit.form.submit();
        } catch(e) {}
    }
</script>
<footer id="footer" class="fixed-top">
    <jsp:include page="footer.jsp" flush="true"/>
</footer>
</body>
</html>