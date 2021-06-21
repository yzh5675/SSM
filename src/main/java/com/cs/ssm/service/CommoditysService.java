package com.cs.ssm.service;

import com.cs.ssm.entity.Commoditys;
import com.github.pagehelper.PageInfo;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 14:30
 **/
public interface CommoditysService {

    public PageInfo<Commoditys> pageComs(String searchName,String searchClass, int pageNum, int pageSize);

    void addCom(Commoditys com);

    Commoditys findComById(int commodityId);

    void deleteCom(int commodityId);

    void delComs(String[] commodityIds);

    void updateCom(Commoditys com);

}