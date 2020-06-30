package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/17 - 15:54
 */
public class StuUploadHomework {
    private String studentId;
    private String name;
    private String path;
    private String score;
    private String title;

    public StuUploadHomework() {
    }

    public StuUploadHomework(String studentId, String name, String path) {
        this.studentId = studentId;
        this.name = name;
        this.path = path;
    }

    public StuUploadHomework(String studentId, String name, String path, String title) {
        this.studentId = studentId;
        this.name = name;
        this.path = path;
        this.title = title;
    }

    public StuUploadHomework(String studentId, String name, String path, String score, String title) {
        this.studentId = studentId;
        this.name = name;
        this.path = path;
        this.score = score;
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
