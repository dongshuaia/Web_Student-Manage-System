package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/19 - 9:39
 */
public class TeaToStu {
    private String teacherId;
    private String studentId;
    private String context;
    private String time;

    public TeaToStu() {
    }

    public TeaToStu(String teacherId, String studentId, String context, String time) {
        this.teacherId = teacherId;
        this.studentId = studentId;
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
