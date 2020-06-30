<%@ page import="java.util.List" %>
<%@ page import="edu.qhu.entity.Messages" %><%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/9
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生向老师留言</title>
    <meta charset="utf-8">
    <script src="../js/xml.js"></script>

    <style>
        .main {
            width: 760px;
            margin: auto;
        }

        span {
            display: inline-block;
            width: 200px;
            height: 25px;
            line-height: 25px;
            vertical-align: center;
            text-align: left;
            margin-bottom: 10px;
            color: #fff;
        }

        .tag {
            font-size: 13px;
            margin-left: 370px;
            vertical-align: bottom;
            text-align: center;
            margin-bottom: 0;
        }

        .text {
            width: 750px;
            height: 180px;
            margin: 0 auto;
            resize: none;
        }

        input {
            display: inline-block;
            width: 80px;
            height: 50px;
            background: #E2526F;
            border: 0;
            margin-left: 670px;
            margin-top: 10px;

        }
        select {
            margin-left: -6%;
        }

        .liuyan {
            width: 753px;
            height: 200px;
            border: 1px solid #000;
            position: relative;
            margin: auto;
            background-color: #fff;
        }

        .head {
            width: 142px;
            height: 121px;
            border: 1px solid #000;
            position: relative;
            margin: 3% 0;
        }

        .word {
            width: 570px;
            height: 93px;
            border: 1px solid #000;
            position: relative;
            margin: -17% 24%;
        }

        .dele {
            display: inline-block;
            width: 80px;
            height: 50px;
            background: #E2526F;
            border: 0;
            position: absolute;
            margin-left: 89%;
            margin-top: 18%;
        }
    </style>
    <link href="http://cdn.bootcss.com/highlight.js/8.0/styles/monokai_sublime.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="jsbg">
            <div class="mx-1">
                <div class="main">
                    <form action="leaveMessagesToTeacher" method="post">
                    <span>你想对老师说点什么</span>
                    <select name="type">
                        <c:forEach items="${requestScope.seeTeachers}" var="teachers">
                        <option>${teachers.teacherName}</option>
                        </c:forEach>
                    </select>
                    <span style="font-size: 13px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        你最多可以输入250个字符</span>
                        <textarea id="text" cols="30" rows="10" maxlength="250" class="text" name="textarea"></textarea><br>
                        <input type="submit" value="发 表">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <c:forEach items="${requestScope.messages}" var="message">
        <c:choose>
        <c:when test="${message.type==1}">
                <div class="liuyan">
                    <div class="head"><img width="142px" height="121px" src="../img/1.jpg"></div>
                    <div class="word">
                        ${message.sendTime}
                        <br/>
                        你对${message.sendName}说：
                        ${message.context}
                    </div>
                    <a href="deleteMessages/${message.sendTime}"><button class="dele">删 除</button></a>
                </div>
        </c:when>
        <c:otherwise>
                <div class="liuyan">
                    <div class="head"><img width="142px" height="121px" src="../img/2.jpg"></div>
                    <div class="word">
                        ${message.sendTime}
                        <br/>
                        ${message.sendName}回复你：${message.context}
                    </div>
                    <a href="deleteMessages_/${message.sendTime}"><button class="dele">删 除</button></a>
                </div>
        </c:otherwise>
        </c:choose>
    </c:forEach>

</body>
</html>
