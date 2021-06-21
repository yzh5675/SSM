package com.cs.ssm.controller;

import com.cs.ssm.entity.Orderform;
import com.cs.ssm.service.OrderformService;
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
 * @Date 2021/06/15/ 15:45
 **/
@Controller
public class OrderformController {

    @Autowired
    private OrderformService orderformService;

    @RequestMapping(value = "/orders/{pageNum}", method = RequestMethod.GET)
    public String orders(
            @RequestParam(value = "searchOrderFormId", required = false, defaultValue = "") String searchOrderFormId,
            @RequestParam(value = "searchSubmitTime", required = false, defaultValue = "") String searchSubmitTime,
            @PathVariable("pageNum") Integer pageNum, Map<String, Object> map) {
        PageInfo<Orderform> pe = orderformService.pageOrderform(searchOrderFormId, searchSubmitTime, pageNum, 5);
        map.put("list", pe.getList());
        map.put("pageNum", pe.getPageNum());
        map.put("totalPage", pe.getPages());
        map.put("total", pe.getTotal());
        map.put("searchOrderFormId", searchOrderFormId);
        map.put("searchSubmitTime", searchSubmitTime);
        //测试
        //System.out.println(pe.getList().get(0).getPhone());

        System.out.println(searchOrderFormId + searchSubmitTime);
        return "ordermanage";
    }

    //删除
    @RequestMapping(value = "/deletorder?{orderformId}", method = RequestMethod.GET)
    public String deleteCom(@PathVariable("orderformId") Integer orderformId,
                            @PathVariable("pageNum") Integer pageNum) {
        orderformService.deleteOrder(orderformId);
        //转发
        return "redirect:/orders" + pageNum;
    }
}