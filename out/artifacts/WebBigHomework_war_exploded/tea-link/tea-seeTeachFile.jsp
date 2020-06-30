<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/23
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>老师删除自己曾经发布的教学文件</title>
    <meta charset="utf-8">
    <link href="http://cdn.bootcss.com/highlight.js/8.0/styles/monokai_sublime.min.css" rel="stylesheet">
    <style type="text/css">
        table
        {
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
        }
        table td, table th
        {
            border: 1px solid #cad9ea;
            color: #666;
            height: 30px;
        }
        table thead th
        {
            background-color: rgb(95, 171, 233);
            width: 100px;
            color:white;

        }
        table tr:nth-child(odd)
        {
            background: #EBEDEF;
        }
        table tr:nth-child(even)
        {
            background: #F5FAFA;
        }
        h2{
            color: #fff;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        .body{
            width: 1200px;
            height: 90%;
            background-color:#B2D3DE;
            margin: auto;
            border: 5px dashed #666;
            border-radius: 4px;
        }
        .button:hover{
            background-color:#678BED;
            color:#fff;
        }
    </style>
</head>
<body>
<div class="body">
    <table width="90%" class="table">
        <caption>
            <h2>发布的教学文件</h2>
            <form cellpadding="20px" cellspacing="0" align="right" action="deleteTeachFileAll" method="post">是否全部清除<input type="submit" value="清除"></form>
        </caption>
        <thead>
        <tr>
            <th>标题</th>
            <th>发布人</th>
            <th>发布时间</th>
            <th>删除</th>
        </tr>
        <c:forEach items="${sessionScope.seeTeachFileTea}" var="seeTeachFile">
        </thead>
        <tr>
            <td>
                <a href="downloadHomework/?path=${seeTeachFile.path}">${seeTeachFile.name}</a>
            </td>
            <td>
                    ${seeTeachFile.teacherName}
            </td>
            <td>
                    ${seeTeachFile.releaseDate}
            </td>
            <td>
                <a href="deleteTeachFileByName/?name=${seeTeachFile.name}"><button class="button">删除</button></a>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
