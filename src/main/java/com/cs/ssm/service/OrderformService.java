package com.cs.ssm.service;

import com.cs.ssm.entity.Orderform;
import com.github.pagehelper.PageInfo;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 15:29
 **/
public interface OrderformService {

     PageInfo<Orderform> pageOrderform(String searchOrderFormId, String searchSubmitTime, int pageNum, int pageSize);

    void addOrder(Orderform order);

    void updateOrder(Orderform order);

    Orderform findOrderById(int orderFormId);

    void deleteOrder(int orderFormId);

    void delOrders(String[] orderFormIds);

}
