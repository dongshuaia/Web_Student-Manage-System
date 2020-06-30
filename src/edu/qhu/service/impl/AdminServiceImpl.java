package edu.qhu.service.impl;

import edu.qhu.entity.Admin;
import edu.qhu.entity.Teacher;
import edu.qhu.mapper.AdminMapper;
import edu.qhu.service.AdminService;

import java.util.List;

/**
 * @author 董帅
 * @date 2019/12/23 - 16:37
 */
public class AdminServiceImpl implements AdminService {
    private AdminMapper adminMapper;

    public void setAdminMapper(AdminMapper adminMapper) {
        this.adminMapper = adminMapper;
    }

    @Override
    public Admin checkExist(Admin admin) {
        return this.adminMapper.checkExist(admin);
    }

    @Override
    public List<Teacher> seeTeachersInfo() {
        return this.adminMapper.seeTeachersInfo();
    }

    @Override
    public void addTeacher(Teacher teacher) {
        this.adminMapper.addTeacher(teacher);
        return;
    }

    @Override
    public void deleteTeacher(Teacher teacher) {
        this.adminMapper.deleteTeacher(teacher);
    }

    @Override
    public List<Teacher> seeTeacherIsOrNotExist(Teacher teacher) {
        return this.adminMapper.seeTeacherIsOrNotExist(teacher);
    }

    @Override
    public void deleteTeacherById(String teacherId) {
        this.adminMapper.deleteTeacherById(teacherId);
    }

}
