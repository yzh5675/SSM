package com.cs.ssm.service.impl;

import com.cs.ssm.entity.Commoditys;
import com.cs.ssm.mapper.CommoditysMapper;
import com.cs.ssm.service.CommoditysService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 14:35
 **/
@Service
public class CommoditysServiceImpl implements CommoditysService {

    @Autowired
    private CommoditysMapper commoditysMapper;

    @Override
    public PageInfo<Commoditys> pageComs(String searchName, String searchClass, int pageNum, int pageSize) {
        if (searchName != null || searchClass!=null) {
            return PageHelper.startPage(pageNum, pageSize)
                    .doSelectPageInfo(() -> commoditysMapper.findLikeCom(searchName, searchClass));
        } else {
            return PageHelper.startPage(pageNum, pageSize)
                    .doSelectPageInfo(() -> commoditysMapper.findAll());
        }
    }

    @Override
    public void addCom(Commoditys com) {
        commoditysMapper.addCom(com);
    }

    @Override
    public Commoditys findComById(int commodityId) {
        return commoditysMapper.findComById(commodityId);
    }

    @Override
    public void deleteCom(int commodityId) {
        commoditysMapper.deleteCom(commodityId);
    }

    @Override
    public void delComs(String[] commodityIds) {
        commoditysMapper.delComs(commodityIds);
    }

    @Override
    public void updateCom(Commoditys com) {
        commoditysMapper.updateCom(com);
    }
}