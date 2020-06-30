package edu.qhu.service;

import edu.qhu.entity.*;

import java.util.List;

/**
 * @author 董帅
 * @date 2019/11/19 - 20:12
 */
public interface StudentService {
    Student checkExist(Student student);
    List<TeaUploadHomework> seeHomeworkFront();
    List<TeaUploadHomework> seeHomeworkBack();
    List<TeaUploadTeachFile> seeTeachFile();
    void uploadHomeworkFront(StuUploadHomework stuUploadHomework);
    void uploadHomeworkBack(StuUploadHomework stuUploadHomework);
    List<StuUploadHomework> seeHomeworkByselfFront(String studentId);
    List<StuUploadHomework> seeHomeworkByselfBack(String studentId);
    void leaveMessagesToTeacher(StuToTea stuToTea);
    List<Teacher> seeTeachers();
    List<Messages> seeMessagesStuToTea(String studentId);
    List<Messages> seeMessagesTeaToStu(String studentId);
    String queryIdByName(String Id);
    void deleteMessages(String sendTime);
    void deleteMessages_(String sendTime);
    Question getQuestions(String id);
    void changePassword(Student student);
}
