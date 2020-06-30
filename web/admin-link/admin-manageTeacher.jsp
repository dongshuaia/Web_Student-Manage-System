<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/23
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理员管理老师</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style type="text/css">
        body
        {
            background-color:lightcyan;
        }
        h2
        {
            text-align: center;
        }
        a{text-decoration: none;}
        button
        {
            background-color:azure;
        }
        .head{
            width: 1074px;
            height: 138px;
            border-bottom: 1px solid #666;
            margin: 5% 9%;
        }
        span{
            float: left;
            margin: 9px;
        }
        .a{
            margin: -3% 80%;
        }
        td{
            width: 200px;
        }

    </style>
</head>
<body>
<div class="head">
    <h2 >管理教师信息</h2>
    <form action="addTeacherByTwo" method="post" align="center">
        <span>姓名:<input type="text" name="teacherName"/></span>
        <span>教工号:<input type="text" name="teacherId"/></span>
        <span> 密码:<input type="text" name="teacherPwd"/></span>
        <span class="a"><input type="submit" value="添加"/></span>

    </form>
</div>
<div>
    <table style="color:black;font-size: 18px;" border="1px" bordercolor="#C6E0E5" cellspacing="0px" cellpadding="0px" align="center">
        <tr bgcolor="#A5E0F0">
            <td align="center">教师姓名</td>
            <td align="center">教工号</td>
            <td align="center">教师密码</td>
            <td align="center">操作</td>
        </tr>
        <c:forEach items="${requestScope.manageTeachers}" var="teacher">
        <tr>
            <td align="center" bgcolor="#EBEDEF">${teacher.teacherName}</td>
            <td align="center" bgcolor="#EBEDEF">${teacher.teacherId}</td>
            <td align="center" bgcolor="#EBEDEF">${teacher.teacherPwd}</td>
            <td align="center"  bgcolor="#EBEDEF">
                <a href="deleteTeacherById/${teacher.teacherId}"><button>删除</button></a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
