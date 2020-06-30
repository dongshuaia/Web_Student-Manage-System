<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/23
  Time: 18:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员添加老师用户</title>
    <meta charset="UTF-8">
    <style type="text/css">
        form{margin-top: 0px;}
        .box
        {

            width:900px;
            height:300px;
            border:1px inset lightblue;
            background-color: lightcyan;
            text-align: center;
            margin:10px;

        }
        .box2
        {

            width:900px;
            height:200px;
            border:1px inset lightblue;
            background-color: lightcyan;
            text-align: center;
            margin:10px;


        }
        input{
            width:100px;
            height:20px;
            background-color:lavenderblush;
        }
        .button
        {
            width:150px;
            height:30px;
            background-color: lightblue;
        }
    </style>
</head>
<body>
<div align="center">
    <form class="box" border="2px" bordercolor="red" align="center" action="addTeacher" method="post">
        <caption><h2>
            教师信息表</h2></caption>
        <br>
        教师姓名 <input type="text" name="teacherName">
        教工号 <input type="text" name="teacherId"><br><br>
        教师密码 <input type="text" name="teacherPwd">
        <p>是否添加教师信息？</p>
        <input class="button" type="submit" value="确认">
        <input class="button" type="reset" value="取消">
    </form>
    <form action="addTeachers" method="post" enctype="multipart/form-data" class="box2" border="2px" bordercolor="red" align="center">
        <caption><h2>批量导入</h2></caption>
        <br>
        请上传关于教师的信息表：<input type="file" name="teachersInfoFile"/><br/><br/>
        <input class="button" type="submit" value="确认导入"/>
    </form>
</div>
</body>
</html>
