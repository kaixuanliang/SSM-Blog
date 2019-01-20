<%--
  Created by IntelliJ IDEA.
  User: liangkaixuan
  Date: 2019/1/11
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人主页</title>

    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>

    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap/css/bootstrap.min.css">
    <script type="text/javascript" src="${APP_PATH}/static/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.1.1.min.js"></script>
    <script charset="UTF-8" type="text/javascript" src="${APP_PATH}/static/js/page.js"></script>
    <link rel="stylesheet" href="${APP_PATH}/static/css/user/application.css">
    <link rel="stylesheet" href="${APP_PATH}/static/css/user/signalPage.css">
    <link rel="stylesheet" href="${APP_PATH}/static/css/user/toolkit.css">
    <script type="text/javascript" src="${APP_PATH}/static/js/user/application.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/user/chart.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/user/popper.min.js"></script>
    <script type="text/javascript" src="${APP_PATH}/static/js/user/toolkit.js"></script>


</head>
<body class="bob">



<div class="bon" id="app-growl"></div>
<jsp:include page="header.jsp"/>

<div class="cd fade" id="msgModal" tabindex="-1" role="dialog" aria-labelledby="bpq" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="d">
                <h5 class="modal-title">Messages</h5>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>

            <div class="modal-body afx js-modalBody">
                <div class="axw">
                    <div class="bow cj ca js-msgGroup">
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="${APP_PATH}/static/images/avatar.png">
                                <div class="rw">
                                    <strong>Jacob Thornton</strong> and <strong>1 other</strong>
                                    <div class="bpg">
                                        Aenean eu leo quam. Pellentesque ornare sem lacinia quam …
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="${APP_PATH}/static/images/avatar.png">
                                <div class="rw">
                                    <strong>Mark Otto</strong> and <strong>3 others</strong>
                                    <div class="bpg">
                                        Brunch sustainable placeat vegan bicycle rights yeah…
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-dhg.png">
                                <div class="rw">
                                    <strong>Dave Gamache</strong>
                                    <div class="bpg">
                                        Brunch sustainable placeat vegan bicycle rights yeah…
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-fat.jpg">
                                <div class="rw">
                                    <strong>Jacob Thornton</strong> and <strong>1 other</strong>
                                    <div class="bpg">
                                        Aenean eu leo quam. Pellentesque ornare sem lacinia quam …
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-mdo.png">
                                <div class="rw">
                                    <strong>Mark Otto</strong> and <strong>3 others</strong>
                                    <div class="bpg">
                                        Brunch sustainable placeat vegan bicycle rights yeah…
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-dhg.png">
                                <div class="rw">
                                    <strong>Dave Gamache</strong>
                                    <div class="bpg">
                                        Brunch sustainable placeat vegan bicycle rights yeah…
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-fat.jpg">
                                <div class="rw">
                                    <strong>Jacob Thornton</strong> and <strong>1 other</strong>
                                    <div class="bpg">
                                        Aenean eu leo quam. Pellentesque ornare sem lacinia quam …
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-mdo.png">
                                <div class="rw">
                                    <strong>Mark Otto</strong> and <strong>3 others</strong>
                                    <div class="bpg">
                                        Brunch sustainable placeat vegan bicycle rights yeah…
                                    </div>
                                </div>
                            </div>
                        </a>
                        <a href="https://bootstrap-themes.github.io/application/index.html#" class="b rx">
                            <div class="rv">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-dhg.png">
                                <div class="rw">
                                    <strong>Dave Gamache</strong>
                                    <div class="bpg">
                                        Brunch sustainable placeat vegan bicycle rights yeah…
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>

                    <div class="d-none afc js-conversation">
                        <ul class="bow bpc">
                            <li class="rv bpf afo">
                                <div class="rw">
                                    <div class="bpd">
                                        Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Sed posuere consectetur est at lobortis.
                                    </div>
                                    <div class="bpe">
                                        <small class="axc">
                                            <a href="https://bootstrap-themes.github.io/application/index.html#">Dave Gamache</a> at 4:20PM
                                        </small>
                                    </div>
                                </div>
                                <img class="us bos vb yb afi" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-dhg.png">
                            </li>

                            <li class="rv afo">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-fat.jpg">
                                <div class="rw">
                                    <div class="bpd">
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
                                    </div>
                                    <div class="bpd">
                                        Vestibulum id ligula porta felis euismod semper. Aenean lacinia bibendum nulla sed consectetur. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                    </div>
                                    <div class="bpd">
                                        Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus.
                                    </div>
                                    <div class="bpe">
                                        <small class="axc">
                                            <a href="https://bootstrap-themes.github.io/application/index.html#">Fat</a> at 4:28PM
                                        </small>
                                    </div>
                                </div>
                            </li>

                            <li class="rv afo">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-mdo.png">
                                <div class="rw">
                                    <div class="bpd">
                                        Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Etiam porta sem malesuada magna mollis euismod. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean lacinia bibendum nulla sed consectetur.
                                    </div>
                                    <div class="bpd">
                                        Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                                    </div>
                                    <div class="bpe">
                                        <small class="axc">
                                            <a href="https://bootstrap-themes.github.io/application/index.html#">Mark Otto</a> at 4:20PM
                                        </small>
                                    </div>
                                </div>
                            </li>

                            <li class="rv bpf afo">
                                <div class="rw">
                                    <div class="bpd">
                                        Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Sed posuere consectetur est at lobortis.
                                    </div>
                                    <div class="bpe">
                                        <small class="axc">
                                            <a href="https://bootstrap-themes.github.io/application/index.html#">Dave Gamache</a> at 4:20PM
                                        </small>
                                    </div>
                                </div>
                                <img class="us bos vb yb afi" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-dhg.png">
                            </li>

                            <li class="rv afo">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-fat.jpg">
                                <div class="rw">
                                    <div class="bpd">
                                        Cras justo odio, dapibus ac facilisis in, egestas eget quam. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
                                    </div>
                                    <div class="bpd">
                                        Vestibulum id ligula porta felis euismod semper. Aenean lacinia bibendum nulla sed consectetur. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                    </div>
                                    <div class="bpd">
                                        Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus.
                                    </div>
                                    <div class="bpe">
                                        <small class="axc">
                                            <a href="https://bootstrap-themes.github.io/application/index.html#">Fat</a> at 4:28PM
                                        </small>
                                    </div>
                                </div>
                            </li>

                            <li class="rv afo">
                                <img class="us bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-mdo.png">
                                <div class="rw">
                                    <div class="bpd">
                                        Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Etiam porta sem malesuada magna mollis euismod. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean lacinia bibendum nulla sed consectetur.
                                    </div>
                                    <div class="bpd">
                                        Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
                                    </div>
                                    <div class="bpe">
                                        <small class="axc">
                                            <a href="https://bootstrap-themes.github.io/application/index.html#">Mark Otto</a> at 4:20PM
                                        </small>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="cd fade" id="userModal" tabindex="-1" role="dialog" aria-labelledby="bpr" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="d">
                <h4 class="modal-title">Users</h4>
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            </div>

            <div class="modal-body afx">
                <div class="axw">
                    <ul class="bow cj ca">
                        <li class="b">
                            <div class="rv ady">
                                <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-fat.jpg">
                                <div class="rw">
                                    <button class="cg ns ok acx">
                                        <span class="c bps"></span> Follow
                                    </button>
                                    <strong>Jacob Thornton</strong>
                                    <p>@fat - San Francisco</p>
                                </div>
                            </div>
                        </li>
                        <li class="b">
                            <div class="rv ady">
                                <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-dhg.png">
                                <div class="rw">
                                    <button class="cg ns ok acx">
                                        <span class="c bps"></span> Follow
                                    </button>
                                    <strong>Dave Gamache</strong>
                                    <p>@dhg - Palo Alto</p>
                                </div>
                            </div>
                        </li>
                        <li class="b">
                            <div class="rv ady">
                                <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-mdo.png">
                                <div class="rw">
                                    <button class="cg ns ok acx">
                                        <span class="c bps"></span> Follow
                                    </button>
                                    <strong>Mark Otto</strong>
                                    <p>@mdo - San Francisco</p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="by aha ahl">
    <div class="dp">
        <div class="fj">
            <div class="pz bpi afo">
                <div class="qf" style="background-image: url(${APP_PATH}/static/images/iceland.jpg);"></div>
                <div class="qa avz">
                    <a href="https://bootstrap-themes.github.io/application/profile/index.html">
                        <img class="bpj" src="${APP_PATH}/static/images/avatar.png">
                    </a>

                    <h6 class="qb">
                        <a class="boa" href="https://bootstrap-themes.github.io/application/profile/index.html">Dave Gamache</a>
                    </h6>

                    <p class="afo">I wish i was a little bit taller, wish i was a baller, wish i had a girl…&nbsp;also.</p>

                    <ul class="bpk">
                        <li class="bpl">
                            <a href="https://bootstrap-themes.github.io/application/index.html#userModal" class="boa" data-toggle="modal">
                                Friends
                                <h6 class="aej">12M</h6>
                            </a>
                        </li>

                        <li class="bpl">
                            <a href="https://bootstrap-themes.github.io/application/index.html#userModal" class="boa" data-toggle="modal">
                                Enemies
                                <h6 class="aej">1</h6>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="pz vp vy afo">
                <div class="qa">
                    <h6 class="afh">About <small>· <a href="https://bootstrap-themes.github.io/application/index.html#">Edit</a></small></h6>
                    <ul class="dc axg">
                        <li><span class="axc h ban aff"></span>Went to <a href="https://bootstrap-themes.github.io/application/index.html#">Oh, Canada</a>
                        </li><li><span class="axc h bnc aff"></span>Became friends with <a href="https://bootstrap-themes.github.io/application/index.html#">Obama</a>
                    </li><li><span class="axc h bfa aff"></span>Worked at <a href="https://bootstrap-themes.github.io/application/index.html#">Github</a>
                    </li><li><span class="axc h bfq aff"></span>Lives in <a href="https://bootstrap-themes.github.io/application/index.html#">San Francisco, CA</a>
                    </li><li><span class="axc h bgz aff"></span>From <a href="https://bootstrap-themes.github.io/application/index.html#">Seattle, WA</a>
                    </li></ul>
                </div>
            </div>

            <div class="pz vp vy afo">
                <div class="qa">
                    <h6 class="afh">Photos <small>· <a href="https://bootstrap-themes.github.io/application/index.html#">Edit</a></small></h6>
                    <div data-grid="images" data-target-height="150"><div style="margin-bottom: 10px; margin-right: 10px; display: inline-block; vertical-align: bottom;">
                        <img data-width="640" data-height="640" data-action="zoom" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_5.jpg" style="width: 114px; height: 115px;">
                    </div><div style="margin-bottom: 10px; margin-right: 0px; display: inline-block; vertical-align: bottom;">
                        <img data-width="640" data-height="640" data-action="zoom" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_6.jpg" style="width: 114px; height: 115px;">
                    </div><div style="margin-bottom: 10px; margin-right: 10px; display: inline-block; vertical-align: bottom;">
                        <img data-width="640" data-height="640" data-action="zoom" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_7.jpg" style="width: 114px; height: 115px;">
                    </div><div style="margin-bottom: 10px; margin-right: 0px; display: inline-block; vertical-align: bottom;">
                        <img data-width="640" data-height="640" data-action="zoom" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_8.jpg" style="width: 114px; height: 115px;">
                    </div><div style="margin-bottom: 10px; margin-right: 10px; display: inline-block; vertical-align: bottom;">
                        <img data-width="640" data-height="640" data-action="zoom" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_9.jpg" style="width: 114px; height: 115px;">
                    </div><div style="margin-bottom: 10px; margin-right: 0px; display: inline-block; vertical-align: bottom;">
                        <img data-width="640" data-height="640" data-action="zoom" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_10.jpg" style="width: 114px; height: 115px;">
                    </div></div>
                </div>
            </div>
        </div>

        <div class="fm">

            <ul class="ca bow box afo">

                <%--<li class="rv b agz">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Message">
                        <div class="bpt">
                            <button type="button" class="cg ns yf">
                                <span class="h bao"></span>
                            </button>
                        </div>
                    </div>
                </li>--%>

                <li class="rv b agz">
                    <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-dhg.png">
                    <div class="rw">
                        <div class="bpb">
                            <small class="acx axc">4 min</small>
                            <h6>Dave Gamache</h6>
                        </div>

                        <p>
                            Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
                        </p>

                        <div class="boy" data-grid="images"><div style="display: inline-block; margin-bottom: 10px; margin-right: 10px; vertical-align: bottom;">
                            <img data-action="zoom" data-width="1050" data-height="700" src="./Home · Application theme · Official Bootstrap Themes_files/unsplash_1.jpg" style="width: 273px; height: 182px;">
                        </div><div style="display: inline-block; margin-bottom: 10px; margin-right: 0px; vertical-align: bottom;">
                            <img data-action="zoom" data-width="640" data-height="640" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_1.jpg" style="width: 182px; height: 182px;">
                        </div><div style="display: inline-block; margin-bottom: 10px; margin-right: 10px; vertical-align: bottom;">
                            <img data-action="zoom" data-width="640" data-height="640" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_13.jpg" style="width: 181px; height: 182px;">
                        </div><div style="display: inline-block; margin-bottom: 10px; margin-right: 0px; vertical-align: bottom;">
                            <img data-action="zoom" data-width="1048" data-height="700" src="./Home · Application theme · Official Bootstrap Themes_files/unsplash_2.jpg" style="width: 274px; height: 182px;">
                        </div></div>

                        <ul class="bow afa">
                            <li class="rv afh">
                                <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-fat.jpg">
                                <div class="rw">
                                    <strong>Jacon Thornton: </strong>
                                    Donec id elit non mi porta gravida at eget metus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Sed posuere consectetur est at lobortis.
                                </div>
                            </li>
                            <li class="rv">
                                <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-mdo.png">
                                <div class="rw">
                                    <strong>Mark Otto: </strong>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>

                <li class="rv b agz">
                    <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-fat.jpg">
                    <div class="rw">
                        <div class="bpd">
                            <div class="bpb">
                                <small class="acx axc">12 min</small>
                                <h6>Jacob Thornton</h6>
                            </div>
                            <p>
                                Donec id elit non mi porta gravida at eget metus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                            </p>
                        </div>
                    </div>
                </li>

                <li class="rv b agz">
                    <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-mdo.png">
                    <div class="rw">
                        <div class="bpb">
                            <small class="acx axc">34 min</small>
                            <h6>Mark Otto</h6>
                        </div>

                        <p>
                            Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.
                        </p>

                        <div class="boy" data-grid="images"><img style="display: inline-block; width: 466px; height: 451px; margin-bottom: 10px; margin-right: 0px; vertical-align: bottom;" data-width="640" data-height="640" data-action="zoom" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_3.jpg"></div>

                        <ul class="bow">
                            <li class="rv">
                                <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-dhg.png">
                                <div class="rw">
                                    <strong>Dave Gamache: </strong>
                                    Donec id elit non mi porta gravida at eget metus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec ullamcorper nulla non metus auctor fringilla. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Sed posuere consectetur est at lobortis.
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <div class="fj">
            <div class="alert ro alert-dismissible d-none vy" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>
                <a class="rj" href="https://bootstrap-themes.github.io/application/profile/index.html">Visit your profile!</a> Check your self, you aren't looking well.
            </div>

            <div class="pz afo d-none vy">
                <div class="qa">
                    <h6 class="afh">Sponsored</h6>
                    <div data-grid="images" data-target-height="150"><img class="bos" data-width="640" data-height="640" data-action="zoom" src="./Home · Application theme · Official Bootstrap Themes_files/instagram_2.jpg" style="width: 239px; height: 225px; margin-bottom: 10px; margin-right: 0px; display: inline-block; vertical-align: bottom;"></div>
                    <p><strong>It might be time to visit Iceland.</strong> Iceland is so chill, and everything looks cool here. Also, we heard the people are pretty nice. What are you waiting for?</p>
                    <button class="cg nz ok">Buy a ticket</button>
                </div>
            </div>

            <div class="pz afo d-none vy">
                <div class="qa">
                    <h6 class="afh">Likes <small>· <a href="https://bootstrap-themes.github.io/application/index.html#">View All</a></small></h6>
                    <ul class="bow box">
                        <li class="rv afa">
                            <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-fat.jpg">
                            <div class="rw">
                                <strong>Jacob Thornton</strong> @fat
                                <div class="bpa">
                                    <button class="cg nz ok">
                                        <span class="h ayi"></span> Follow</button>
                                </div>
                            </div>
                        </li>
                        <li class="rv">
                            <a class="bpu" href="https://bootstrap-themes.github.io/application/index.html#">
                                <img class="bos vb yb aff" src="./Home · Application theme · Official Bootstrap Themes_files/avatar-mdo.png">
                            </a>
                            <div class="rw">
                                <strong>Mark Otto</strong> @mdo
                                <div class="bpa">
                                    <button class="cg nz ok">
                                        <span class="h ayi"></span> Follow</button>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="qg">
                    Dave really likes these nerds, no one knows why though.
                </div>
            </div>

            <div class="pz bpm">
                <div class="qa">
                    © 2018 Bootstrap
                    <a href="https://bootstrap-themes.github.io/application/index.html#">About</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Help</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Terms</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Privacy</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Cookies</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Ads </a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Info</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Brand</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Blog</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Status</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Apps</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Jobs</a>
                    <a href="https://bootstrap-themes.github.io/application/index.html#">Advertise</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
