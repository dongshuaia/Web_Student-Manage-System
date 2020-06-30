<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/9
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生上传作业</title>
    <style type="text/css">
        option, select {
            color: #666;
        }

        .STYLE1, .STYLE2 {
            color: #000;
        }
        .STYLE1{
            font-size: 30px;
        }

        table {
            margin-top: 40px;
            margin-bottom: 40px;
        }
    </style>
</head>
<body class="mScroll">
<div class="container">
    <div class="jsbg">
        <div class="mx-1">
            <div id="upload_demo">
                <form method="post" action="uploadHomework" id="form" enctype="multipart/form-data">
                    <input id="guid" name="guid" value="" type="hidden">
                    <div>
                        <table align="center" border="0" bordercolor="#CBDAEF" cellpadding="0" cellspacing="0"
                               class="bk" height="433" width="700">
                            <tbody>
                            <tr>
                                <td bgcolor="#CBDAEF" valign="top">
                                    <table border="0" cellpadding="0" cellspacing="0" height="55" width="696">
                                        <tbody>
                                        <tr>
                                            <td>
                                                <div align="center" class="STYLE1">上传作业</div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <form>
                                    <table width="639" height="327" border="1" align="center" cellpadding="0"
                                           cellspacing="0" bordercolor="#006699">
                                        <tbody>
                                        <tr>
                                            <td width="101">
                                                <div align="left" class="STYLE2">
                                                    &nbsp;课程：
                                                </div>
                                            </td>
                                            <td width="532">
                                                <div align="left">
                                                    &nbsp;
                                                    <select name="type" onchange="window.location=this.value">
                                                        <c:if test="${'front'.equals(sessionScope.uploadHomeworkType)}">
                                                            <option value="uploadHomeworkType/front" selected>web前端技术</option>
                                                            <option value="uploadHomeworkType/back">web后端技术</option>
                                                        </c:if>
                                                        <c:if test="${'back'.equals(sessionScope.uploadHomeworkType)}">
                                                            <option value="uploadHomeworkType/front" >web前端技术</option>
                                                            <option value="uploadHomeworkType/back" selected>web后端技术</option>
                                                        </c:if>

                                                    </select></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div align="left" class="STYLE2">
                                                    &nbsp;作业题目：
                                                </div>
                                            </td>
                                            <td>
                                                <div align="left">
                                                    &nbsp;<select name="whichHomeworkType">
                                                    <c:forEach items="${sessionScope.teaUploadHomeworksType}" var="homework">
                                                        <option value="${homework.title}">${homework.title}</option>
                                                    </c:forEach>
                                                    </select>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <div align="left" class="STYLE2">
                                                    &nbsp;作业：
                                                </div>
                                            </td>
                                            <td>
                                                <div align="left">
                                                    &nbsp;
                                                    <input type="file" name="file" size="40">
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <div align="center">
                                                    <input type="submit" value="提交作业">
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    </form>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>

            <div id="back_panel"></div>

            <iframe name="upload_hidden_iframe" style="display:none;">

            </iframe>
        </div>
    </div>
</div>
</body>
</html>
