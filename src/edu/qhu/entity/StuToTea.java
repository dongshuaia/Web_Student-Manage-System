package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/18 - 23:22
 */
public class StuToTea {
    private String studentId;
    private String teacherId;
    private String context;
    private String time;

    public StuToTea() {
    }

    public StuToTea(String studentId, String teacherId, String context, String time) {
        this.studentId = studentId;
        this.teacherId = teacherId;
        this.context = context;
        this.time = time;
    }

    public String getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(String teacherId) {
        this.teacherId = teacherId;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getContext() {
        return context;
    }

    public void setContext(String context) {
        this.context = context;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
