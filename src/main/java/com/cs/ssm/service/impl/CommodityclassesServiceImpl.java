package com.cs.ssm.service.impl;

import com.cs.ssm.entity.Commodityclasses;
import com.cs.ssm.mapper.CommodityClassesMapper;
import com.cs.ssm.service.CommodityclassesService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 14:51
 **/
@Service
public class CommodityclassesServiceImpl implements CommodityclassesService {
    @Autowired
    private CommodityClassesMapper commodityClassesMapper;

    @Override
    public PageInfo<Commodityclasses> pageComClass(int pageNum, int pageSize) {
        return PageHelper.startPage(pageNum, pageSize)
                .doSelectPageInfo(() -> commodityClassesMapper.findAll());
    }

    @Override
    public void addComClasses(Commodityclasses com) {
        commodityClassesMapper.addComClasses(com);
    }

    @Override
    public Commodityclasses findCommodityById(int commodityId) {
        return commodityClassesMapper.findCommodityById(commodityId);
    }

    @Override
    public void deleteComClass(int commodityId) {
        commodityClassesMapper.deleteComClass(commodityId);
    }

    @Override
    public void delComClasses(String[] commodityIds) {
        commodityClassesMapper.delComClasses(commodityIds);
    }

    @Override
    public void updateComClasses(Commodityclasses com) {
        commodityClassesMapper.updateComClasses(com);
    }
}