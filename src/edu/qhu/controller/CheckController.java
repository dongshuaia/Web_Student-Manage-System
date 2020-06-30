package edu.qhu.controller;

import edu.qhu.entity.Admin;
import edu.qhu.entity.Student;
import edu.qhu.entity.Teacher;
import edu.qhu.service.impl.AdminServiceImpl;
import edu.qhu.service.impl.StudentServiceImpl;
import edu.qhu.service.impl.TeacherServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author 董帅
 * @date 2019/11/19 - 13:39
 */
@Controller
public class CheckController {
    @Autowired
    @Qualifier("teacherService")
    private TeacherServiceImpl teacherService;
    @Autowired
    @Qualifier("studentService")
    private StudentServiceImpl studentService;
    @Autowired
    @Qualifier("adminService")
    private AdminServiceImpl adminService;

    public void setStudentService(StudentServiceImpl studentService) {
        this.studentService = studentService;
    }

    public void setTeacherService(TeacherServiceImpl teacherService) {
        this.teacherService = teacherService;
    }

    @RequestMapping("checkLogin")
    public String checkLogin(HttpServletResponse response, @RequestParam("id") String id, @RequestParam("pwd") String pwd, @RequestParam("type") String type, HttpServletRequest request) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        if(type.equals("student")){
            Student student=new Student(id,pwd);
            Student student1=studentService.checkExist(student);
            if(student1!=null){
                request.getSession().setAttribute("studentUser",student1);
                return "forward:/student.jsp";
            }else{
                out.flush();
                out.println("<script>");
                out.println("alert('此用户不存在');");
                out.println("</script>");
                return "forward:/login.jsp";
            }
        }else if(type.equals("teacher")){
            Teacher teacher=new Teacher(id,pwd);
            Teacher teacher1=teacherService.checkExist(teacher);
            if(teacher1!=null){
                request.getSession().setAttribute("teacherUser",teacher1);
                return "forward:/teacher.jsp";
            }else {
                out.flush();
                out.println("<script>");
                out.println("alert('此用户不存在');");
                out.println("</script>");
                return "forward:/login.jsp";
            }
        }else {
            Admin admin=new Admin(id,pwd);
            Admin admin1=adminService.checkExist(admin);
            if(admin1!=null){
                return "forward:/admin.jsp";
            }else {
                out.flush();
                out.println("<script>");
                out.println("alert('此用户不存在');");
                out.println("</script>");
                return "forward:/login.jsp";
            }
        }
    }
}
