<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/9
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>登录</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="form" style="position:relative">
    <!--登录表单-->
    <div class="form_register" style="position:absolute">
        <form action="checkLogin" method="post">
            <h1>欢迎登录web系统平台</h1>
            <div class="form_item">
                <label>用&nbsp;户&nbsp;名&nbsp;：</label>
                <input type="text" name="id" placeholder="学号(工号)" required>
            </div>
            <div class="form_item">
                <label>密 &nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;：</label>
                <input type="password" name="pwd" placeholder="请输入密码" required>
            </div>
            <div class="form_item">
                <label>用户类型：</label>
                <span class="flo">
                <input class="type" style="margin: 0px 1em;" type="radio" name="type" value="student" checked><span
                        class="a1">学生</span></span>
                <span class="flo">
                <input class="type" type="radio" name="type" value="teacher"><span style="width: 32px;" class="a2">教师</span></span>
                <span class="flo">
                <input class="type" type="radio" name="type" value="admin"><span style="width: 48px;" class="a3">管理员</span></span>
            </div>
            <div class="form_item">
                <input type="submit" value="登录">
            </div>
        </form>
    </div>
</div>
</body>
</html>
