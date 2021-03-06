<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/iconfont.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet"/>
    <script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/f.js"></script>
    <script type="text/javascript">
        function del1(id) {
            $("#del2").css("display", "block");
        }

        function del(id) {
            window.location.href = "${pageContext.request.contextPath}/deletecom?commodityId="
                + $("#i1").text();
        }

        $(function () {
            $(".PublicFloatBox f_delete").css("display", "none");
            $("#inputcheck").click(function () {
                $(".inputcheck").prop("checked", $(this).prop("checked"));
            })
            $(".inputcheck").click(function () {
                if ($(".inputcheck").length == $(".inputcheck:checked").length) {
                    $("#inputcheckallsel").prop("checked", true);
                } else {
                    $("#inputcheckallsel").prop("checked", false);
                }
            })
        })

        function dels() {
            $("#del2").css("display", "block");
        }

        function esc1() {
            $("#esc").css("display", "block");

        }

        function yes() {
            window.location.href = "${pageContext.request.contextPath}/login?+${adminName}";
        }

        function cx() {
            window.location.href = "${pageContext.request.contextPath}/coms/${pageNum}?searchName="
                + $("#commodityName").val()
                + "&searchClass="
                + $("select option:selected").val();
        }

        function add() {
            $("#addform").submit();
        }

        function update() {
            $("#up").css("display","block");
        }

    </script>
    <title>????????????</title>
</head>
<body>
<div class="PublicHead clearfix">
    <div class="leftBox clearfix">
        <div class="companyLogo">
            <img src="${pageContext.request.contextPath}/images/logobig.png"/>
        </div>
        <!--<i class="iconfont icon-caidan"></i>-->
        <div class="companyText">??????????????????????????????</div>
    </div>
    <div class="RightBox clearfix">
        <div class="UserPhotoBox">
            <div class="UserPic">
                <img src="${pageContext.request.contextPath}/images/user.jpg"/>
            </div>
            <div class="UserName">?????????! ${adminName}</div>
        </div>
        <a href="javascript:esc1()">
            <div class="dropOutBox">
                <i class="iconfont icon-app_icons--"> </i> <span>??????</span>
            </div>
        </a>
    </div>
</div>

