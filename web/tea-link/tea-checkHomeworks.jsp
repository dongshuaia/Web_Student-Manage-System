<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/17
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>检查作业</title>
    <meta charset="utf-8">
    <style type="text/css">
        a{text-decoration: none;}
    </style>
</head>
<body>
<div align="center">
    <h3 style="color:white">前端作业</h3>
</div>
<%
    List<String> checkHomeworkInfoTitleFront = (List<String>) request.getAttribute("checkHomeworkInfoTitleFront");
    List<String> checkHomeworkInfoTitleBack= (List<String>) request.getAttribute("checkHomeworkInfoTitleBack");
    int sizeFront=checkHomeworkInfoTitleFront.size();
    int sizeBack=checkHomeworkInfoTitleBack.size();
    int indexFront=1,indexBack=1;
%>
<div align="center">

    <table width="606" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#C6E0E5" bgcolor="#A5E0F0">
        <tr>
            <td width="200px" align="center">序号</td>
            <td width="200px" align="center">课程名</td>
            <td width="200px" align="center">作业内容</td>
        </tr>
        <c:forEach var="homeworkTitle" items="${requestScope.checkHomeworkInfoTitleFront}">
        <tr>
            <td align="center" bgcolor="#EBEDEF"><%=indexFront++%></td>
            <td align="center" bgcolor="#EBEDEF">2019Web系统与技术</td>
            <td align="center" bgcolor="#EBEDEF"><a href="checkHomeworkInfo/?title=${homeworkTitle}&type=front">${homeworkTitle}</a></td>
        </tr>
        </c:forEach>
    </table>
</div>
<div align="center">
    <h3 style="color:white">后端作业</h3>
</div>
<div align="center">
    <table  width="606" border="1" align="center" cellpadding="0" cellspacing="0" bordercolor="#C6E0E5" bgcolor="#A5E0F0">
        <tr>
            <td width="200px" align="center">序号</td>
            <td width="200px" align="center">课程名</td>
            <td width="200px" align="center">作业内容</td>
        </tr>
        <c:forEach items="${requestScope.checkHomeworkInfoTitleBack}" var="homeworkTitle">
        <tr>
            <td align="center" bgcolor="#EBEDEF"><%=indexBack++%></td>
            <td align="center" bgcolor="#EBEDEF">2019Web系统与技术</td>
            <td align="center" bgcolor="#EBEDEF"><a href="checkHomeworkInfo/?title=${homeworkTitle}&type=back">${homeworkTitle}</a></td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
