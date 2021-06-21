<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
        #checkCodes {
            float: right;
            height: 42px;
            width: 150px;
            cursor: pointer;
            background: #fff;
            border: 1px solid #ccc;
            border-radius: 3px;
            text-align: center;
        }

        #VerticalCenteredBox {
            width: 500px;
            height: 350px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin: -159.5px 0 0 -234.5px;
            background: rgba(245, 245, 245, .7);
            border-bottom-left-radius: 5px;
            border-bottom-right-radius: 5px;
        }

        #RightBox{
            width: 99px;
            height: 40px;
            text-align: center;
            display: inline-block;
            /*float: inline-end;*/
            background: #fe7844;
            color: #fff;
            border-radius: 3px;
            line-height: 40px;
            font-size: 16px;
            margin-top: 15px;
            margin-right: -15px;
        }

    </style>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.12.2.js"></script>
    <script type="text/javascript">

        function getPic() {
            $("#checkCode").attr("src", "${pageContext.request.contextPath}/checkCode?flag=" + Math.random());

        };
       /* function fun() {
            if ($("#adminName").val() == "" || $("#adminPassword").val() == "" || $("#checkCodes").val() == "") {
                alert("用户名或密码不能为空!");
            } else if ($("#checkCodes").val() != "${randomcode_key}") {
                alert("验证码错误！")
            } else {
                $("#adminlogin").submit();
            }
        }*/
        /*function fun1() {
            if("${not empty msg1}"=="true"){
                alert(${msg1})
            }
        }*/
        window.onload=function () {
            if($("#msg").text()!=""){
                alert($("#msg").text())
            }
        }
        window.onbeforeunload=function () {
            if($("#msg").text()!=""){
                $("#msg").text("");
            }
        }
    </script>
    <title>登录页</title>
</head>
<body>
<div class="LoginBox">
    <div id="VerticalCenteredBox">
        <div class="LoginHead">悦桔拉拉后台管理系统</div>
        <form action="${pageContext.request.contextPath}/login"
              method="post" id="adminlogin">
            <div class="LoginUserBoxOut">
                <div class="LoginUserBox mar_top30">
                    <input class="LoginUserInput" placeholder="请输入账号" id="adminName"
                           name="adminName"/> <span>请输入账号</span>
                </div>
            </div>
            <div class="LoginUserBoxOut">
                <div class="LoginUserBox">
                    <input class="LoginUserInput" placeholder="请输入密码" type="Password"
                           id="adminPassword" name="adminPassword"/> <span>请输入密码</span>
                </div>
                <div>
                    <p>
                        <img src="${pageContext.request.contextPath}/checkCode" id="checkCode" title="看不清，点击换一张" alt=""
                             width="100" height="32" class="center-block" style="height:43px;cursor:pointer;"
                             onclick="getPic()"/>
                        <input type="text" placeholder="请输入验证码" id="checkCodes" name="checkCodes"/>
                    </p>
                </div>
            </div>


            <div class="LoginUserBoxOut">
                <div class="LoginLastBox clearfix">
                    <input type="submit" value="登 录"  class="RightBox" id="RightBox" >
                    <p id="msg"style="display: none">${msg}</p>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>

