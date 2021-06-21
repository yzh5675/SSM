package com.cs.ssm.mapper;

import com.cs.ssm.entity.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 14:57
 **/
public interface UserMapper {

    @Select("select * from user")
    List<User> findAll();

    @Select("select * from user where userId=#{userId} ")
    User findUserById(int userId);

    @Delete("delete from user where userId=#{userId} ")
    int deleteUser(int userId);

    @Delete("delete from user where userId=#{userIds} ")
    int delUsers(String[] userIds);

    @Select("SELECT * FROM user WHERE phone LIKE '%${phone}%' ")
    List<User> findUserByPhone(String phone);
}
