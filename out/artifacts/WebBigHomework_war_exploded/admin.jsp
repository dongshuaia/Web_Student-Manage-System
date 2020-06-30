<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/23
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员界面</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
    <link rel="stylesheet" href="css/main1.css">
    <link rel="stylesheet" href="css/style1.css">
</head>
<body>
<div id="loading">
    <div></div>
    <div></div>
    <span></span>
</div>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="brand">
            <a href="realIndex.jsp"><img src="img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
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
    <!-- LEFT SIDEBAR -->
    <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li>
                        <a href="admin-link/admin-addTeacher.jsp" target="_blank" class="iframe_link"><span>添加教师信息</span></a>
                    </li>
                    <li>
                        <a href="admin-link/admin-deleteTeacher.jsp" target="_blank" class="iframe_link"><span>删除教师信息</span></a>
                    </li>
                    <li>
                        <a href="admin-link/manageTeacher" target="_blank" class="iframe_link"><span>管理教师信息</span></a>
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
