<%--
  Created by IntelliJ IDEA.
  User: liangkaixuan
  Date: 2019/1/20
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发表博客</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/froala_editor.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/froala_style.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/code_view.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/colors.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/image_manager.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/image.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/line_breaker.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/table.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/char_counter.css">
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/quick_insert.css">
<%--
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/plugins/file.css">
--%>
    <link rel="stylesheet" href="${APP_PATH}/static/froala_editor/css/themes/gray.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.css">

    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.1.1.min.js"></script>
    <script charset="UTF-8" type="text/javascript" src="${APP_PATH}/static/js/page.js"></script>

    <style>
        body {
            text-align: center;
        }
        section {
            width: 63%;
            margin: auto;
            text-align: left;
        }
    </style>
    </head>
<body>
<jsp:include page="header.jsp"/>

<section id="editor" style="margin-top: 70px">
    <form enctype="multipart/form-data">
        <textarea id="edit" name="content" style="margin-top: 30px;" ></textarea>
    </form>
</section>



<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.3.0/mode/xml/xml.min.js"></script>
<%--
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/froala_editor.pkgd.min.js"></script>
--%>

<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/froala_editor.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/align.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/code_beautifier.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/code_view.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/colors.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/draggable.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/font_size.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/font_family.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/image.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/image_manager.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/line_breaker.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/link.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/lists.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/paragraph_format.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/paragraph_style.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/table.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/url.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/entities.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/char_counter.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/inline_style.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/quick_insert.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/save.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/plugins/quote.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/static/froala_editor/js/languages/zh_cn.js"></script>

<script>
    $(function(){

        $('#edit').froalaEditor({
            theme: 'gray',
            placeholderText: '请输入内容',
            height:"400px",
            language: 'zh_cn',
            imageUploadURL:"${APP_PATH}/uploadImgEditor",
            enter: $.FroalaEditor.ENTER_BR
        })
    });
</script>
</body>
</html>
