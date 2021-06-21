package com.cs.ssm.service.impl;

import com.cs.ssm.entity.Orderform;
import com.cs.ssm.mapper.OrderformMapper;
import com.cs.ssm.service.OrderformService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 15:38
 **/
@Service
public class OrderformServiceImpl implements OrderformService {
    @Autowired
    private OrderformMapper orderformMapper;

    @Override
    public PageInfo<Orderform> pageOrderform(String searchOrderFormId, String searchSubmitTime, int pageNum, int pageSize) {
        if (searchOrderFormId != null || searchSubmitTime!=null) {
            return PageHelper.startPage(pageNum, pageSize)
                    .doSelectPageInfo(() -> orderformMapper.findLikeOrders(searchOrderFormId,searchSubmitTime));
        } else {
            return PageHelper.startPage(pageNum, pageSize)
                    .doSelectPageInfo(() -> orderformMapper.findAll());
        }
    }

    @Override
    public void addOrder(Orderform order) {
        orderformMapper.addOrder(order);
    }

    @Override
    public void updateOrder(Orderform order) {
        orderformMapper.updateOrder(order);
    }

    @Override
    public Orderform findOrderById(int orderFormId) {
        return orderformMapper.findOrderById(orderFormId);
    }

    @Override
    public void deleteOrder(int orderFormId) {
        orderformMapper.deleteOrder(orderFormId);
    }

    @Override
    public void delOrders(String[] orderFormIds) {
        orderformMapper.delOrders(orderFormIds);
    }
}