package edu.qhu.controller;

import edu.qhu.entity.*;
import edu.qhu.service.impl.TeacherServiceImpl;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author 董帅
 * @date 2019/11/20 - 14:06
 */
@RequestMapping("tea-link")
@Controller
public class TeacherController {

    @Autowired
    @Qualifier("teacherService")
    private TeacherServiceImpl teacherService;

    //老师添加单个学生
    @RequestMapping("addStudentByOne")
    public String addStudentByOne(HttpServletResponse response, @RequestParam("studentId") String studentId, @RequestParam("studentPwd") String studentPwd, @RequestParam("studentName") String studentName, @RequestParam("studentClass") String studentClass, @RequestParam("studentTel") String studentTel) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Student student=new Student(studentId,studentPwd,studentName,studentClass,studentTel);
        teacherService.addStudent(student);
        out.flush();
        out.println("<script>");
        out.println("alert('添加成功');");
        out.println("</script>");
        return "forward:/tea-link/tea-addStudent.jsp";
    }
    @RequestMapping("addStudentByTwo")
    public String addStudentByTwo(HttpServletResponse response, @RequestParam("studentId") String studentId, @RequestParam("studentPwd") String studentPwd, @RequestParam("studentName") String studentName, @RequestParam("studentClass") String studentClass, @RequestParam("studentTel") String studentTel) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Student student=new Student(studentId,studentPwd,studentName,studentClass,studentTel);
        teacherService.addStudent(student);
        out.flush();
        out.println("<script>");
        out.println("alert('添加成功');");
        out.println("</script>");
        return "forward:/tea-link/queryAllStudents";
    }

    //老师批量导入学生
    @RequestMapping("addStudents")
    public String addStudents(HttpServletResponse response, @RequestParam("studentsInfoFile") MultipartFile studentInfoFile) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Workbook wb=null;
        Sheet sheet;
        Row row;
        String name=studentInfoFile.getOriginalFilename();
        String ext=name.substring(name.lastIndexOf("."));
        try {
            InputStream is=studentInfoFile.getInputStream();
            if(".xls".equals(ext)){
                wb=new HSSFWorkbook(is);
            }else if(".xlsx".equals(ext)){
                wb=new XSSFWorkbook(is);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(wb!=null){
            sheet=wb.getSheetAt(0);
            int rowNum=sheet.getLastRowNum()+1;
            row=sheet.getRow(0);
            int colNum=row.getPhysicalNumberOfCells();
            Student student=new Student();
            for(int i=1;i<rowNum;i++){
                row=sheet.getRow(i);
                for(int j=0;j<colNum;j++){
                    if(j==0){
                        student.setStudentName(getCellFormatValue(row.getCell(j)).toString());
                    }else if(j==1){
                        student.setStudentClass(getCellFormatValue(row.getCell(j)).toString());
                    }else if(j==2){
                        student.setStudentId(getCellFormatValue(row.getCell(j)).toString());
                    }else if(j==3){
                        student.setStudentPwd(getCellFormatValue(row.getCell(j)).toString());
                    }else if(j==4){
                        student.setStudentTel(getCellFormatValue(row.getCell(j)).toString());
                    }
                }
                teacherService.addStudent(student);
            }
        }
        out.flush();
        out.println("<script>");
        out.println("alert('导入成功');");
        out.println("</script>");
        return "forward:/tea-link/tea-addStudent.jsp";
    }
    public Object getCellFormatValue(Cell cell){
        Object cellValue="";
        if(cell!=null){
            switch (cell.getCellTypeEnum()){
                case NUMERIC:
                    Double d=cell.getNumericCellValue();
                    DecimalFormat df=new DecimalFormat("#.##");
                    cellValue=String.valueOf(df.format(d));break;
                case STRING:
                    cellValue=cell.getRichStringCellValue().getString();break;
                default:cellValue="";
            }
        }else {
            cellValue="";
        }
        return cellValue;
    }

    //老师删除单个学生
    @RequestMapping("deleteStudent")
    public String deleteStudent(HttpServletResponse response, @RequestParam("studentName") String studentName, @RequestParam("studentClass") String studentClass, @RequestParam("studentId") String studentId) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Student student=new Student();
        student.setStudentName(studentName);
        student.setStudentClass(studentClass);
        student.setStudentId(studentId);
        List<Student> students = teacherService.checkStudentIsOrNotExist(student);
        if(students.size()==0){
            out.flush();
            out.println("<script>");
            out.println("alert('删除失败，该用户信息有误');");
            out.println("</script>");
        }else {
            teacherService.deleteStudent(student);
            out.flush();
            out.println("<script>");
            out.println("alert('删除成功');");
            out.println("</script>");
        }
        return "forward:/tea-link/tea-deleteStudent.jsp";
    }
    @RequestMapping("deleteStudentById/{studentId}")
    public String deleteStudentById(@PathVariable("studentId") String studentId){
        teacherService.deleteStudentById(studentId);
        return "redirect:/tea-link/queryAllStudents";
    }

    //老师查询全部学生
    @RequestMapping("queryAllStudents")
    public String queryAllStudents(HttpServletRequest request){
        List<Student> allStudents = teacherService.queryAllStudents();
        request.setAttribute("allStudents",allStudents);
        return "forward:/tea-link/tea-manageStudents.jsp";
    }

    //老师发布作业
    @RequestMapping("uploadHomework")
    public String uploadHomework(HttpServletRequest request, HttpServletResponse response, @RequestParam("homeworkTitle") String homeworkTitle, @RequestParam("type") String type, @RequestParam("deadline") String deadline, @RequestParam("homeworkFile") MultipartFile homeworkFile) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out_=response.getWriter();
        try {
            InputStream input=homeworkFile.getInputStream();
            String name=homeworkFile.getOriginalFilename();
            String path="";
            String teacherName=((Teacher)(request.getSession().getAttribute("teacherUser"))).getTeacherName();
            if (type.equals("front")){
                path="F:\\webTestData\\teaUploadHomework\\front\\"+homeworkTitle+"--"+name;
                TeaUploadHomework teaUploadHomework=new TeaUploadHomework(homeworkTitle,path,deadline,teacherName);
                teacherService.uploadHomeworkFront(teaUploadHomework);
            }else {
                path="F:\\webTestData\\teaUploadHomework\\back\\"+homeworkTitle+"--"+name;
                TeaUploadHomework teaUploadHomework=new TeaUploadHomework(homeworkTitle,path,deadline,teacherName);
                teacherService.uploadHomeworkBack(teaUploadHomework);
            }
            OutputStream out=new FileOutputStream(path);
            byte[] bytes=new byte[1024];
            int len=-1;
            while ((len=input.read(bytes))!=-1){
                out.write(bytes,0,len);
                out.flush();
            }
            out.close();
            input.close();
            out_.flush();
            out_.println("<script>");
            out_.println("alert('发布成功');");
            out_.println("</script>");
            return "forward:/tea-link/tea-uploadHomework.jsp";
        }catch (IOException e){
            e.printStackTrace();
            out_.flush();
            out_.println("<script>");
            out_.println("alert('发布失败，IO错误');");
            out_.println("</script>");
            return "forward:/tea-link/tea-uploadHomework.jsp";
        }
    }

    //老师发布教学文件
    @RequestMapping("uploadTeachFile")
    public String uploadTeachFile(HttpServletRequest request, HttpServletResponse response, @RequestParam("teachFile") MultipartFile teachFile) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out_=response.getWriter();
        try {
            InputStream input=teachFile.getInputStream();
            String name=teachFile.getOriginalFilename();
            String path="F:\\webTestData\\teaUploadTeachFile\\"+name;
            String teacherName=((Teacher)(request.getSession().getAttribute("teacherUser"))).getTeacherName();
            SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
            String releaseDate=simpleDateFormat.format(new Date());
            TeaUploadTeachFile teaUploadTeachFile=new TeaUploadTeachFile(name,path,releaseDate,teacherName);
            teacherService.uploadTeachFile(teaUploadTeachFile);
            OutputStream out=new FileOutputStream(path);
            byte[] bytes=new byte[1024];
            int len=-1;
            while ((len=input.read(bytes))!=-1){
                out.write(bytes,0,len);
                out.flush();
            }
            out.close();
            input.close();
            out_.flush();
            out_.println("<script>");
            out_.println("alert('发布成功');");
            out_.println("</script>");
            return "forward:/tea-link/tea-uploadTeachFile.jsp";
        }catch (IOException e){
            e.printStackTrace();
            out_.flush();
            out_.println("<script>");
            out_.println("alert('上传失败，IO错误');");
            out_.println("</script>");
            return "forward:/tea-link/tea-uploadTeachFile.jsp";
        }
    }

    //老师查看曾经发布的作业
    @RequestMapping("checkHomeworkInfoTitle")
    public String checkHomeworkInfoTitle(HttpServletRequest request){
        List<String> checkHomeworkInfoTitleFront=teacherService.checkHomeworkInfoTitleFront();
        List<String> checkHomeworkInfoTitleBack=teacherService.checkHomeworkInfoTitleBack();
        request.setAttribute("checkHomeworkInfoTitleFront",checkHomeworkInfoTitleFront);
        request.setAttribute("checkHomeworkInfoTitleBack",checkHomeworkInfoTitleBack);
        return "forward:/tea-link/tea-checkHomeworks.jsp";
    }

    //老师具体查看某次作业的提交情况
    @RequestMapping("checkHomeworkInfo")
    public String checkHomeworkInfo(HttpServletRequest request, @RequestParam("title") String title, @RequestParam("type") String type) throws UnsupportedEncodingException {
        List<StuUploadHomework> checkHomeworkInfo=null;
        if(type.equals("front")){
            checkHomeworkInfo=teacherService.checkHomeworkInfoFront(title);
        }else if(type.equals("back")){
            checkHomeworkInfo=teacherService.checkHomeworkInfoBack(title);
        }
        request.getSession().setAttribute("checkHomeworkInfo",checkHomeworkInfo);
        return "redirect:/tea-link/tea-checkHomeworksWhich.jsp";
    }

    //老师下载单个作业
    @RequestMapping("downloadHomework")
    public String downloadHomework(HttpServletResponse response, @RequestParam("path") String path) throws UnsupportedEncodingException {
        String fileName=path.substring(path.lastIndexOf("\\"));
        fileName=fileName.substring(1);
        response.reset();
        response.setCharacterEncoding("UTF-8");
        response.setContentType("multipart/form-data");
        response.setHeader("Content-Disposition","attachment;fileName="+ URLEncoder.encode(fileName, "UTF-8"));
        try {
            File file=new File(path);
            InputStream input=new FileInputStream(file);
            OutputStream out=response.getOutputStream();
            byte[] bytes=new byte[1024];
            int len=-1;
            while ((len=input.read(bytes))!=-1){
                out.write(bytes,0,len);
                out.flush();
            }
            out.close();
            input.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "forward:/tea-link/tea-checkHomeworksWhich.jsp";
    }

    //老师查看单个学生的详细信息
    @RequestMapping("seeOneStudentInfo/{studentId}")
    public String seeOneStudentInfo(HttpServletRequest request,@PathVariable("studentId") String studentId){
        List<StudentInfo> studentInfos = teacherService.seeStudentInfoFront(studentId);
        if(studentInfos.size()==0){
            studentInfos=teacherService.seeStudentInfoBack(studentId);
        }
        request.getSession().setAttribute("seeOneStudentInfos",studentInfos);
        return "redirect:/tea-link/tea-seeOneStudentInfo.jsp";
    }

    //老师更改信息
    @RequestMapping("change/{studentId}")
    public String change(HttpServletRequest request,@PathVariable("studentId") String studentId){
        List<StudentInfo> studentInfos = teacherService.seeStudentInfoFront(studentId);
        if(studentInfos.size()==0){
            studentInfos=teacherService.seeStudentInfoBack(studentId);
        }
        request.getSession().setAttribute("seeOneStudentInfos_",studentInfos);
        return "redirect:/tea-link/tea-seeOneStudentInfo_.jsp";
    }

    //老师保存信息
    @RequestMapping("save/{studentId}")
    public String save(HttpServletRequest request,@PathVariable("studentId") String studentId){
        UpdateScore updateScore=new UpdateScore();
        updateScore.setStudentId(studentId);
        Map<String, String[]> parameterMap = request.getParameterMap();
        String key;
        String[] value;
        for(String k:parameterMap.keySet()){
            key=k;
            value=parameterMap.get(key);
            updateScore.setTitle(key);
            updateScore.setScore(value[0]);
            List<StuUploadHomework> stuUploadHomeworks= teacherService.isFront(studentId);
            if(stuUploadHomeworks.size()==0){
                teacherService.updateScoreBack(updateScore);
            }else {
                teacherService.updateScoreFront(updateScore);
            }
        }
        return "forward:/tea-link/seeOneStudentInfo/"+studentId;
    }

    //老师打分
    @RequestMapping("updateScore")
    public String updateScore(HttpServletRequest request,@RequestParam("studentId") String studentId,@RequestParam("title") String title,@RequestParam("score") String score) throws UnsupportedEncodingException {
        List<StuUploadHomework> stuUploadHomeworks=teacherService.isFront(studentId);
        UpdateScore update=new UpdateScore(studentId,title,score);
        String type;
        if(stuUploadHomeworks.size()==0){
            teacherService.updateScoreBack(update);
            type="back";
        }else {
            teacherService.updateScoreFront(update);
            type="front";
        }
        return "redirect:/tea-link/checkHomeworkInfo/?title="+URLEncoder.encode(title,"UTF-8")+"&type="+type;
    }

    //老师查看所有成绩
    @RequestMapping("exportGrade")
    public String exportGrade(HttpServletRequest request){
        List<StudentGradeInfo> exportGradeFront = teacherService.exportGradeFront();
        List<StudentGradeInfo> exportGradeBack = teacherService.exportGradeBack();
        exportGradeFront=sort(exportGradeFront);
        exportGradeBack=sort(exportGradeBack);
        request.setAttribute("exportGradeFront",exportGradeFront);
        request.setAttribute("exportGradeBack",exportGradeBack);
        List<String> titleFront = teacherService.checkHomeworkInfoTitleFront();
        List<String> titleBack = teacherService.checkHomeworkInfoTitleBack();
        Collections.reverse(titleFront);
        Collections.reverse(titleBack);
        request.setAttribute("titleFront",titleFront);
        request.setAttribute("titleBack",titleBack);
        return "forward:/tea-link/tea-exportStudentsGrade.jsp";
    }
    public static List<StudentGradeInfo> sort(List<StudentGradeInfo> studentGradeInfos){
        for(int i=0;i<studentGradeInfos.size();i++){
            for(int j=i;j<studentGradeInfos.size();j++){
                if(studentGradeInfos.get(i).getStudentId().compareTo(studentGradeInfos.get(j).getStudentId())>0){
                    Collections.swap(studentGradeInfos,i,j);
                }
            }
        }
        return studentGradeInfos;
    }

    //老师导出成绩
    @RequestMapping("exportGradeFront")
    public String exportGradeFront(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        List<StudentGradeInfo> exportGradeFront = teacherService.exportGradeFront();
        exportGradeFront=sort(exportGradeFront);
        List<String> titleFront = teacherService.checkHomeworkInfoTitleFront();
        titleFront.add("班级");
        titleFront.add("学号");
        titleFront.add("姓名");
        Collections.reverse(titleFront);
        String filePath="F:\\前端成绩导出.xlsx";
        String sheetName="前端成绩";
        writeDataToExcel(filePath,titleFront,exportGradeFront,sheetName);
        out.flush();
        out.println("<script>");
        out.println("alert('前端成绩导出成功');");
        out.println("</script>");
        return "forward:exportGrade";
    }
    @RequestMapping("exportGradeBack")
    public String exportGradeBack(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        List<StudentGradeInfo> exportGradeBack = teacherService.exportGradeBack();
        exportGradeBack=sort(exportGradeBack);
        List<String> titleBack = teacherService.checkHomeworkInfoTitleBack();
        titleBack.add("班级");
        titleBack.add("学号");
        titleBack.add("姓名");
        Collections.reverse(titleBack);
        String filePath="F:\\后端成绩导出.xlsx";
        String sheetName="后端成绩";
        writeDataToExcel(filePath,titleBack,exportGradeBack,sheetName);
        out.flush();
        out.println("<script>");
        out.println("alert('后端成绩导出成功');");
        out.println("</script>");
        return "forward:exportGrade";
    }

    public static void writeDataToExcel(String filePath,List<String> titles,List<StudentGradeInfo> studentGradeInfos,String sheetName){
        Workbook workbook=null;
        workbook=new XSSFWorkbook();
        Sheet sheet=workbook.createSheet(sheetName);
        int rowIndex=0;
        try {
            Row titleRow=sheet.createRow(rowIndex);
            for(int i=0;i<titles.size();i++){
                titleRow.createCell(i).setCellValue(titles.get(i));
            }
            titles.remove(0);
            titles.remove(0);
            titles.remove(0);
            rowIndex++; //增加行数
            List<String> studentIds=new ArrayList<>();
            for(int i=0;i<studentGradeInfos.size();i++){
                if(!studentIds.contains(studentGradeInfos.get(i).getStudentId())){
                    studentIds.add(studentGradeInfos.get(i).getStudentId());
                }
            }
            String stuName,stuId="",stuClass;
            Row row = null;
            Cell cell;
            for(int i=0;i<studentIds.size();i++){
                for(int j=0;j<studentGradeInfos.size();j++){
                    if(studentIds.get(i).equals(studentGradeInfos.get(j).getStudentId())){
                        stuName=studentGradeInfos.get(j).getStudentName();
                        stuId=studentIds.get(i);
                        stuClass=studentGradeInfos.get(j).getStudentClass();
                        row=sheet.createRow(rowIndex);
                        cell=row.createCell(0);
                        cell.setCellValue(stuName);
                        cell=row.createCell(1);
                        cell.setCellValue(stuId);
                        cell=row.createCell(2);
                        cell.setCellValue(stuClass);
                        break;
                    }
                }
                for(int k=0;k<titles.size();k++){
                    int b=1;
                    String score="";
                    for(int j=0;j<studentGradeInfos.size();j++){
                        if(titles.get(k).equals(studentGradeInfos.get(j).getTitle()) && stuId.equals(studentGradeInfos.get(j).getStudentId())){
                            b=2;
                            score=studentGradeInfos.get(j).getScore();
                            cell=row.createCell(k+3);
                            cell.setCellValue(score);
                        }
                    }
                    if(b==1){
                        cell=row.createCell(k+3);
                        cell.setCellValue(score);
                    }
                }
                rowIndex++;
            }
            FileOutputStream fos=new FileOutputStream(filePath);
            workbook.write(fos);
            fos.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //老师查看学生留言
    @RequestMapping("seeMessages")
    public String seeMessages(HttpServletRequest request){
        Teacher teacherUser = (Teacher) request.getSession().getAttribute("teacherUser");
        List<Messages> messages = teacherService.seeMessages(teacherUser.getTeacherId());
        request.setAttribute("messages_",messages);
        return "forward:/tea-link/tea-leaveMessages.jsp";
    }

    //老师回复信息
    @RequestMapping("replyMessages/{sendName}")
    public String replyMessages(HttpServletRequest request,@PathVariable("sendName") String sendName){
        request.getSession().setAttribute("sendName",sendName);
        return "redirect:/tea-link/tea-replyMessages.jsp";
    }
    @RequestMapping("replyMessages_/{sendName}")
    public String replyMessages_(HttpServletRequest request,@PathVariable("sendName") String sendName,@RequestParam("textarea") String textarea){
        Teacher teacherUser = (Teacher) request.getSession().getAttribute("teacherUser");
        SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String date=df.format(new Date());
        TeaToStu teaToStu=new TeaToStu(teacherUser.getTeacherId(),teacherService.queryIdByName(sendName),textarea,date);
        teacherService.replyMessages(teaToStu);
        return "forward:/tea-link/seeMessages";
    }

    //老师修改密码
    @RequestMapping("changePassword")
    public String changePassword(HttpServletResponse response, HttpServletRequest request, @RequestParam("originalPassword") String originalPassword, @RequestParam("newPassword") String[] newPassword) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Teacher teacherUser = (Teacher) request.getSession().getAttribute("teacherUser");
        if(teacherUser.getTeacherPwd().equals(originalPassword)){
            if(newPassword[0].equals(newPassword[1])){
                Teacher teacher=new Teacher();
                teacher.setTeacherId(teacherUser.getTeacherId());
                teacher.setTeacherPwd(newPassword[0]);
                teacherService.changePassword(teacher);
                out.flush();
                out.println("<script>");
                out.println("alert('修改成功');");
                out.println("</script>");
            }else {
                out.flush();
                out.println("<script>");
                out.println("alert('两次密码不一致');");
                out.println("</script>");
            }
        }else {
            out.flush();
            out.println("<script>");
            out.println("alert('原密码错误');");
            out.println("</script>");
        }
        return "forward:/tea-link/tea-changePassword.jsp";
    }

    //老师查看自己发布的教学文件
    @RequestMapping("seeTeachFile")
    public String seeTeachFile(HttpServletRequest request){
        Teacher teacherUser = (Teacher) request.getSession().getAttribute("teacherUser");
        List<TeaUploadTeachFile> teaUploadTeachFiles = teacherService.seeTeachFile(teacherUser.getTeacherName());
        request.getSession().setAttribute("seeTeachFileTea",teaUploadTeachFiles);
        return "redirect:/tea-link/tea-seeTeachFile.jsp";
    }

    //老师删除教学文件
    @RequestMapping("deleteTeachFileByName")
    public String deleteTeachFileByName(@RequestParam("name") String name){
        teacherService.deleteTeachFileByName(name);
        return "forward:/tea-link/seeTeachFile";
    }
    @RequestMapping("deleteTeachFileAll")
    public String deleteTeachFileAll(){
        teacherService.deleteTeachFileAll();
        return "forward:/tea-link/seeTeachFile";
    }
}
