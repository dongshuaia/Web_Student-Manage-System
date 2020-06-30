<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/14
  Time: 20:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>布置作业</title>
    <style type="text/css">
        p{font-size:15px; text-align: center;}
        .button{
            text-align: center;
        }
        table{margin-top:120px;}
        input
        {
            width:200px;
            height:25px;
        }
    </style>
</head>
<body>
<div align="center">
<form action="uploadHomework" method="post" enctype="multipart/form-data">
    <table width="800px" height="300px" align="center" border="2px" bgcolor="lightblue" cellpadding="0" cellspacing="0">
        <caption style="color:white; font-size:30px">布置作业</caption>
        <tr>
            <td align="center">课程</td>
            <td>
                <select name="type">
                    <option value="front">Web前端技术</option>
                    <option value="back">Web后端技术</option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="center">作业题目</td>
            <td>
                <input type="text" name="homeworkTitle" required>
            </td>
        </tr>
        <tr>
            <td align="center">作业内容</td>
            <td>
                <input type="file" name="homeworkFile" align="center">
            </td>
        </tr>
        <tr>
            <td align="center">截止日期</td>
            <td>
                <input type="date" name="deadline" align="center">
            </td>
        </tr>
        <tr>
            <td align="center">确认发布作业？</td>
            <td>
                <input type="submit" class="button" value="确定发布">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" class="button" value="取消">
            </td>
        </tr>
    </table>
</form>
</div>
</body>
</html>
