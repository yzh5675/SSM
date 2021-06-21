package com.cs.ssm.controller;

import com.cs.ssm.entity.User;
import com.cs.ssm.service.UserService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 15:43
 **/
@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/users/{pageNum}", method = RequestMethod.GET)
    public String users(
            @RequestParam(value = "phone", required = false, defaultValue = "") String phone,
            @PathVariable("pageNum") Integer pageNum, Map<String, Object> map){
        PageInfo<User> pe =userService.pageUser(phone,pageNum, 5);
        map.put("list", pe.getList());
        map.put("pageNum", pe.getPageNum());
        map.put("totalPage", pe.getPages());
        map.put("total", pe.getTotal());
        map.put("phone",phone);
        return "usermanage";
    }
    //删除
    @RequestMapping(value = "/deleteuser?{userId}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable("userId") Integer userId) {
        userService.deleteUser(userId);
        //转发
        return "redirect:/users/1";
    }
}