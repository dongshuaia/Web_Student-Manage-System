package edu.qhu.service;

import edu.qhu.entity.*;

import java.util.List;

/**
 * @author 董帅
 * @date 2019/11/19 - 12:17
 */
public interface TeacherService {
    Teacher queryTeacherById(String teacherId);
    Teacher checkExist(Teacher teacher);
    void addStudent(Student student);
    void deleteStudent(Student student);
    List<Student> queryAllStudents();
    void deleteStudentById(String studentId);
    void uploadHomeworkFront(TeaUploadHomework teaUploadHomework);
    void uploadHomeworkBack(TeaUploadHomework teaUploadHomework);
    void uploadTeachFile(TeaUploadTeachFile teaUploadTeachFile);
    List<String> checkHomeworkInfoTitleFront();
    List<String> checkHomeworkInfoTitleBack();
    List<StuUploadHomework> checkHomeworkInfoFront(String title);
    List<StuUploadHomework> checkHomeworkInfoBack(String title);
    List<StudentInfo> seeStudentInfoFront(String studentId);
    List<StudentInfo> seeStudentInfoBack(String studentId);
    List<StudentGradeInfo> exportGradeFront();
    List<StudentGradeInfo> exportGradeBack();
    List<Messages> seeMessages(String Id);
    void replyMessages(TeaToStu teaToStu);
    String queryIdByName(String name);
    void updateScoreFront(UpdateScore updateScore);
    void updateScoreBack(UpdateScore updateScore);
    List<StuUploadHomework> isFront(String studentId);
    List<Student> checkStudentIsOrNotExist(Student student);
    void changePassword(Teacher teacher);
    void deleteTeachFileByName(String name);
    void deleteTeachFileAll();
    List<TeaUploadTeachFile> seeTeachFile(String teacherName);
}
