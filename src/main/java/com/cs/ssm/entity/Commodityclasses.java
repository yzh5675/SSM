package com.cs.ssm.entity;

import java.io.Serializable;

public class Commodityclasses implements Serializable {
    private static final long serialVersionUID = 1L;
    private int commodityId;        //商品种类编号
    private String commodityClass;    //商品种类名称

    public int getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(int commodityId) {
        this.commodityId = commodityId;
    }

    public String getCommodityClass() {
        return commodityClass;
    }

    public void setCommodityClass(String commodityClass) {
        this.commodityClass = commodityClass;
    }
}
