package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/15 - 16:34
 */
public class TeaUploadHomework {
    private String title;
    private String path;
    private String deadline;
    private String teacherName;

    public TeaUploadHomework() {
    }

    public TeaUploadHomework(String title, String path) {
        this.title = title;
        this.path = path;
    }

    public TeaUploadHomework(String title, String path, String deadline, String teacherName) {
        this.title = title;
        this.path = path;
        this.deadline = deadline;
        this.teacherName = teacherName;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
}
