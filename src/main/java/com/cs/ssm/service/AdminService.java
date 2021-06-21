package com.cs.ssm.service;

import com.cs.ssm.entity.Admin;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 8:41
 **/
public interface AdminService {

    Admin adminLogin(String adminName, String adminPassword);

}
