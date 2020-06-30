package edu.qhu.controller;

import edu.qhu.entity.*;
import edu.qhu.service.impl.StudentServiceImpl;
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
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author 董帅
 * @date 2019/11/19 - 20:11
 */
@RequestMapping("stu-link")
@Controller
public class StudentController {

    @Autowired
    @Qualifier("studentService")
    private StudentServiceImpl studentService;

    //学生上传作业
    @RequestMapping("uploadHomework")
    public String uploadHomework(HttpServletRequest request, HttpServletResponse response, @RequestParam("type") String type, @RequestParam("whichHomeworkType") String whichHomeworkType, @RequestParam("file") MultipartFile file) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out_=response.getWriter();
        try {
            Student student=(Student) request.getSession().getAttribute("studentUser");
            InputStream input=file.getInputStream();
            String name=file.getOriginalFilename();
            String ext=name.substring(name.lastIndexOf("."));
            String path="";
            if(type.equals("uploadHomeworkType/front")){
                File file1 = new File("F:\\webTestData\\stuHomework\\front\\"+student.getStudentId());
                if(!file1.exists() && !file1.isDirectory()){
                    file1.mkdir();
                }
                name=student.getStudentId()+student.getStudentName()+whichHomeworkType+ext;
                path="F:\\webTestData\\stuHomework\\front\\"+student.getStudentId()+"\\"+name;
                StuUploadHomework stuUploadHomework=new StuUploadHomework(student.getStudentId(),name,path,whichHomeworkType);
                studentService.uploadHomeworkFront(stuUploadHomework);

            }else if(type.equals("uploadHomeworkType/back")){
                File file1 = new File("F:\\webTestData\\stuHomework\\back\\"+student.getStudentId());
                if(!file1.exists() && !file1.isDirectory()){
                    file1.mkdir();
                }
                name=student.getStudentId()+student.getStudentName()+whichHomeworkType+ext;
                path="F:\\webTestData\\stuHomework\\back\\"+student.getStudentId()+"\\"+name;
                StuUploadHomework stuUploadHomework=new StuUploadHomework(student.getStudentId(),name,path,whichHomeworkType);
                studentService.uploadHomeworkBack(stuUploadHomework);
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
            out_.println("alert('提交成功');");
            out_.println("</script>");
            return "forward:/stu-link/stu-uploadHomework.jsp";
        }catch (IOException e){
            e.printStackTrace();
            out_.flush();
            out_.println("<script>");
            out_.println("alert('提交失败，发生IO错误');");
            out_.println("</script>");
            return "forward:/stu-link/stu-uploadHomework.jsp";
        }
    }

    //学生下载单个作业
    @RequestMapping("downloadHomework")
    public String downloadHomework(HttpServletResponse response, @RequestParam("path") String path, @RequestParam(value = "where", required = false, defaultValue = "where") String where) throws UnsupportedEncodingException {
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
        if(where.equals("where")){
            return "forward:/stu-link/stu-seeHomework.jsp";
        }else if(where.equals("self")){
            return "forward:/stu-link/stu-seeScore.jsp";
        }
        return "";

    }

    //学生查看老师发布的作业
    @RequestMapping("seeHomework")
    public String seeHomework(HttpServletRequest request){
        List<TeaUploadHomework> seeHomeworkFront = studentService.seeHomeworkFront();
        request.setAttribute("seeHomeworkFront",seeHomeworkFront);
        List<TeaUploadHomework> seeHomeworkBack = studentService.seeHomeworkBack();
        request.setAttribute("seeHomeworkBack",seeHomeworkBack);
        return "forward:/stu-link/stu-seeHomework.jsp";
    }

    //学生查看老师发布的教学资源
    @RequestMapping("seeTeachFile")
    public String seeTeachFile(HttpServletRequest request){
        List<TeaUploadTeachFile> seeTeachFile=studentService.seeTeachFile();
        request.setAttribute("seeTeachFile",seeTeachFile);
        return "forward:/stu-link/stu-seeTeachFile.jsp";
    }

    //学生下载教学资源
    @RequestMapping("downloadTeachFile")
    public String downloadTeachFile(HttpServletResponse response, @RequestParam("path") String path) throws UnsupportedEncodingException {
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
        return "forward:/stu-link/stu-seeTeachFile.jsp";
    }

    //学生提交作业控制跳转
    @RequestMapping("uploadHomeworkType/{type}")
    public String uploadHomeworkType(@PathVariable("type") String type, HttpServletRequest request){
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        String date=simpleDateFormat.format(new Date());
        if(type.equals("front")){
            List<TeaUploadHomework> teaUploadHomeworksFront = studentService.seeHomeworkFront();
            //确定截止时间前上交作业
            for(int i=0;i<teaUploadHomeworksFront.size();i++){
                if(teaUploadHomeworksFront.get(i).getDeadline().compareTo(date)<0){
                    teaUploadHomeworksFront.remove(i);
                    i--;
                }
            }
            request.getSession().setAttribute("teaUploadHomeworksType",teaUploadHomeworksFront);
            request.getSession().setAttribute("uploadHomeworkType","front");
        }else if (type.equals("back")){
            List<TeaUploadHomework> teaUploadHomeworksBack = studentService.seeHomeworkBack();
            for(int i=0;i<teaUploadHomeworksBack.size();i++){
                if(teaUploadHomeworksBack.get(i).getDeadline().compareTo(date)<0){
                    teaUploadHomeworksBack.remove(i);
                    i--;
                }
            }
            request.getSession().setAttribute("teaUploadHomeworksType",teaUploadHomeworksBack);
            request.getSession().setAttribute("uploadHomeworkType","back");
        }
        return "redirect:/stu-link/stu-uploadHomework.jsp";
    }

