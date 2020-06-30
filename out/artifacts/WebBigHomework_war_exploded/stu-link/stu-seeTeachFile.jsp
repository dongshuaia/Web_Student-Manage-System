<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/9
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生主页</title>
    <meta charset="utf-8">
    <link href="http://cdn.bootcss.com/highlight.js/8.0/styles/monokai_sublime.min.css" rel="stylesheet">
    <style type="text/css">
        table {
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
        }

        table td, table th {
            border: 1px solid #cad9ea;
            color: #666;
            height: 30px;
        }

        table thead th {
            background-color: #CCE8EB;
            width: 100px;
        }

        table tr:nth-child(odd) {
            background: #fff;
        }

        table tr:nth-child(even) {
            background: #F5FAFA;
        }

        h2 {
            color: #fff;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .body {
            width: 900px;
            background-color: rgb(37,44,53);
            margin: auto;
        }
    </style>
</head>
<body class="body">
<table width="90%" class="table">
    <caption>
        <h2>教学资源</h2>
    </caption>
    <thead>
    <tr>
        <th>
            标题
        </th>
        <th>
            发布人
        </th>
        <th>
            发布时间
        </th>
    </tr>
    </thead>
    <c:forEach items="${requestScope.seeTeachFile}" var="seeTeachFile">
    <tr>
        <td>
            <a href="downloadTeachFile/?path=${seeTeachFile.path}" target="_blank">${seeTeachFile.name}</a>
        </td>
        <td>${seeTeachFile.teacherName}</td>
        <td>${seeTeachFile.releaseDate}</td>
    </tr>
    </c:forEach>

</table>
</body>
</html>
