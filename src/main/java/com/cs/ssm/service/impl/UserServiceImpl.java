package com.cs.ssm.service.impl;

import com.cs.ssm.entity.User;
import com.cs.ssm.mapper.UserMapper;
import com.cs.ssm.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 15:04
 **/
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public PageInfo<User> pageUser(String phone, int pageNum, int pageSize) {
        if(phone != null) {
            return PageHelper.startPage(pageNum, pageSize)
                    .doSelectPageInfo(()->userMapper.findUserByPhone(phone));
        }else {
            return PageHelper.startPage(pageNum, pageSize)
                    .doSelectPageInfo(()->userMapper.findAll());
        }
    }

    @Override
    public User findUserById(int userId) {
        return userMapper.findUserById(userId);
    }

    @Override
    public void deleteUser(int userId) {
        userMapper.deleteUser(userId);
    }

    @Override
    public void delUsers(String[] userIds) {
        userMapper.delUsers(userIds);
    }
}