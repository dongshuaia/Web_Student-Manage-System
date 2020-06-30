<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/20
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生修改密码</title>
    <meta charset="utf-8">
    <link href="bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <style type="text/css">

        body{
            background-color:rgb(37,44,53);
        }
        .form{
            width: 800px;
            height: 600px;
            margin: 30px auto;
        }
        .form_xiugai{
            height: 70%;
            width: 50%;
            background-color:#E6E6E6;
            border-radius: 5px;
            box-shadow: 0 0 3px #ccc;
            overflow: hidden;
            transition: height 1s;
            margin-left: 23%;
        }

        .form form{
            padding: 25px 40px;
        }
        .form .form_item{
            display: flex;
            margin: 25px 0;
            vertical-align: middle;
        }

        .form input{
            outline: none;
            text-indent: 20px;
            flex: 1;
            width: auto;
            border: none;
            border-radius: 3px;
            height: 36px;
        }
        .form form label{
            width: 90px;
            float: left;
            line-height: 36px;
        }
        h1{
            text-align: center;
            padding: 0;;
            margin: 30px 0 30px 0;
        }
        .form form input[type='submit']{
            background-color: #5490E8;
            color: aliceblue;
            height: 45px;
            font-size: 20px;
            cursor:pointer;
            margin-top: 20px;
        }
        .form .info{
            text-align: center;
            font-size: 14px;
            margin-bottom: 20px;
        }

    </style>
</head>
<body>
<div class="form" style="position:relative">
    <div class="form_xiugai" style="position:absolute">
        <form action="changePassword" method="post">
            <h1>修改密码</h1>
            <div class="form_item">
                <label>输入旧密码：</label>
                <input type="password" name="originalPassword" placeholder="请输入旧密码" required>
            </div>
            <div class="form_item">
                <label>设置新密码：</label>
                <input type="password" name="newPassword" placeholder="请输入新密码" required>
            </div>
            <div class="form_item">
                <label>确认新密码：</label>
                <input type="password" name="newPassword" placeholder="再次输入新密码" required>
            </div>
            <div class="form_item">
                <input type="submit" value="确认修改">
            </div>
        </form>
    </div>
</div>
</body>
</html>