<div class="PublicDownWhole clearfix">
    <!--??????-->
    <div class="leftBox">
        <ul>
            <a href="${pageContext.request.contextPath}/users/1">
                <li class=""><i class="iconfont icon-yonghuguanli"></i><span>????????????</span></li>
            </a>
            <a href="${pageContext.request.contextPath}/orders/1">
                <li><i class="iconfont icon-tubiao_dingdan"></i><span>????????????</span></li>
            </a>
            <a href="${pageContext.request.contextPath}/comclass/1">
                <li><i class="iconfont icon-fenlei"></i><span>????????????</span></li>
            </a>
            <a href="#">
                <li class="Select"><i class="iconfont icon-weibiaoti1"></i><span>????????????</span></li>
            </a>
        </ul>
    </div>
    <!--??????-->
    <div class="RightBox">
        <div class="PublicContentBox">
            <!--????????????????????????-->
            <div class="PublicPointToAgeText">
                <span class="span1">???????????? </span> <span class="span2">????????????????????????</span>
            </div>
            <!--??????-->
            <div class="InquireBox clearfix">
                <div class="InquireleftBox">
                    <div class="Text">???????????????</div>
                    <div class="InputDiv">
                        <input class="phoneInput" placeholder="???????????????????????????????????????"
                               name="commodityName" id="commodityName"/>
                    </div>
                </div>
                <div class="InquireleftBox">
                    <div class="Text">???????????????</div>
                    <div class="InputDiv">
                        <i class=" iconfont icon-xiala"></i>
                        <select class="phoneInput" name="commodityClass" id="commoditysClass">
                            <c:forEach items="${comclass}" var="a">
                                <option value="${a.commodityClass}" ${searchClass==a.commodityClass?"selected:'selected'":""}>${a.commodityClass}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="PublicBtnIcon Color1Btn fr">
                    <i class="iconfont icon-icon-chaxun" onclick="cx()"></i> <span>??????</span>
                </div>
            </div>
            <!--?????????-->
            <div class="InquireTableBox">
                <div class="headbox">
                    <div class="headboxtext">
                        <span class="span1">????????????????????????</span>
                    </div>
                    <!--????????????-->
                    <div class="PublicBtnIcon Color5Btn">
                        <a href="javascript:dels()" class="iconfont  icon-shanchu aaa"
                           id="deletes"><span>????????????</span></a>
                    </div>

                    <div class="PublicBtnIcon Color2Btn fr Js_edit">
                        <i class="iconfont icon-changyongtubiao-mianxing-"></i> <span>??????</span>
                    </div>
                </div>

                <!--??????????????????-->

                <div class="InquireSelectTable">
                    <form
                            action="${pageContext.request.contextPath}/deletecom?${c.commodityId}"
                            method="post" id="myform">
                        <c:if test="${empty list}">
                            <p style="text-align: center; font-size: 16px;">??????????????????????????????</p>
                        </c:if>
                        <c:if test="${not empty list}">
                            <table class="PublicTableCss">
                                <thead>
                                <tr>
                                    <td><input type="checkbox" class="inputcheck"
                                               id="inputcheck" name="winputcheck"/> <label
                                            for="inputcheck"></label> <span>??????</span></td>
                                    <td>????????????</td>
                                    <td>??????????????????</td>
                                    <td>????????????</td>
                                    <td>????????????</td>
                                    <td>????????????</td>
                                    <td>????????????</td>
                                    <td>????????????</td>
                                    <td>????????????</td>
                                    <td>????????????</td>
                                    <td>??????</td>
                                </tr>
                                </thead>
                                <tbody>
                                <c:if test="${not empty list}">
                                    <c:forEach items="${list}" var="c">
                                        <tr>
                                            <td><input class="inputcheck" type="checkbox"
                                                       name="inputcheck" vaule="${c.commodityId}"/> <label
                                                    for="inputcheck"></label></td>
                                            <td id="i1">${c.commodityId}</td>
                                            <td>${c.imgNum}</td>
                                            <td>${c.commodityName}</td>
                                            <td>${c.commodityClass}</td>
                                            <td>${c.commodityDepict}</td>
                                            <td>${c.commodityPrice}</td>
                                            <td>${c.commodityAmount}</td>
                                            <td>${c.commodityQuantity}</td>
                                            <td>${c.commoditySpecs}</td>
                                            <td>
                                                <div class="PublicTableBtnIcon Color3Btn Js_edit">
                                                    <a href="${pageContext.request.contextPath}/tocomsupdate/${c.commodityId}" class="iconfont icon-tubiaozhizuomobanyihuifu-">
                                                    <span>??????</span>
                                                    </a>
                                                </div>
                                                <div class="PublicTableBtnIcon Color4Btn Js_delete">
                                                    <a href="javascript:del1(${c.commodityId})"
                                                       class="iconfont icon-shanchu" class="delete"> <span>??????</span>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </c:if>
                                </tbody>
                            </table>
                        </c:if>
                    </form>
                </div>

                <!--??????-->
                <div class="PageNumber">
                    <div class="NumbersBox">
                        <ul>
                            <li class="LeftArrow"><a
                                    href="${pageContext.request.contextPath}/coms/${pageNum -1}?searchName=${searchName}&searchClass=${searchClass}">
                                <span>?????????</span>
                            </a></li>
                            <c:forEach begin="1" end="${totalPage}" var="i">
                                <c:if test="${i==pageNum}">
                                    <li class="Select"><a
                                            href="${pageContext.request.contextPath}/coms/${i}?searchName=${searchName}&searchClass=${searchClass}">${i}</a>
                                    </li>
                                </c:if>
                                <c:if test="${i!=pageNum}">
                                    <li><a
                                            href="${pageContext.request.contextPath}/coms/${i}?searchName=${searchName}&searchClass=${searchClass}">${i}</a>
                                    </li>
                                </c:if>
                            </c:forEach>
                            <li class="RightArrow "><a
                                    href="${pageContext.request.contextPath}/coms/${pageNum+1}?searchName=${searchName}&searchClass=${searchClass}"><span>?????????</span>
                            </a></li>
                        </ul>
                        <li>???${total}???????????????${totalPage}???</li>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="PublicFloatBox f_delete" id="esc">
    <div class="f_MiddleBox wid260">
        <div class="f_Head">
            <span>????????????</span> <i
                class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
        </div>
        <div class="f_content clearfix">
            <!--??????????????????-->
            <div class="f_someText">
                <i class="iconfont icon-tishi"></i> <span>?????????????????????</span>
            </div>
            <!--??????-->
            <div class="f_pormatBtn  clearfix">
                <div class="f_pormatBtn1" onclick="yes()">??????</div>
                <div class="f_pormatBtn2" onclick="no()">??????</div>
            </div>
        </div>
    </div>