    //学生查看自己提交的作业，默认是前端
    @RequestMapping("seeHomeworkByself")
    public String seeHomeworkByself(HttpServletRequest request){
        Student studentUser = (Student) request.getSession().getAttribute("studentUser");
        List<StuUploadHomework> stuUploadHomeworks = studentService.seeHomeworkByselfFront(studentUser.getStudentId());
        if(stuUploadHomeworks.size()==0){
            stuUploadHomeworks=studentService.seeHomeworkByselfBack(studentUser.getStudentId());
        }
        request.setAttribute("seeHomeworkByself",stuUploadHomeworks);
        return "forward:/stu-link/stu-seeScore.jsp";
    }

    //学生向老师留言
    @RequestMapping("leaveMessagesToTeacher")
    public String leaveMessagesToTeacher(HttpServletRequest request, @RequestParam("type") String type, @RequestParam("textarea") String textarea){
        String teacherId = studentService.queryIdByName(type);
        Student studentUser = (Student) request.getSession().getAttribute("studentUser");
        SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String sendTime=df.format(new Date());
        StuToTea stuToTea=new StuToTea(studentUser.getStudentId(),teacherId,textarea,sendTime);
        studentService.leaveMessagesToTeacher(stuToTea);
        return "forward:/stu-link/seeMessages";
    }

    //学生删除留言
    @RequestMapping("deleteMessages/{sendTime}")
    public String deleteMessages(@PathVariable("sendTime") String sendTime){
        studentService.deleteMessages(sendTime);
        return "redirect:/stu-link/seeMessages";
    }
    @RequestMapping("deleteMessages_/{sendTime}")
    public String deleteMessages_(@PathVariable("sendTime") String sendTime){
        studentService.deleteMessages_(sendTime);
        return "redirect:/stu-link/seeMessages";
    }

    //查看之前留言
    @RequestMapping("seeMessages")
    public String seeMessages(HttpServletRequest request){
        List<Teacher> teachers = studentService.seeTeachers();
        request.setAttribute("seeTeachers",teachers);
        Student studentUser = (Student) request.getSession().getAttribute("studentUser");
        List<Messages> messagesStuToTea = studentService.seeMessagesStuToTea(studentUser.getStudentId());
        List<Messages> messagesTeaToStu = studentService.seeMessagesTeaToStu(studentUser.getStudentId());
        init(messagesStuToTea,1);
        init(messagesTeaToStu,2);
        messagesStuToTea.addAll(messagesTeaToStu);
        List<Messages> messages=messagesStuToTea;
        messages=sort(messages);
        request.setAttribute("messages",messages);
        return "forward:/stu-link/stu-leaveMessages.jsp";
    }
    public List<Messages> sort(List<Messages> messages){
        for(int i=0;i<messages.size();i++){
            for(int j=i;j<messages.size();j++){
                if(messages.get(i).getSendTime().compareTo(messages.get(j).getSendTime())>0){
                    Collections.swap(messages,i,j);
                }
            }
        }
        return messages;
    }
    public List<Messages> init(List<Messages> messages, int type){
        for(int i=0;i<messages.size();i++){
            messages.get(i).setType(type);
        }
        return messages;
    }

    //学生获取题库
    @RequestMapping("getQuestions")
    public String getQuestions(HttpServletRequest request){
        List<Question> questions=new ArrayList<>();
        int[] ints=randomCommon(1,30,10);
        List<Integer> list=new ArrayList<>();
        for(int i=0;i<ints.length;i++){
            list.add(ints[i]);
        }
        Collections.sort(list);
        for(int i=0;i<list.size();i++){
            String id=String.valueOf(list.get(i));
            Question question = studentService.getQuestions(id);
            questions.add(question);
        }
        request.getSession().setAttribute("questions",questions);
        return "redirect:/stu-link/stu-onlineDoTheQuestion.jsp";
    }
    public static int[] randomCommon(int min, int max, int n){
        if (n > (max - min + 1) || max < min) {
            return null;
        }
        int[] result = new int[n];
        int count = 0;
        while(count < n) {
            int num = (int) (Math.random() * (max - min)) + min;
            boolean flag = true;
            for (int j = 0; j < n; j++) {
                if(num == result[j]){
                    flag = false;
                    break;
                }
            }
            if(flag){
                result[count] = num;
                count++;
            }
        }
        return result;
    }

    //判断答案是否正确
    @RequestMapping("checkAnswer")
    public String checkAnswer(HttpServletRequest request,@RequestParam("answer") String[] answers){
        List<Question> questions = (List<Question>) request.getSession().getAttribute("questions");
        int sum=0;
        List<String> answerList=new ArrayList<>();
        for(int i=0;i<answers.length;i++){
            if(answers[i].equals(questions.get(i).getAnswer())){
                sum+=10;
            }
            answerList.add(questions.get(i).getAnswer());
        }
        request.getSession().setAttribute("score",sum);
        request.getSession().setAttribute("answer",answerList);
        request.getSession().setAttribute("youAnswer",answers);
        return "redirect:/stu-link/stu-onlineDoTheQuestion_.jsp";
    }

    //学生修改密码
    @RequestMapping("changePassword")
    public String changePassword(HttpServletRequest request,HttpServletResponse response, @RequestParam("originalPassword") String originalPassword, @RequestParam("newPassword") String[] newPassword) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Student studentUser = (Student) request.getSession().getAttribute("studentUser");
        if(originalPassword.equals(studentUser.getStudentPwd())){
            if(newPassword[0].equals(newPassword[1])){
                Student student=new Student();
                student.setStudentId(studentUser.getStudentId());
                student.setStudentPwd(newPassword[0]);
                studentService.changePassword(student);
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
        return "forward:/stu-link/stu-changePassword.jsp";
    }

}
