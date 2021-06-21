package com.cs.ssm.entity;

import java.io.Serializable;

public class Commoditys implements Serializable {
    private static final long serialVersionUID = 1L;
    private int commodityId; // 商品编号
    private String imgNum;// 商品图片数量
    private String commodityName;// 商品名称
    private String commodityClass;// 商品种类
    private String commodityDepict;// 商品描述
    private double commodityPrice;// 商品价格
    private int commodityAmount;// 商品总量
    private int commodityQuantity;// 剩余数量
    private String commoditySpecs;// 商品规格

    public int getCommodityId() {
        return commodityId;
    }

    public void setCommodityId(int commodityId) {
        this.commodityId = commodityId;
    }

    public String getImgNum() {
        return imgNum;
    }

    public void setImgNum(String imgNum) {
        this.imgNum = imgNum;
    }

    public String getCommodityName() {
        return commodityName;
    }

    public void setCommodityName(String commodityName) {
        this.commodityName = commodityName;
    }

    public String getCommodityClass() {
        return commodityClass;
    }

    public void setCommodityClass(String commodityClass) {
        this.commodityClass = commodityClass;
    }

    public String getCommodityDepict() {
        return commodityDepict;
    }

    public void setCommodityDepict(String commodityDepict) {
        this.commodityDepict = commodityDepict;
    }

    public double getCommodityPrice() {
        return commodityPrice;
    }

    public void setCommodityPrice(double commodityPrice) {
        this.commodityPrice = commodityPrice;
    }

    public int getCommodityAmount() {
        return commodityAmount;
    }

    public void setCommodityAmount(int commodityAmount) {
        this.commodityAmount = commodityAmount;
    }

    public int getCommodityQuantity() {
        return commodityQuantity;
    }

    public void setCommodityQuantity(int commodityQuantity) {
        this.commodityQuantity = commodityQuantity;
    }

    public String getCommoditySpecs() {
        return commoditySpecs;
    }

    public void setCommoditySpecs(String commoditySpecs) {
        this.commoditySpecs = commoditySpecs;
    }

    @Override
    public String toString() {
        return "Commoditys{" +
                "commodityId=" + commodityId +
                ", imgNum='" + imgNum + '\'' +
                ", commodityName='" + commodityName + '\'' +
                ", commodityClass='" + commodityClass + '\'' +
                ", commodityDepict='" + commodityDepict + '\'' +
                ", commodityPrice=" + commodityPrice +
                ", commodityAmount=" + commodityAmount +
                ", commodityQuantity=" + commodityQuantity +
                ", commoditySpecs='" + commoditySpecs + '\'' +
                '}';
    }
}
