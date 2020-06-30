package edu.qhu.mapper;

import edu.qhu.entity.Admin;
import edu.qhu.entity.Teacher;

import java.util.List;

/**
 * @author 董帅
 * @date 2019/12/23 - 16:40
 */
public interface AdminMapper {
    Admin checkExist(Admin admin);
    List<Teacher> seeTeachersInfo();
    void addTeacher(Teacher teacher);
    void deleteTeacher(Teacher teacher);
    List<Teacher> seeTeacherIsOrNotExist(Teacher teacher);
    void deleteTeacherById(String teacherId);
}
