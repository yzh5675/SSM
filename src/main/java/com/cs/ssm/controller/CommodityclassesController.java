package com.cs.ssm.controller;

import com.cs.ssm.entity.Commodityclasses;
import com.cs.ssm.entity.Commoditys;
import com.cs.ssm.service.CommodityclassesService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 14:56
 **/
@Controller
public class CommodityclassesController {

    @Autowired
    private CommodityclassesService commodityclassesService;

    @RequestMapping(value="/comclass/{pageNum}", method = RequestMethod.GET)
    public String comclass(@PathVariable("pageNum") Integer pageNum, Map<String, Object> map) {
        PageInfo<Commodityclasses> pe = commodityclassesService.pageComClass( pageNum, 5);
        map.put("list", pe.getList());
        map.put("pageNum", pe.getPageNum());
        map.put("totalPage", pe.getPages());
        map.put("total", pe.getTotal());
        return "classmanage";
    }

    @RequestMapping(value = "/comclassadd", method = RequestMethod.POST)
    public String add(@ModelAttribute Commodityclasses commodityclasses) {
        System.out.println("add : " + commodityclasses);
        commodityclassesService.addComClasses(commodityclasses);
        //重定向
        return "redirect:/comclass/1";
    }
}