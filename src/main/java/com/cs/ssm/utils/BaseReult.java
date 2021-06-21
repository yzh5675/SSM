package com.cs.ssm.utils;

public class BaseReult {

    private int code;  //0:成功，1：有问题

    private String msg;  //返回的信息

    private Object obj;

    public BaseReult(int code, String msg, Object obj) {
        this.code = code;
        this.msg = msg;
        this.obj = obj;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }

    public static BaseReult getBaseReult(int code, String msg, Object obj) {
        return new BaseReult(code,msg,obj);
    }
}