</div>

    <div class="PublicFloatBox adduser">
        <div class="kongfx">
            <div class=" wid400">
                <div class="f_Head">
                    <span>????????????</span>
                    <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
                </div>
                <form action="${pageContext.request.contextPath}/comsadd"
                      method="post" id="addform">
                    <div class="f_content">
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityId"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="imgNum"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityName"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <select class="f_p_input"
                                        name="commodityClass" id="commodityClass">
                                    <c:forEach items="${comclass}" var="a">
                                        <option value="${a.commodityClass}">${a.commodityClass}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityDepict"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityPrice"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityAmount"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityQuantity"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commoditySpecs"/>
                            </div>
                        </div>
                        <div class="f_alonediv1">
                            <div class="f_alone_name"></div>
                            <div class="f_alone_input1">
                                <div class="publicf_btn">
                                    <div class="publicf_btn1" onclick="add()">??????</div>
                                    <div class="publicf_btn2 fr Js_closeBtn">??????</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="PublicFloatBox adduser" id="up">
        <div class="kongfx">
            <div class=" wid400">
                <div class="f_Head">
                    <span>????????????</span>
                    <i class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
                </div>
                <form action="${pageContext.request.contextPath}/comsadd"
                      method="post" id="addform">
                    <div class="f_content">
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityId"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="imgNum"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityName"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <select class="f_p_input"
                                        name="commodityClass" id="commodityClass">
                                    <c:forEach items="${comclass}" var="a">
                                        <option value="${a.commodityClass}">${a.commodityClass}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityDepict"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityPrice"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityAmount"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commodityQuantity"/>
                            </div>
                        </div>
                        <div class="f_alonediv">
                            <div class="f_alone_name">????????????:</div>
                            <div class="f_alone_input">
                                <input class="f_p_input" name="commoditySpecs"/>
                            </div>
                        </div>
                        <div class="f_alonediv1">
                            <div class="f_alone_name"></div>
                            <div class="f_alone_input1">
                                <div class="publicf_btn">
                                    <div class="publicf_btn1" onclick="add()">??????</div>
                                    <div class="publicf_btn2 fr Js_closeBtn">??????</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
<!--????????????????????????-->


<%--<!--????????????????????????-->
<div class="PublicFloatBox adduser">
    <div class="kongfx">
        <div class=" wid400">
            <div class="f_Head">
                <span>????????????</span> <i
                    class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
            </div>
            <form action="${pageContext.request.contextPath}/comsupdate"
                  method="post" id="updateform">
                <input type="hidden" name="empId" value="${c.commodityId}"/>
                &lt;%&ndash;<div class="f_content">
                    <div class="f_alonediv">
                        <div class="f_alone_name">????????????:</div>
                        <div class="f_alone_input">
                            <input class="f_p_input" name="commodityId"/>
                        </div>
                    </div>&ndash;%&gt;
                <div class="f_alonediv">
                    <div class="f_alone_name">????????????:</div>
                    <div class="f_alone_input">
                        <input class="f_p_input" name="imgNum"/>
                    </div>
                </div>
                <div class="f_alonediv">
                    <div class="f_alone_name">????????????:</div>
                    <div class="f_alone_input">
                        <input class="f_p_input" name="commodityName"/>
                    </div>
                </div>
                <div class="f_alonediv">
                    <div class="f_alone_name">????????????:</div>
                    <div class="f_alone_input">
                        <select class="f_p_input"
                                name="commodityClass" id="comclass">
                            <c:forEach items="${comclass}" var="a">
                                <option value="${a.commodityClass}">${a.commodityClass}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="f_alonediv">
                    <div class="f_alone_name">????????????:</div>
                    <div class="f_alone_input">
                        <input class="f_p_input" name="commodityDepict"/>
                    </div>
                </div>
                <div class="f_alonediv">
                    <div class="f_alone_name">????????????:</div>
                    <div class="f_alone_input">
                        <input class="f_p_input" name="commodityPrice"/>
                    </div>
                </div>
                <div class="f_alonediv">
                    <div class="f_alone_name">????????????:</div>
                    <div class="f_alone_input">
                        <input class="f_p_input" name="commodityAmount"/>
                    </div>
                </div>
                <div class="f_alonediv">
                    <div class="f_alone_name">????????????:</div>
                    <div class="f_alone_input">
                        <input class="f_p_input" name="commodityQuantity"/>
                    </div>
                </div>
                <div class="f_alonediv">
                    <div class="f_alone_name">????????????:</div>
                    <div class="f_alone_input">
                        <input class="f_p_input" name="commoditySpecs"/>
                    </div>
                </div>
                <div class="f_alonediv1">
                    <div class="f_alone_name"></div>
                    <div class="f_alone_input1">
                        <div class="publicf_btn">
                            <div class="publicf_btn1" onclick="add()">??????</div>
                            <div class="publicf_btn2 fr Js_closeBtn">??????</div>
                        </div>
                    </div>
                </div>
        </div>
        </form>
    </div>
</div>--%>
<!-- alert?????? ????????????????????????-->
<div class="PublicFloatBox f_delete" id="del2">
    <div class="f_MiddleBox wid260">
        <div class="f_Head">
            <span>????????????</span> <i
                class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
        </div>
        <div class="f_content clearfix">
            <!--??????????????????-->
            <div class="f_someText">
                <i class="iconfont icon-tishi"></i> <span>???????????????????????????</span>
            </div>
            <!--??????-->
            <div class="f_pormatBtn  clearfix">
                <div class="f_pormatBtn1" onclick="del()">??????</div>
                <div class="f_pormatBtn2" onclick="nodel()">??????</div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
