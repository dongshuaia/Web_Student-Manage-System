package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/18 - 15:43
 */
public class StudentInfo {
    private String studentId;
    private String studentPwd;
    private String studentName;
    private String studentClass;
    private String studentTel;
    private String score;
    private String title;
    private String deadline;

    public StudentInfo() {
    }

    public StudentInfo(String studentId, String studentPwd, String studentName, String studentClass, String studentTel, String score, String title, String deadline) {
        this.studentId = studentId;
        this.studentPwd = studentPwd;
        this.studentName = studentName;
        this.studentClass = studentClass;
        this.studentTel = studentTel;
        this.score = score;
        this.title = title;
        this.deadline = deadline;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
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


    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
