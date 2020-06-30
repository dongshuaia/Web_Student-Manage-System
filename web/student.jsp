<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/9
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
    <link rel="stylesheet" href="css/main1.css">
    <link rel="stylesheet" href="css/style1.css">
    <title>学生页面</title>
</head>
<body>
<div id="loading">
    <div></div>
    <div></div>
    <span></span>
</div>
<!-- WRAPPER -->
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand"><a href="realIndex.jsp">
            <img src="img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
        </div>
        <div class="container-fluid">
            <div class="navbar-btn" style="padding: 0; padding-top: 10px;">
                <button type="button" class="btn-toggle-fullwidth btn-toggle-mx">
                    <img src="img/left.png" height="40px" alt="">
                </button>
            </div>
        </div>
    </nav>
    <!-- END NAVBAR -->
    <!--_________________________________________________________________________________________-->
    <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li>
                        <a href="stu-link/seeTeachFile" target="_blank" class="iframe_link"><span>查看教学资源</span></a>
                    </li>
                    <li>
                        <a href="stu-link/seeHomework" target="_blank" class="iframe_link"><span>查看作业发布</span></a></li>
                    <li>
                        <a href="javascript:" class="nav-togg"><span>管理我的作业</span></a>
                        <div>
                            <ul>
                                <li>
                                    <a href="stu-link/uploadHomeworkType/front" target="_blank" class="iframe_link"><span>提交作业</span></a>
                                </li>
                                <li>
                                    <a href="stu-link/seeHomeworkByself" target="_blank" class="iframe_link"><span>查看成绩</span></a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <a href="stu-link/seeMessages" target="_blank" class="iframe_link"><span>留言板</span></a>
                    </li>
                    <li>
                        <a href="stu-link/stu-changePassword.jsp" target="_blank" class="iframe_link"><span>修改密码</span></a>
                    </li>
                    <li>
                        <a onclick="logout()" href="javascript:window.opener=null;" class="iframe_link"><span>退出系统</span></a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="main">
        <div class="main-content" style="height: 100%;">
            <iframe src="" class="iframe_mx uicss-cn"></iframe>
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/klorofil-common.js"></script>
<script type="text/javascript">
    function logout() {
        top.location = "realIndex.jsp";
        return false;
    }
</script>
</body>
</html>
