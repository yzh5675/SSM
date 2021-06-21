package com.cs.ssm.service;

import com.cs.ssm.entity.Commoditys;
import com.cs.ssm.entity.User;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 15:02
 **/
public interface UserService {

     PageInfo<User> pageUser(String phone, int pageNum, int pageSize);

    User findUserById(int userId);

    void deleteUser(int userId);

    void delUsers(String[] userIds);

}