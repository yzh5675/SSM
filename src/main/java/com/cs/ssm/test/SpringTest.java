package com.cs.ssm.test;


import com.cs.ssm.entity.User;
import com.cs.ssm.mapper.OrderformMapper;
import com.cs.ssm.mapper.UserMapper;
import com.cs.ssm.service.OrderformService;

import com.cs.ssm.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;


/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/16/ 19:41
 **/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:applicationContext.xml"})
public class SpringTest {
    @Autowired
    private OrderformService orderformService;

    @Resource
    private OrderformMapper orderformMapper;

    @Autowired
    private UserService userService;

    @Resource
    private UserMapper userMapper;
    @Test
    public void  test01(){
        //System.out.println(orderformMapper.findAll().get(0));
        System.out.println(orderformMapper.findLikeOrders("14","2021"));
    }

    @Test
    public void test02(){
        System.out.println(userMapper.findUserByPhone("131"));
    }
}

