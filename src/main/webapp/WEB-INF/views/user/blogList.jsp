<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>博客列表</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>

   <%-- <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${APP_PATH}/static/css/my.css">--%>
</head>

<body class="inner-container">
<div style="margin-left: 150px;width: 810px;margin-top:70px;" >
    <table class="table table-bordered" style="width: 800px;background: #FFFFFF">
        <tr>
            <td>
                <div style="float: left; margin-right: 70px;width: 200px">
                    <a class="focus" href="www.baidu.com" target="_blank">
                        <img src="static/images/1.jpg" style="width: 266px; height: 150px;">
                    </a>
                </div>
                <div style="float: left">
                    <h2>
                        <a href="article.html" title="">php如何判断一个日期的格式是否正确</a>
                    </h2>
                    <p>
                        可以用strtotime()把日期（$date）转成时间戳，再用date()按需要<br>验证的格式转成一个日期
                    </p>
                    <p>
                        <span>
                            <i class="glyphicon glyphicon-user"></i>作者：梁凯旋
                        </span>
                        <i class="glyphicon glyphicon-eye-open"></i> 120人浏览
                        <time class="time">
                            <i class="glyphicon glyphicon-time"></i> 2016-1-4
                        </time>
                        <a class="comment" href="article.html#comment">
                            <i class="glyphicon glyphicon-comment"></i> 0条评论
                        </a>
                    </p>
                </div>
            </td>
        </tr>

        <tr>
            <td>
                <div style="float: left; margin-right: 70px;width: 200px">
                    <a class="focus" href="article.html">
                        <img src="static/images/1.jpg" style="width: 266px; height: 150px;">
                    </a>
                </div>
                <div style="float: left">
                    <h2>
                        <a href="article.html" title="">php如何判断一个日期的格式是否正确</a>
                    </h2>
                    <p>
                        可以用strtotime()把日期（$date）转成时间戳，再用date()按需要<br>验证的格式转成一个日期
                    </p>
                    <p>
                        <span>
                            <i class="glyphicon glyphicon-user"></i>作者：梁凯旋
                        </span>
                        <i class="glyphicon glyphicon-eye-open"></i> 120人浏览
                        <time class="time">
                            <i class="glyphicon glyphicon-time"></i> 2016-1-4
                        </time>
                        <a class="comment" href="article.html#comment">
                            <i class="glyphicon glyphicon-comment"></i> 0条评论
                        </a>
                    </p>
                </div>
            </td>
        </tr>

        <tr>
            <td>
                <div style="float: left; margin-right: 70px;width: 200px">
                    <a class="focus" href="article.html">
                        <img src="static/images/1.jpg" style="width: 266px; height: 150px;">
                    </a>
                </div>
                <div style="float: left">
                    <h2>
                        <a href="article.html" title="">php如何判断一个日期的格式是否正确</a>
                    </h2>
                    <p>
                        可以用strtotime()把日期（$date）转成时间戳，再用date()按需要<br>验证的格式转成一个日期
                    </p>
                    <p>
                        <span>
                            <i class="glyphicon glyphicon-user"></i>作者：梁凯旋
                        </span>
                        <i class="glyphicon glyphicon-eye-open"></i> 120人浏览
                        <time class="time">
                            <i class="glyphicon glyphicon-time"></i> 2016-1-4
                        </time>
                        <a class="comment" href="article.html#comment">
                            <i class="glyphicon glyphicon-comment"></i> 0条评论
                        </a>
                    </p>
                </div>
            </td>
        </tr>

        <tr>
            <td>
                <div style="float: left; margin-right: 70px;width: 200px">
                    <a class="focus" href="article.html">
                        <img src="static/images/1.jpg" style="width: 266px; height: 150px;">
                    </a>
                </div>
                <div style="float: left">
                    <h2>
                        <a href="article.html" title="">php如何判断一个日期的格式是否正确</a>
                    </h2>
                    <p>
                        可以用strtotime()把日期（$date）转成时间戳，再用date()按需要<br>验证的格式转成一个日期
                    </p>
                    <p>
                        <span>
                            <i class="glyphicon glyphicon-user"></i>作者：梁凯旋
                        </span>
                        <i class="glyphicon glyphicon-eye-open"></i> 120人浏览
                        <time class="time">
                            <i class="glyphicon glyphicon-time"></i> 2016-1-4
                        </time>
                        <a class="comment" href="article.html#comment">
                            <i class="glyphicon glyphicon-comment"></i> 0条评论
                        </a>
                    </p>
                </div>
            </td>
        </tr>

        <tr>
            <td>
                <div style="float: left; margin-right: 70px;width: 200px">
                    <a class="focus" href="article.html">
                        <img src="static/images/1.jpg" style="width: 266px; height: 150px;">
                    </a>
                </div>
                <div style="float: left">
                    <h2>
                        <a href="article.html" title="">php如何判断一个日期的格式是否正确</a>
                    </h2>
                    <p>
                        可以用strtotime()把日期（$date）转成时间戳，再用date()按需要<br>验证的格式转成一个日期
                    </p>
                    <p>
                        <span>
                            <i class="glyphicon glyphicon-user"></i>作者：梁凯旋
                        </span>
                        <i class="glyphicon glyphicon-eye-open"></i> 120人浏览
                        <time class="time">
                            <i class="glyphicon glyphicon-time"></i> 2016-1-4
                        </time>
                        <a class="comment" href="article.html#comment">
                            <i class="glyphicon glyphicon-comment"></i> 0条评论
                        </a>
                    </p>
                </div>
            </td>
        </tr>

    </table>
    <div style="text-align: right">
        <!-- 分页条 -->
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <li><a href="#" aria-label="Previous"> <span
                        aria-hidden="true">&laquo;</span>
                </a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">6</a></li>
                <li><a href="#">7</a></li>
                <li><a href="#">8</a></li>
                <li><a href="#">9</a></li>
                <li><a href="#">10</a></li>
                <li>
                    <a href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span></a>
                </li>
            </ul>
        </nav>
    </div>
</div>

<div style="height:560px;margin-left: 1000px;margin-top: -930px">
    <table class="table table-bordered" style="width: 270px;">
        <tr>
            <td style="background: #3D4450">
                <strong>
                    <font color="#FFFFFF">公告</font>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="background: #FFFFFF">
                <font color="green">为了维护博客良好的秩序，请大家不要发表不适言论</font>
            </td>
        </tr>
    </table>
    <table class="table table-bordered" style="width: 270px; margin-bottom: 50px">
        <tr>
            <td style="background: #3D4450">
                <strong>
                    <font color="#FFFFFF">开发者简介</font>
                </strong>
            </td>
        </tr>
        <tr>
            <td style="background: #FFFFFF">姓名：老梁</td>
        </tr>
        <tr>
            <td style="background: #FFFFFF">职业：软件开发工程师</td>
        </tr>
        <tr>
            <td style="background: #FFFFFF">QQ：2926996881</td>
        </tr>
        <tr>
            <td style="background: #FFFFFF">邮箱：liangkaixuan996@qq.com</td>
        </tr>
        <tr>
            <td style="background: #FFFFFF; text-align: center">微信公众号
                <img src="static/images/wechat.jpg" style="width: 220px">
            </td>
        </tr>
    </table>
</div>


</body>

</html>