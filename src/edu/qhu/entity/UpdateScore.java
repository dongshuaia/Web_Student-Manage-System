package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/19 - 21:47
 */
public class UpdateScore {
    private String studentId;
    private String title;
    private String score;

    public UpdateScore() {
    }

    public UpdateScore(String studentId, String title) {
        this.studentId = studentId;
        this.title = title;
    }

    public UpdateScore(String studentId, String title, String score) {
        this.studentId = studentId;
        this.title = title;
        this.score = score;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
