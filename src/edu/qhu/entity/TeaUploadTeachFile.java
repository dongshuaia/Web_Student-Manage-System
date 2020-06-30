package edu.qhu.entity;

/**
 * @author 董帅
 * @date 2019/12/15 - 18:54
 */
public class TeaUploadTeachFile {
    private String name;
    private String path;
    private String releaseDate;
    private String teacherName;

    public TeaUploadTeachFile() {
    }

    public TeaUploadTeachFile(String name, String path) {
        this.name = name;
        this.path = path;
    }

    public TeaUploadTeachFile(String name, String path, String releaseDate, String teacherName) {
        this.name = name;
        this.path = path;
        this.releaseDate = releaseDate;
        this.teacherName = teacherName;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
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
