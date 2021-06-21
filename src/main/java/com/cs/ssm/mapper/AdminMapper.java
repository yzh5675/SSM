package com.cs.ssm.mapper;

import com.cs.ssm.entity.Admin;
import com.cs.ssm.entity.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 8:34
 **/
public interface AdminMapper {

    @Select("select * from admin where adminName=#{adminName} and adminPassword=#{adminPassword} ")
    public Admin findAdmin(@Param("adminName") String adminName, @Param("adminPassword") String adminPassword);

    @Select("select * from admin where adminName=#{adminName}")
    public Admin getAdminByName( String adminName);
}