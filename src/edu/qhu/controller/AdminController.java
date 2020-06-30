package edu.qhu.controller;

import edu.qhu.entity.Teacher;
import edu.qhu.service.impl.AdminServiceImpl;
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
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.List;

/**
 * @author 董帅
 * @date 2019/12/23 - 16:36
 */
@RequestMapping("admin-link")
@Controller
public class AdminController {
    @Autowired
    @Qualifier("adminService")
    private AdminServiceImpl adminService;

    //管理员添加老师
    @RequestMapping("addTeacher")
    public String addTeacher(HttpServletResponse response, @RequestParam("teacherName") String teachername, @RequestParam("teacherId") String teacherId, @RequestParam("teacherPwd") String teacherPwd) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Teacher teacher=new Teacher();
        teacher.setTeacherName(teachername);
        teacher.setTeacherId(teacherId);
        teacher.setTeacherPwd(teacherPwd);
        adminService.addTeacher(teacher);
        out.flush();
        out.println("<script>");
        out.println("alert('添加成功');");
        out.println("</script>");
        return "forward:/admin-link/admin-addTeacher.jsp";
    }

    @RequestMapping("addTeacherByTwo")
    public String addTeacherByTwo(HttpServletResponse response, @RequestParam("teacherName") String teachername, @RequestParam("teacherId") String teacherId, @RequestParam("teacherPwd") String teacherPwd) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Teacher teacher=new Teacher();
        teacher.setTeacherName(teachername);
        teacher.setTeacherId(teacherId);
        teacher.setTeacherPwd(teacherPwd);
        adminService.addTeacher(teacher);
        out.flush();
        out.println("<script>");
        out.println("alert('添加成功');");
        out.println("</script>");
        return "forward:/admin-link/manageTeacher";
    }

    //管理员批量添加老师
    @RequestMapping("addTeachers")
    public String addTeachers(HttpServletResponse response, @RequestParam("teachersInfoFile") MultipartFile teacherInfoFile) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Workbook wb=null;
        Sheet sheet;
        Row row;
        String name=teacherInfoFile.getOriginalFilename();
        String ext=name.substring(name.lastIndexOf("."));
        try {
            InputStream is=teacherInfoFile.getInputStream();
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
            Teacher teacher=new Teacher();
            for(int i=1;i<rowNum;i++){
                row=sheet.getRow(i);
                for(int j=0;j<colNum;j++){
                    if(j==0){
                        teacher.setTeacherName(getCellFormatValue(row.getCell(j)).toString());
                    }else if(j==1){
                        teacher.setTeacherId(getCellFormatValue(row.getCell(j)).toString());
                    }else if(j==2){
                        teacher.setTeacherPwd(getCellFormatValue(row.getCell(j)).toString());
                    }
                }
                adminService.addTeacher(teacher);
            }
        }
        out.flush();
        out.println("<script>");
        out.println("alert('导入成功');");
        out.println("</script>");
        return "forward:/admin-link/admin-addTeacher.jsp";
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

    //管理员删除老师
    @RequestMapping("deleteTeacher")
    public String deleteTeacher(HttpServletResponse response,@RequestParam("teacherName") String teacherName, @RequestParam("teacherId") String teacherTd) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        Teacher teacher=new Teacher();
        teacher.setTeacherName(teacherName);
        teacher.setTeacherId(teacherTd);
        List<Teacher> teachers = adminService.seeTeacherIsOrNotExist(teacher);
        if(teachers.size()==0){
            out.flush();
            out.println("<script>");
            out.println("alert('删除失败，该用户信息有误');");
            out.println("</script>");
        }else {
            adminService.deleteTeacher(teacher);
            out.flush();
            out.println("<script>");
            out.println("alert('删除成功');");
            out.println("</script>");
        }
        return "forward:/admin-link/admin-deleteTeacher.jsp";
    }

    @RequestMapping("deleteTeacherById/{teacherId}")
    public String deleteTeacherById(@PathVariable("teacherId") String teacherId){
        adminService.deleteTeacherById(teacherId);
        return "redirect:/admin-link/manageTeacher";
    }

    //管理员管理老师
    @RequestMapping("manageTeacher")
    public String manageTeacher(HttpServletRequest request){
        List<Teacher> teachers = adminService.seeTeachersInfo();
        request.setAttribute("manageTeachers",teachers);
        return "forward:/admin-link/admin-manageTeacher.jsp";
    }
}
