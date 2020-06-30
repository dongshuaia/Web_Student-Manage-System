<%@ page import="java.util.List" %>
<%@ page import="edu.qhu.entity.StudentInfo" %><%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/18
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>查看学生信息</title>
    <meta charset="utf-8">
    <style type="text/css">
        table{margin: 10px auto;}
        .button{width:200px; height:30px;}
    </style>
</head>
<body>
<div>
    <form action="save/${sessionScope.seeOneStudentInfos_.get(0).getStudentId()}" method="post">
    <table width="400px;"height="510px" border="1px" bordercolor="white" bgcolor="lightblue">
        <tr>
            <td colspan="2" align="center" height="30px">学生详细信息表</td>
        </tr>
        <%
            List<StudentInfo> seeOneStudentInfos = (List<StudentInfo>) request.getSession().getAttribute("seeOneStudentInfos_");
        %>
        <tr>
            <td  align="center" width="200px" height="30px">学生姓名:</td>
            <td  align="center" width="200px" height="30px"><%=seeOneStudentInfos.get(0).getStudentName()%></td>
        </tr>
        <tr>
            <td align="center" width="200px" height="30px">学生学号:</td>
            <td align="center" width="200px" height="30px"><%=seeOneStudentInfos.get(0).getStudentId()%></td>
        </tr>
        <tr>
            <td align="center" width="200px" height="30px">学生密码:</td>
            <td align="center" width="200px" height="30px"><%=seeOneStudentInfos.get(0).getStudentPwd()%></td>
        </tr>
        <tr>
            <td align="center" width="200px" height="30px">学生班级:</td>
            <td align="center" width="200px" height="30px"><%=seeOneStudentInfos.get(0).getStudentClass()%></td>
        </tr>
        <tr>
            <td align="center" width="200px" height="30px">学生电话:</td>
            <td align="center" width="200px" height="30px"><%=seeOneStudentInfos.get(0).getStudentTel()%></td>
        </tr>
        <c:forEach items="${sessionScope.seeOneStudentInfos_}" var="oneStudentInfo">
        <tr>
            <td align="center" width="200px" height="30px">${oneStudentInfo.getTitle()}</td>
            <td align="center" width="200px" height="30px"><input value="${oneStudentInfo.getScore()}" name="${oneStudentInfo.getTitle()}"></td>
        </tr>
        </c:forEach>
        <tr>
            <td align="center" width="200px" height="30px"><a href="" ><button class="button">修改</button></a>
            <td align="center" width="200px" height="30px"><input type="submit" value="保存" class="button"></td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
