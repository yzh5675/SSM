package com.cs.ssm.entity;

import java.io.Serializable;

public class Admin implements Serializable {
    private static final long serialVersionUID = 1L;
    private int adminId;            //管理员编号
    private String adminName;        //管理员用户名
    private String adminPassword;    //管理员密码

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }
}
