<%@ page import="java.util.List" %>
<%@ page import="edu.qhu.entity.StuUploadHomework" %><%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/9
  Time: 23:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>学生查看分数</title>
    <link href="http://cdn.bootcss.com/highlight.js/8.0/styles/monokai_sublime.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/lq-score.css">
    <link rel="stylesheet" href="../css/demo.css">
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/lq-score.min.js"></script>
</head>
<body class="mScroll">
<div class="container">
    <div class="jsbg">
        <div class="col-lg-12 mxlength">
            <div class="mx-1">
                <table align="center" border="0" bordercolor=" #cfe3fe" cellpadding="0" cellspacing="0" class="bk"
                       height="433" width="700">
                    <tbody>
                    <tr>
                        <td bgcolor="#CBDAEF" valign="top">
                            <table width="786" border="1" align="center" cellpadding="0" cellspacing="0"
                                   bordercolor="#006699">
                                <tbody>
                                <tr>
                                    <td height="54" width="150" valign="top"
                                        style="color: #000; line-height: 40px; font-size: 18px;align-content: center">
                                        您的平均成绩为：
                                    </td>
                                    <td style="color: #000; line-height: 40px; font-size: 18px;align-content: center">
                                        <h3>
                                            <%
                                                List<StuUploadHomework> homeworks=(List<StuUploadHomework>)request.getAttribute("seeHomeworkByself");
                                                int size=homeworks.size();
                                                long sum=0,avg=0,k=0;
                                                if(size!=0){
                                                    for(int i=0;i<size;i++){
                                                        if(homeworks.get(i).getScore()!=null){
                                                            k++;
                                                            sum+=Integer.valueOf(homeworks.get(i).getScore());
                                                        }
                                                    }
                                                }
                                                if(k!=0){
                                                    avg=sum/k;
                                                }
                                            %>
                                            <%=avg%>
                                        </h3>
                                    </td>
                                    <td style="color: #000; line-height: 40px; font-size: 18px;align-content: center">
                                        <h3>
                                            <%
                                                switch ((int)(avg/10)){
                                                    case 10:
                                                    case 9:
                                                        %>
                                            <%="你很棒！"%>
                                            <%break;
                                                    case 8:%>
                                            <%="不错哦！"%>
                                            <%break;
                                                    case 7:%>
                                            <%="继续加油！"%>
                                            <%break;
                                                    case 6:
                                                        %>
                                            <%="预警：你快G了！"%>
                                            <%break;
                                                    case 5:
                                                    case 4:
                                                    case 3:
                                                    case 2:
                                                    case 1:
                                                        %>
                                            <%="你已经G了！"%>
                                            <%break;
                                                }
                                            %>
                                        </h3>
                                    </td>
                                </tr>

                                <table border="0" bgcolor="white" cellpadding="0" cellspacing="0" class="bk" height="33"
                                       width="700">
                                    <td bgcolor="#CBDAEF" style=" text-align: right;">
                                        <a class="grade" href="getQuestions">对成绩不满意？练习走一波。</a>
                                    </td>
                                </table>
                                <div class="cont-feet"></div>
                                <h2>全部作业</h2>
                                <div class="table-wrapper">
                                    <table class="fl-table">
                                        <thead>
                                        <tr>
                                            <th>作业文件</th>
                                            <th>分数</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${requestScope.seeHomeworkByself}" var="homework">
                                        <tr>
                                            <td>
                                                <a href="downloadHomework/?path=${homework.path}&where=self">${homework.name}</a>
                                            </td>
                                            <td>
                                                <div>
                                                    <div class="myapp-score">
                                                        <div id="demo1">
                                                            ${homework.score}
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        </c:forEach>
                                        <tbody>
                                    </table>
                                </div>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>
