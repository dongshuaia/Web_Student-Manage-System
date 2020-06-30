package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/18 - 17:00
 */
public class StudentGradeInfo {
    private String studentId;
    private String studentName;
    private String studentClass;
    private String score;
    private String title;
    private String deadline;

    public StudentGradeInfo() {
    }

    public StudentGradeInfo(String studentId, String studentName, String studentClass, String score, String title, String deadline) {
        this.studentId = studentId;
        this.studentName = studentName;
        this.studentClass = studentClass;
        this.score = score;
        this.title = title;
        this.deadline = deadline;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
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

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }
}
