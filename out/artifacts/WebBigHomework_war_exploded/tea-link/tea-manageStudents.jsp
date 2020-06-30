<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/14
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>管理学生信息</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style type="text/css">
        form
        {
            font-weight:bolder;
            color:black;
        }
        body
        {
            background-color:lightcyan;
        }
        h2
        {
            color:black;
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
            margin: 1% 9%;
        }
        span{
            float: left;
            margin: 9px;
        }
        .a{
            margin: -2% 99%;
        }
        table{
            margin-top: 40px;
        }
    </style>
</head>
<body>
<div id="app">
    <div class="head">
    <h2>管理学生信息</h2>
    <form action="addStudentByTwo" method="post" align="center">
        姓名:<input type="text" name="studentName"/>
        班级:<input type="text" name="studentClass"/>
        学号:<input type="text" name="studentId"/>
        密码:<input type="text" name="studentPwd"/>
        电话:<input type="text" name="studentTel"/>
        <span class="a"><input type="submit" value="添加"/></span>
    </form>
    </div>
    <div>
        <table style="color:black;font-size: 18px;" border="1px" bordercolor="#C6E0E5" cellspacing="0px" cellpadding="0px" align="center">
            <tr bgcolor="#A5E0F0">
                <td align="center">学生姓名</td>
                <td align="center">学生班级</td>
                <td align="center">学生学号</td>
                <td align="center">学生密码</td>
                <td align="center">联系电话</td>
                <td align="center">操作</td>
            </tr>

            <c:forEach items="${requestScope.allStudents}" var="student">
                <tr>
                    <td align="center" bgcolor="#EBEDEF">${student.studentName}</td>
                    <td align="center" bgcolor="#EBEDEF">${student.studentClass}</td>
                    <td align="center" bgcolor="#EBEDEF">${student.studentId}</td>
                    <td align="center" bgcolor="#EBEDEF">${student.studentPwd}</td>
                    <td align="center" bgcolor="#EBEDEF">${student.studentTel}</td>
                    <td align="center" bgcolor="#EBEDEF">
                        <a href="seeOneStudentInfo/${student.studentId}"><button>查看</button></a>
                        <a href="deleteStudentById/${student.studentId}"><button>删除</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
