<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/18
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查看某次作业的提交情况</title>
    <meta charset="utf-8">
    <style type="text/css">
        a{text-decoration: none;}
        input{text-align: center;font-weight: bold;}
    </style>
</head>
<body>
<div align="center">
    <table width="900px" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#C6E0E5" bgcolor="#B2D3DE">
        <tr>
            <td width="350px" align="center">作业列表</td>
            <td width="550px" align="center">操作</td>
        </tr>
        <c:forEach items="${sessionScope.checkHomeworkInfo}" var="homework">
        <tr>
            <td align="center" width="350px" bgcolor="#EBEDEF"><a href="downloadHomework/?path=${homework.path}">${homework.name}</a></td>
            <td align="center" width="550px" bgcolor="#EBEDEF">
                <form action="updateScore/?studentId=${homework.studentId}&title=${homework.title}" method="post">
                <button><a href="downloadHomework/?path=${homework.path}">下载</a></button>&nbsp;&nbsp;&nbsp;&nbsp;
                    教师评分:<input type="text" name="score" value="${homework.score}">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input value="提交" type="submit"/>
                </form>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
