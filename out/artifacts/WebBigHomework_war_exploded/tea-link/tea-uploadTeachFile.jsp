<%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/14
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布教学文件</title>
</head>
<body>
<div>
    <form action="uploadTeachFile" method="post" enctype="multipart/form-data">
        <table align="center" border="0" bordercolor="0xffff" cellpadding="0" cellspacing="0" class="bk" height="430"
               width="700">
            <tbody>
            <tr>
                <td bgcolor="#CBDAEF" valign="top">
                    <table border="0" cellpadding="0" cellspacing="0" height="55" width="690">
                        <tbody>
                        <tr>
                            <td>
                                <div align="center" class="STYLE1">发布教学文件</div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <table width="640" height="330" border="2" align="center" cellpadding="10" cellspacing="10"
                           bordercolor="green">
                        <tbody>
                        <tr>
                            <td width="101">
                                <div align="left" class="STYLE2">
                                    &nbsp;课程：
                                </div>
                            </td>
                            <td width="532">
                                <div align="left">&nbsp;
                                    <select name="DropDownList1">
                                        <option>2019web系统与技术</option>
                                    </select>
                                </div>
                        <tr>
                            <td>
                                <div align="left" class="STYLE2">
                                    &nbsp;文件：
                                </div>
                            </td>
                            <td>
                                <div align="left">
                                    &nbsp;
                                    <input name="teachFile" type="file" size="50">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div align="center">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="submit" value="确认发布">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>
