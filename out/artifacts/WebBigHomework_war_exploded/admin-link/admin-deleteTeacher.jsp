<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/23
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员删除老师</title>
    <meta charset="UTF-8">
    <style type="text/css">
        .box
        {

            width:900px;
            height:400px;
            border:1px inset lightblue;
            background-color: lightcyan;
            text-align: center;
            margin:50px;


        }
        input{
            width:150px;
            height:20px;
            background-color:lavenderblush;
        }
        .button
        {
            width:100px;
            height:30px;
            background-color: lightblue;
            text-align: center;
        }
    </style>
</head>
<body>
<div align="center">
    <form class="box" width="300px" height="200px" border="2px" bordercolor="red" align="center" action="deleteTeacher"
          method="post">
        <caption><h2>教师信息表</h2></caption>
        <br>
        教师姓名 <input type="text" name="teacherName"><br><br>
        教师工号 <input type="text" name="teacherId">
        <p>是否删除教师信息？</p>
        <input class="button" type="submit" value="确认">
        <input class="button" type="reset" value="取消">
    </form>
</div>
</body>
</html>
