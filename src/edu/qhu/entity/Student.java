package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/11/19 - 11:51
 */
public class Student {
    private String studentId;
    private String studentPwd;
    private String studentName;
    private String studentClass;
    private String studentTel;

    public Student() {
    }

    public Student(String studentId, String studentPwd) {
        this.studentId = studentId;
        this.studentPwd = studentPwd;
    }

    public Student(String studentId, String studentPwd, String studentName, String studentClass, String studentTel) {
        this.studentId = studentId;
        this.studentPwd = studentPwd;
        this.studentName = studentName;
        this.studentClass = studentClass;
        this.studentTel = studentTel;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentPwd() {
        return studentPwd;
    }

    public void setStudentPwd(String studentPwd) {
        this.studentPwd = studentPwd;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getStudentClass() {
        return studentClass;
    }

    public void setStudentClass(String studentClass) {
        this.studentClass = studentClass;
    }

    public String getStudentTel() {
        return studentTel;
    }

    public void setStudentTel(String studentTel) {
        this.studentTel = studentTel;
    }
}
