package com.cs.ssm.controller;

import com.cs.ssm.entity.Admin;
import com.cs.ssm.service.AdminService;
import com.cs.ssm.utils.BaseException;
import com.cs.ssm.utils.RandomValidateCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 8:49
 **/
@Controller
public class AdminLoginController {
    @Autowired
    private AdminService adminService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(HttpSession session, String sessionId) {
        return "adminlogin";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String adminLogin(@RequestParam("adminName") String adminName,
                             @RequestParam("adminPassword") String adminPassword,
                             @RequestParam("checkCodes") String checkCodes,
                             HttpSession session, Model model) {
        String rightcheckCodes = (String) session.getAttribute("randomcode_key");
        System.out.println(rightcheckCodes+"========"+checkCodes);
        if(checkCodes.equalsIgnoreCase(rightcheckCodes)){
            try {
                Admin admin = adminService.adminLogin(adminName, adminPassword);
                session.setAttribute("admin", admin);
                session.setAttribute("adminName", adminName);

                session.getAttribute("randomcode_key");
                System.out.println(session.getAttribute("randomcode_key"));
                session.setAttribute("randomcode_key",session.getAttribute("randomcode_key"));
               // req.getSession().getAttribute("randomcode_key");
               // System.out.println( req.getSession().getAttribute("randomcode_key"));
                //req.setAttribute("randomcode_key",req.getSession().getAttribute("randomcode_key"));
                return "redirect:/users/1";
            }catch (BaseException e){
                session.setAttribute("msg",e.getMessage());
                //model.addAttribute("msg", e.getMessage());
                return "adminlogin";
            }
        }else{
            session.setAttribute("msg","验证码错误!");
            //model.addAttribute("msg","验证码错误!");
            return "adminlogin";
        }
    }

    @RequestMapping(value = "/loginout", method = RequestMethod.GET)
    public String loginout(HttpSession session) {
        session.removeAttribute("admin");
        return "login";
    }

    @RequestMapping(value = "/checkCode", method = RequestMethod.GET)
    public void checkCode(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        //设置相应类型,告诉浏览器输出的内容为图片
        resp.setContentType("image/jpeg");

        //设置响应头信息，告诉浏览器不要缓存此内容
        resp.setHeader("pragma", "no-cache");
        resp.setHeader("Cache-Control", "no-cache");
        resp.setDateHeader("Expire", 0);
        RandomValidateCode randomValidateCode = new RandomValidateCode();

        try {
            randomValidateCode.getRandcode(req, resp);//输出图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}