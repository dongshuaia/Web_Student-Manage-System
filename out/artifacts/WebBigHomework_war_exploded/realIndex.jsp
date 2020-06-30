<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/9
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <meta charset="utf-8">
</head>
<link rel="stylesheet" type="text/css" href="css/index.css">
<script type="text/javascript" src="js/vue.min.js"></script>
<body>
<div class="nor-head-one">
    <div class="login"><a href="login.jsp">登录</a></div>
    <div class="one-word">
        <h2>web系统与技术</h2>
        <h5>QHU UNIVERSITY</h5>
    </div>
    <p class="a1"></p>
    <p class="a2"></p>
</div>
<div class="head-two">
    <h2>Welcome To Our<span> Class</span></h2>
</div>
<div class="cont-feet"></div>
<div class="clock">
    <div id="clock">
        <p class="date">{{ date }}</p>
        <p class="time">{{ time }}</p>
    </div>
</div>
<div class="content">
    <div class="cont-one">
        <div class="cont1"><a href="outline.jsp"><h3>教学大纲</h3></a></div>
    </div>
    <div class="cont-two">
        <div class="cont2">
            <a href="introduction.jsp"><h3>课程简介</h3></a>
        </div>
    </div>
</div>
<div class="feet"></div>
<script>
    var clock = new Vue({
        el: '#clock',
        data: {
            time: '',
            date: ''
        }
    });

    var week = ['星期天', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六'];
    var timerID = setInterval(updateTime, 1000);
    updateTime();

    function updateTime() {
        var cd = new Date();
        clock.time = zeroPadding(cd.getHours(), 2) + ':' + zeroPadding(cd.getMinutes(), 2) + ':' + zeroPadding(cd.getSeconds(), 2);
        clock.date = zeroPadding(cd.getFullYear(), 4) + '-' + zeroPadding(cd.getMonth() + 1, 2) + '-' + zeroPadding(cd.getDate(), 2) + ' ' + week[cd.getDay()];
    }
    function zeroPadding(num, digit) {
        var zero = '';
        for (var i = 0; i < digit; i++) {
            zero += '0';
        }
        return (zero + num).slice(-digit);
    }
</script>
</body>
</html>
