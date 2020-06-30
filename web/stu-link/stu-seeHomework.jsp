<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/9
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生查看发布的作业</title>
    <meta charset="utf-8">
    <link href="http://cdn.bootcss.com/highlight.js/8.0/styles/monokai_sublime.min.css" rel="stylesheet">
    <style type="text/css">
        * {
            margin: 0px;
            padding: 0px;
        }

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
            width: 1000px;
            height: 100%;
            background-color: rgb(37,44,53);
            margin: auto;
        }


        .border {
            position: relative;
            margin: auto;
            border: 1px dashed #0078D7;
        }
    </style>
</head>
<body class="STYLE3">
<div>
    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="AB8313DB">
</div>
<div class="body">
    <table width="90%" class="table">
        <caption>
            <h2>查看教师发布的前端作业</h2>
        </caption>
        <thead>
        <tr>
            <th>
                课程名
            </th>
            <th>
                作业名称
            </th>
            <th>
                发布教师
            </th>
            <th>
                作业说明（指导书）
            </th>
            <th>
                截止日期
            </th>
        </tr>

        <c:forEach items="${requestScope.seeHomeworkFront}" var="homeworkFront">
        <tr style="color:Black;background-color:#DEDFDE;">
            <td>2019计算机系web系统与技术</td>
            <td>${homeworkFront.title}</td>
            <td>${homeworkFront.teacherName}</td>
            <td>
                <a href="downloadHomework/?path=${homeworkFront.path}"><span>下载作业</span></a>
            </td>
            <td>${homeworkFront.deadline}</td>
        </tr>
        </c:forEach>
    </table>
<br><br><br>
<div class="border"></div>
    <table width="90%" class="table">
        <caption>
            <h2>查看教师发布的后端作业</h2>
        </caption>
        <thead>
        <tr>
            <th>
                课程名
            </th>
            <th>
                作业名称
            </th>
            <th>
                发布教师
            </th>
            <th>
                作业说明（指导书）
            </th>
            <th>
                截止日期
            </th>
        </tr>
        <c:forEach items="${requestScope.seeHomeworkBack}" var="homeworkBack">
        <tr style="color:Black;background-color:#DEDFDE;">
            <td>2019计算机系web系统与技术</td>
            <td>${homeworkBack.title}</td>
            <td>${homeworkBack.teacherName}</td>
            <td>
                <a href="downloadHomework/?path=${homeworkBack.path}"><span>下载作业</span></a>
            </td>
            <td>${homeworkBack.deadline}</td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
