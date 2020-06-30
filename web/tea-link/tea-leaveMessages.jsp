<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/14
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>老师留言</title>
    <meta charset="utf-8">
    <style type="text/css">
        table
        {

            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
            border-color: #666;
            background-color:lightblue;
        }
        button
        {
            background-color:#D3D1D1;
            width:42px;
            height:24px;
        }
        button:hover{
            background-color: #2781D3;
            color: #fff;
        }

        td{
            color: #fff;
        }
    </style>
<body>
<p style="text-align: center; color:#ffff;">学生留言如下</p>
<table border="1px">
    <tr>
        <td width="100px" height="30px">留言者</td>
        <td width="600px" height="30px">留言内容</td>
        <td width="100px" height="30px">发送时间</td>
        <td width="100px" height="30px">回复</td>
    </tr>
    <c:forEach items="${requestScope.messages_}" var="message">
    <tr>
        <td width="100px" height="30px">${message.sendName}</td>
        <td width="600px" height="30px">${message.context}</td>
        <td width="100px" height="30px">${message.sendTime}</td>
        <td width="100px" height="30px"><a href="replyMessages/${message.sendName}"><button style="width: 70px">回复</button></a></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
