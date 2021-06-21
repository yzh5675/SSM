package com.cs.ssm.controller;

import com.cs.ssm.entity.Commodityclasses;
import com.cs.ssm.entity.Commoditys;
import com.cs.ssm.mapper.CommodityClassesMapper;
import com.cs.ssm.service.CommodityclassesService;
import com.cs.ssm.service.CommoditysService;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 14:45
 **/
@Controller
public class CommoditysController {

    @Autowired
    private CommoditysService commoditysService;

    @Autowired
    private CommodityclassesService commodityclassesService;

    @Autowired
    private CommodityClassesMapper commodityClassesMapper;

    @RequestMapping(value = "/coms/{pageNum}", method = RequestMethod.GET)
    public String coms(
            @RequestParam(value = "searchName", required = false, defaultValue = "") String searchName,
            @RequestParam(value = "searchClass", required = false, defaultValue = "") String searchClass,
            @PathVariable("pageNum") Integer pageNum, Map<String, Object> map) {
        PageInfo<Commoditys> pe = commoditysService.pageComs(searchName, searchClass, pageNum, 5);
        map.put("list", pe.getList());
        map.put("pageNum", pe.getPageNum());
        map.put("totalPage", pe.getPages());
        map.put("total", pe.getTotal());
        List<Commodityclasses> comclass = commodityClassesMapper.findAll();
        map.put("comclass", comclass);
        map.put("searchClass", searchClass);
        //测试
        System.out.println(searchName + searchClass);
        return "commanage";
    }

    @RequestMapping(value = "/comsadd", method = RequestMethod.POST)
    public String add(@ModelAttribute Commoditys commoditys) {
        System.out.println("add : " + commoditys);
        commoditysService.addCom(commoditys);
        //重定向
        return "redirect:/coms/1";
    }

    @RequestMapping(value = "/tocomsupdate/{commodityId}", method = RequestMethod.GET)
    public String toUpdate(@PathVariable("commodityId") Integer commodityId, Model model){
        Commoditys coms = commoditysService.findComById(commodityId);
        System.out.println(coms);
        model.addAttribute("coms", coms);
        return "redirect:/coms/1";
    }
    //跳转到编辑页面
    @RequestMapping(value = "/comsupdate", method = RequestMethod.POST)
    public String update( Commoditys commoditys) {
        commoditysService.updateCom(commoditys);
        //重定向
        return "redirect:/coms/1";
    }

    //删除
    @RequestMapping(value = "/deletecom?{commodityId}", method = RequestMethod.GET)
    public String deleteCom(@PathVariable("commodityId") Integer commodityId,
                            @PathVariable("pageNum") Integer pageNum) {
        commoditysService.deleteCom(commodityId);
        //转发
        return "redirect:/coms/" + pageNum;
    }
}