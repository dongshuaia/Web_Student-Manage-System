package edu.qhu.service.impl;

import edu.qhu.entity.*;
import edu.qhu.mapper.StudentMapper;
import edu.qhu.service.StudentService;

import java.util.List;

/**
 * @author 董帅
 * @date 2019/11/19 - 20:12
 */
public class StudentServiceImpl implements StudentService {
    private StudentMapper studentMapper;

    public void setStudentMapper(StudentMapper studentMapper) {
        this.studentMapper = studentMapper;
    }

    @Override
    public Student checkExist(Student student) {
        return studentMapper.checkExist(student);
    }

    @Override
    public List<TeaUploadHomework> seeHomeworkFront() {
        return this.studentMapper.seeHomeworkFront();
    }

    @Override
    public List<TeaUploadHomework> seeHomeworkBack() {
        return this.studentMapper.seeHomeworkBack();
    }

    @Override
    public List<TeaUploadTeachFile> seeTeachFile() {
        return this.studentMapper.seeTeachFile();
    }

    @Override
    public void uploadHomeworkFront(StuUploadHomework stuUploadHomework) {
        this.studentMapper.uploadHomeworkFront(stuUploadHomework);
        return;
    }

    @Override
    public void uploadHomeworkBack(StuUploadHomework stuUploadHomework) {
        this.studentMapper.uploadHomeworkBack(stuUploadHomework);
        return;
    }

    @Override
    public List<StuUploadHomework> seeHomeworkByselfFront(String studentId) {
        return this.studentMapper.seeHomeworkByselfFront(studentId);
    }

    @Override
    public List<StuUploadHomework> seeHomeworkByselfBack(String studentId) {
        return this.studentMapper.seeHomeworkByselfBack(studentId);
    }

    @Override
    public void leaveMessagesToTeacher(StuToTea stuToTea) {
        this.studentMapper.leaveMessagesToTeacher(stuToTea);
        return;
    }

    @Override
    public List<Teacher> seeTeachers() {
        return this.studentMapper.seeTeachers();
    }

    @Override
    public List<Messages> seeMessagesStuToTea(String studentId) {
        return this.studentMapper.seeMessagesStuToTea(studentId);
    }

    @Override
    public List<Messages> seeMessagesTeaToStu(String studentId) {
        return this.studentMapper.seeMessagesTeaToStu(studentId);
    }

    @Override
    public String queryIdByName(String Id) {
        return this.studentMapper.queryIdByName(Id);
    }

    @Override
    public void deleteMessages(String sendTime) {
        this.studentMapper.deleteMessages(sendTime);
        return;
    }

    @Override
    public void deleteMessages_(String sendTime) {
        this.studentMapper.deleteMessages_(sendTime);
        return;
    }

    @Override
    public Question getQuestions(String id) {
        return this.studentMapper.getQuestions(id);
    }

    @Override
    public void changePassword(Student student) {
        this.studentMapper.changePassword(student);
        return;
    }
}
