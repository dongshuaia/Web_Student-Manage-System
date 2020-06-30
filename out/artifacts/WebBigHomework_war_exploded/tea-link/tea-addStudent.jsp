<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/14
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加学生</title>
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
    <form class="box" border="2px" bordercolor="red" align="center" action="addStudentByOne" method="post">
        <caption><h2>学生信息表</h2></caption>
        <br>
        学生姓名 <input type="text" name="studentName">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        学生班级 <input type="text" name="studentClass"><br><br>
        学生学号 <input type="text" name="studentId">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        学生密码 <input type="text" name="studentPwd"><br><br>
        联系电话 <input type="text" name="studentTel"><br>
        <p>是否添加学生信息？</p>
        <input class="button" type="submit" value="确认">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input class="button" type="reset" value="取消">
    </form>
    <form action="addStudents" method="post" enctype="multipart/form-data" class="box2" border="2px" bordercolor="red" align="center">
        <caption><h2>批量导入</h2></caption>
        <br>
        请上传关于学生的信息表：<input type="file" name="studentsInfoFile"/><br/><br/>
        <input class="button" type="submit" value="确认导入"/>
    </form>
</div>
</body>
</html>
