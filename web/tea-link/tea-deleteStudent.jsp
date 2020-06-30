<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/14
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>单独删除学生</title>
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
    <form class="box" width="300px" height="200px" border="2px" bordercolor="red" align="center" action="deleteStudent"
          method="post">
        <caption><h2>学生信息表</h2></caption>
        <br>
        学生姓名 <input type="text" name="studentName"><br><br>
        学生班级 <input type="text" name="studentClass"><br><br>
        学生学号 <input type="text" name="studentId">
        <p>是否删除学生信息？</p>
        <input class="button" type="submit" value="确认">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input class="button" type="reset" value="取消">
    </form>
</div>
</body>
</html>
