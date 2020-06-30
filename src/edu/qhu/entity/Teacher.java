package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/11/19 - 11:48
 */
public class Teacher {
    private String teacherId;
    private String teacherPwd;
    private String teacherName;

    public Teacher() {
    }

    public Teacher(String teacherId, String teacherPwd) {
        this.teacherId = teacherId;
        this.teacherPwd = teacherPwd;
    }

    public Teacher(String teacherId, String teacherPwd, String teacherName) {
        this.teacherId = teacherId;
        this.teacherPwd = teacherPwd;
        this.teacherName = teacherName;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId;
    }

    public String getTeacherPwd() {
        return teacherPwd;
    }

    public void setTeacherPwd(String teacherPwd) {
        this.teacherPwd = teacherPwd;
    }
}
