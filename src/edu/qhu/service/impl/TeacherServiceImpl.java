package edu.qhu.service.impl;

import edu.qhu.entity.*;
import edu.qhu.mapper.TeacherMapper;
import edu.qhu.service.TeacherService;

import java.util.List;

/**
 * @author 董帅
 * @date 2019/11/19 - 12:16
 */
public class TeacherServiceImpl implements TeacherService {
    TeacherMapper teacherMapper;

    public void setTeacherMapper(TeacherMapper teacherMapper) {
        this.teacherMapper = teacherMapper;
    }

    @Override
    public Teacher queryTeacherById(String teacherId) {
        return teacherMapper.queryTeacherById(teacherId);
    }

    @Override
    public Teacher checkExist(Teacher teacher) {
        return teacherMapper.checkExist(teacher);
    }

    @Override
    public void addStudent(Student student) {
        this.teacherMapper.addStudent(student);
        return;
    }

    @Override
    public void deleteStudent(Student student) {
        this.teacherMapper.deleteStudent(student);
        return;
    }

    @Override
    public List<Student> queryAllStudents() {
        return teacherMapper.queryAllStudents();
    }

    @Override
    public void deleteStudentById(String studentId) {
        this.teacherMapper.deleteStudentById(studentId);
        return;
    }

    @Override
    public void uploadHomeworkFront(TeaUploadHomework teaUploadHomework) {
        this.teacherMapper.uploadHomeworkFront(teaUploadHomework);
        return;
    }

    @Override
    public void uploadHomeworkBack(TeaUploadHomework teaUploadHomework) {
        this.teacherMapper.uploadHomeworkBack(teaUploadHomework);
        return;
    }

    @Override
    public void uploadTeachFile(TeaUploadTeachFile teaUploadTeachFile) {
        this.teacherMapper.uploadTeachFile(teaUploadTeachFile);
        return;
    }

    @Override
    public List<String> checkHomeworkInfoTitleFront() {
        return this.teacherMapper.checkHomeworkInfoTitleFront();
    }

    @Override
    public List<String> checkHomeworkInfoTitleBack() {
        return this.teacherMapper.checkHomeworkInfoTitleBack();
    }

    @Override
    public List<StuUploadHomework> checkHomeworkInfoFront(String title) {
        return this.teacherMapper.checkHomeworkInfoFront(title);
    }

    @Override
    public List<StuUploadHomework> checkHomeworkInfoBack(String title) {
        return this.teacherMapper.checkHomeworkInfoBack(title);
    }

    @Override
    public List<StudentInfo> seeStudentInfoFront(String studentId) {
        return this.teacherMapper.seeStudentInfoFront(studentId);
    }

    @Override
    public List<StudentInfo> seeStudentInfoBack(String studentId) {
        return this.teacherMapper.seeStudentInfoBack(studentId);
    }

    @Override
    public List<StudentGradeInfo> exportGradeFront() {
        return this.teacherMapper.exportGradeFront();
    }

    @Override
    public List<StudentGradeInfo> exportGradeBack() {
        return this.teacherMapper.exportGradeBack();
    }

    @Override
    public List<Messages> seeMessages(String Id) {
        return this.teacherMapper.seeMessages(Id);
    }

    @Override
    public void replyMessages(TeaToStu teaToStu) {
        this.teacherMapper.replyMessages(teaToStu);
    }

    @Override
    public String queryIdByName(String name) {
        return this.teacherMapper.queryIdByName(name);
    }

    @Override
    public void updateScoreFront(UpdateScore updateScore) {
        this.teacherMapper.updateScoreFront(updateScore);
        return;
    }

    @Override
    public void updateScoreBack(UpdateScore updateScore) {
        this.teacherMapper.updateScoreBack(updateScore);
        return;
    }

    @Override
    public List<StuUploadHomework> isFront(String studentId) {
        return this.teacherMapper.isFront(studentId);
    }

    @Override
    public List<Student> checkStudentIsOrNotExist(Student student) {
        return this.teacherMapper.checkStudentIsOrNotExist(student);
    }

    @Override
    public void changePassword(Teacher teacher) {
        this.teacherMapper.changePassword(teacher);
        return;
    }

    @Override
    public void deleteTeachFileByName(String name) {
        this.teacherMapper.deleteTeachFileByName(name);
        return;
    }

    @Override
    public void deleteTeachFileAll() {
        this.teacherMapper.deleteTeachFileAll();
        return;
    }

    @Override
    public List<TeaUploadTeachFile> seeTeachFile(String teacherName) {
        return this.teacherMapper.seeTeachFile(teacherName);
    }


}
