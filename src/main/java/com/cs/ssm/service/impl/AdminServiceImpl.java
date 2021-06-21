package com.cs.ssm.service.impl;

import com.cs.ssm.entity.Admin;
import com.cs.ssm.entity.User;
import com.cs.ssm.mapper.AdminMapper;
import com.cs.ssm.service.AdminService;
import com.cs.ssm.utils.BaseException;
import com.cs.ssm.utils.MD5Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 8:43
 **/
@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin adminLogin(String adminName, String adminPassword) {
        Admin admin = adminMapper.getAdminByName(adminName);
        System.out.println(admin.getAdminPassword()+",,,,,"+adminPassword);
        //判断用户名
        if (adminName == null) {
            throw new BaseException("用户名不存在");
        }
        //判断密码
        if (!admin.getAdminPassword().equals(adminPassword)) {
            throw new BaseException("密码不正确");
        }
        return admin;
    }

}