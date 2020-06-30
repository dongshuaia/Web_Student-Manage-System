<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/18
  Time: 23:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>回复消息</title>
    <meta charset="utf-8">
    <style type="text/css">
        table
        {
            margin-top:100px;
            text-align: center;
            background-color: lightblue;
        }
        button
        {background-color:lightblue;
            width:100px;
            height:30px;
        }
        .input{
            width:700px;
            height:150px;
            font-weight: bolder;
        }
    </style>
</head>
<body>
<div align="center">
    <form action="replyMessages_/${sessionScope.sendName}" method="post">
    <table width="700px" height="200px" border="1px">
        <tr>
            <td width="700px" height="20px">回复<span style="font-weight: bold;">${sessionScope.sendName}</span>内容</td>
        </tr>
        <tr>
            <td><textarea class="input" name="textarea"></textarea></td>
        </tr>
        <tr>
            <td width="700px" height="30px"><input type="submit" value="提交回复" align="center"/></td>
        </tr>
    </table>
    </form>
</div>
</body>
</html>
