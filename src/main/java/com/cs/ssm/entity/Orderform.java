package com.cs.ssm.entity;

import java.io.Serializable;

public class Orderform implements Serializable {
    private static final long serialVersionUID = 1L;
    private int orderFormId;
    private String username;
    private String phone;
    private String orderAddress;
    private String totalPrice;
    private String payMethod;
    private String submitTime;
    private String status;

    public int getOrderFormId() {
        return orderFormId;
    }

    public void setOrderFormId(int orderFormId) {
        this.orderFormId = orderFormId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getPayMethod() {
        return payMethod;
    }

    public void setPayMethod(String payMethod) {
        this.payMethod = payMethod;
    }

    public String getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(String submitTime) {
        this.submitTime = submitTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }


}
