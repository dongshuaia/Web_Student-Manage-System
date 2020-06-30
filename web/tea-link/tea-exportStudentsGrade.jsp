<%@ page import="java.util.List" %>
<%@ page import="edu.qhu.entity.StudentGradeInfo" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 董帅
  Date: 2019/12/14
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>导出学生成绩</title>
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
            background-color: #CCE8EB;
            width: 100px;
        }
        table tr:nth-child(odd)
        {
            background: #fff;
        }
        table tr:nth-child(even)
        {
            background: #F5FAFA;
        }
        button{
            margin-bottom: 10px;
            margin-top: 20px;
        }
        button:hover{
            background-color: #12B4E5;
            color: #fff;
        }
    </style>
</head>
<body>
<div align="center" style="color: white">
    前端
    <a href="exportGradeFront"><button>导出成绩</button></a>
</div>
<div align="center">
    <table border="1px">
        <tr>
            <td colspan="15" align="center" bgcolor="lightblue" color="#EBEDEF">学生成绩表（前端）</td>
        </tr>
        <tr>
            <td  width="100px" align="center">姓名</td>
            <td  width="100px" align="center">学号</td>
            <td  width="100px" align="center">班级</td>
            <%
                List<String> titleFront = (List<String>) request.getAttribute("titleFront");
                for(int i=0;i<titleFront.size();i++){
            %>
            <td align="center"><%=titleFront.get(i)%></td>
            <%
                }
            %>
        </tr>
        <%! String studentName,studentClass,studentId;%>
        <%
            List<StudentGradeInfo> exportGradeFront = (List<StudentGradeInfo>) request.getAttribute("exportGradeFront");
            List<String> studentIds=new ArrayList<>();//存储学号
            for(int i=0;i<exportGradeFront.size();i++){
                if(!studentIds.contains(exportGradeFront.get(i).getStudentId())){
                    studentIds.add(exportGradeFront.get(i).getStudentId());
                }
            }
            for(int i=0;i<studentIds.size();i++){
                for(int j=0;j<exportGradeFront.size();j++){
                    if(studentIds.get(i).equals(exportGradeFront.get(j).getStudentId())){
                         studentName=exportGradeFront.get(j).getStudentName();
                         studentClass=exportGradeFront.get(j).getStudentClass();
                         studentId=studentIds.get(i);
                         break;
                    }
                }
        %>
        <tr>
            <td align="center"><%=studentName%></td>
            <td align="center"><%=studentId%></td>
            <td align="center"><%=studentClass%></td>
        <%

                for(int i_=0;i_<titleFront.size();i_++){
                    int b=1;
                    for(int j=0;j<exportGradeFront.size();j++){
                        if(titleFront.get(i_).equals(exportGradeFront.get(j).getTitle()) && studentId.equals(exportGradeFront.get(j).getStudentId())){
                            b=2;
        %>
                <td align="center"><%=exportGradeFront.get(j).getScore()%></td>
        <%
                        }
                    }
                    if(b==1){
        %>
                        <td align="center"></td>
        <%
                    }
                }
            }
        %></tr>



    </table>
</div>
<div align="center" style="color: white">
    后端
    <a href="exportGradeBack"><button>导出成绩</button></a>
</div>
<div align="center">
    <table border="1px">
        <tr>
            <td colspan="15" align="center" bgcolor="lightblue" color="#EBEDEF">学生成绩表（后端）</td>
        </tr>
        <tr>
            <td  width="100px" align="center">姓名</td>
            <td width="100px" align="center">学号</td>
            <td  width="100px" align="center">班级</td>
            <%
                List<String> titleBack = (List<String>) request.getAttribute("titleBack");
                for(int i=0;i<titleBack.size();i++){
            %>
                    <td align="center" ><%=titleBack.get(i)%></td>
            <%
                }
            %>
        </tr>
        <%! String studentName_,studentId_,studentClass_;%>
        <%
            List<StudentGradeInfo> exportGradeBack = (List<StudentGradeInfo>) request.getAttribute("exportGradeBack");
            List<String> studentIds_=new ArrayList<>();//存储学号
            for(int i=0;i<exportGradeBack.size();i++){
                if(!studentIds_.contains(exportGradeBack.get(i).getStudentId())){
                    studentIds_.add(exportGradeBack.get(i).getStudentId());
                }
            }
            for(int i=0;i<studentIds_.size();i++){
                for(int j=0;j<exportGradeBack.size();j++){
                    if(studentIds_.get(i).equals(exportGradeBack.get(j).getStudentId())){
                        studentName_=exportGradeBack.get(j).getStudentName();
                        studentClass_=exportGradeBack.get(j).getStudentClass();
                        studentId_=studentIds_.get(i);
                        break;
                    }
                }
        %>
        <tr>
            <td align="center"><%=studentName_%></td>
            <td align="center"><%=studentId_%></td>
            <td align="center"><%=studentClass_%></td>
            <%

                for(int i_=0;i_<titleBack.size();i_++){
                    int b=1;
                    for(int j=0;j<exportGradeBack.size();j++){
                        if(titleBack.get(i_).equals(exportGradeBack.get(j).getTitle()) && studentId_.equals(exportGradeBack.get(j).getStudentId())){
                            b=2;
            %>
            <td align="center"><%=exportGradeBack.get(j).getScore()%></td>
            <%
                    }
                }
                if(b==1){
            %>
            <td align="center"></td>
            <%
                        }
                    }
                }
            %></tr>


    </table>
</div>
</body>
</html>
