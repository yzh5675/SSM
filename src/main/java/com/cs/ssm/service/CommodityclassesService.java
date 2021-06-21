package com.cs.ssm.service;

import com.cs.ssm.entity.Commodityclasses;
import com.github.pagehelper.PageInfo;


/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 14:48
 **/
public interface CommodityclassesService {

    public PageInfo<Commodityclasses> pageComClass(int pageNum, int pageSize);

    void addComClasses(Commodityclasses com);

    Commodityclasses findCommodityById(int commodityId);

    void deleteComClass(int commodityId);

    void delComClasses(String[] commodityIds);

    void updateComClasses(Commodityclasses com);

}
