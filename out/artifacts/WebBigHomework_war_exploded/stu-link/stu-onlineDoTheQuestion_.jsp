<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/18
  Time: 12:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>在线做题</title>
    <meta charset="utf-8">
    <style type="text/css">

        .box
        {

            width:800px;
            height:950px;
            border:5px dashed #666;
            border-radius: 4px;
            margin: auto;
            text-align: center;
            background-color: #5FB9A7;
        }
        .box1
        {
            width:796px;
            height:500px;

        }
        .box2
        {
            width:796px;
            height:118px;
            color: white;
        }
        .box3
        {
            width:140px;
            height:30px;
            float:left;
            margin-left:15px;
            margin-top: 30px;
            color: #000;
            font-family: "楷体";
        }
        .input2
        {
            width:65px;
            height:24px;
            border:none;
        }
        button{margin-top:10px;
            margin-bottom: 10px;}

        P{margin-top: 15px;}
        h3{
            color: #fff;
            font-family: "楷体";
        }
        .feet{
            margin-top: 40px;
        }
        .feet:hover{
            background-color: #29B7D8;
            color: #fff;
        }
    </style>
</head>
<body>
<div class="box">
    <h3 style="color: white">在线测试</h3><br>
    <textarea class="box1" disabled>
        <c:forEach items="${sessionScope.questions}" var="question" varStatus="index">
            ${index.count}.${question.question}
        </c:forEach>
    </textarea>
    <button class="feet">提交答题</button>
    <div class="box2">
        <c:forEach items="${sessionScope.youAnswer}" var="answer" varStatus="index">
        <div class="box3">${index.count}答案:<input type="text" class="input2" value="${answer}"></div>
        </c:forEach>
    </div>
    <p>您本次测试成绩为：${sessionScope.score}</p>
    <div class="box2">
        <c:forEach items="${sessionScope.answer}" var="answer" varStatus="index">
        <div class="box3">${index.count}答案:${answer}</div>
        </c:forEach>
    </div>
</div>
</body>
</html>
