<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/iconfont.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/f.js"></script>
<script type="text/javascript">
	function add(id) {
		$("#PublicFloatBox adduser").css("display", "block");
	}
	function add() {
		$("#addform").submit();
	}
	
	function del1(id) {
		$("#del2").css("display", "block");
	}
	function del(id) {
		window.location.href = "${pageContext.request.contextPath}/deleteclass?commodityId="
				+ $("#i1").text();
	}
	
	$(function() {
		$("#inputcheck").click(function() {
			$(".inputcheck").prop("checked", $(this).prop("checked"));
		})
		$(".inputcheck").click(function() {
			if ($(".inputcheck").length == $(".inputcheck:checked").length) {
				$("#inputcheck").prop("checked", true);
			} else {
				$("#inputcheckallsel").prop("checked", false);
			}
		})
	})
	
	function dels() {
		$("#esc").css("display", "block");
	}
	function del2() {
		$("#esc1").css("display", "block");
	}
	function yes() {
		window.location.href = "${pageContext.request.contextPath}/login?${adminName}";
	}
</script>
<title>分类管理</title>
</head>
<body>
	<div class="PublicHead clearfix">
		<div class="leftBox clearfix">
			<div class="companyLogo">
				<img src="${pageContext.request.contextPath}/images/logobig.png" />
			</div>
			<!--<i class="iconfont icon-caidan Js_MenuList"></i>-->
			<div class="companyText">悦桔拉拉后台管理系统</div>
		</div>

		<div class="RightBox clearfix">
			<div class="UserPhotoBox">
				<div class="UserPic">
					<img src="${pageContext.request.contextPath}/images/user.jpg" />
				</div>
				<div class="UserName">欢迎您!${adminName}</div>
			</div>
			<a href="javascript:esc1()">
				<div class="dropOutBox">
					<i class="iconfont icon-app_icons--"> </i> <span>退出</span>
				</div>
			</a>
		</div>
	</div>

	<div class="PublicDownWhole clearfix">
		<!--左侧-->
		<div class="leftBox Js_leftBox">
			<ul>
				<a href="${pageContext.request.contextPath}/users/1">
					<li><i class="iconfont icon-yonghuguanli"></i><span>用户管理</span></li>
				</a>
				<a href="${pageContext.request.contextPath}/orders/1">
					<li><i class="iconfont icon-tubiao_dingdan"></i><span>订单管理</span></li>
				</a>
				<a href="#">
					<li class="Select"><i class="iconfont icon-fenlei"></i><span>分类管理</span></li>
				</a>
				<a href="${pageContext.request.contextPath}/coms/1">
					<li><i class="iconfont icon-weibiaoti1"></i><span>商品管理</span></li>
				</a>
			</ul>
		</div>
		<!--右侧-->
		<div class="RightBox Js_RightBox">
			<div class="PublicContentBox">
				<!--公用指向页面名字-->
				<div class="PublicPointToAgeText">
					<span class="span1">分类管理 </span> <span class="span2">后台分类管理列表</span>
				</div>
				<!--查询-->
				<!--<div class="InquireBox clearfix">
                    <div class="InquireleftBox">
                        <div class="Text">手机号：</div>
                        <div class="InputDiv">   <input class="phoneInput" placeholder="请输入你需要查询的手机号" /></div>
                    </div>
                    <div class="PublicBtnIcon Color1Btn fr">
                        <i class="iconfont icon-icon-chaxun"></i>
                        <span>查询</span>
                    </div>
                </div>-->
				<!--表修改-->
				<div class="InquireTableBox">
					<div class="headbox">
						<div class="headboxtext">
							<span class="span1">后台分类管理列表</span>
						</div>
						<!--批量删除-->
						<div class="PublicBtnIcon Color5Btn">
							<a href="javascript:dels()" class="iconfont  icon-shanchu aaa"
								id="deletes"><span>删除选中</span></a>
						</div>

						<div class="PublicBtnIcon Color2Btn fr Js_edit" id="add">
							<i class="iconfont icon-changyongtubiao-mianxing-"></i> <span>添加</span>
						</div>
					</div>

					<!--查询到的表格-->

					<div class="InquireSelectTable">
						<form
							action="${pageContext.request.contextPath}/delclass"
							method="post" id="myform">
							<table class="PublicTableCss">
								<thead>
									<tr>
										<td><input id="inputcheck" class="inputcheck"
											type="checkbox" name="inputcheck" /> <label for="inputcheck"></label>
											<span>全选</span></td>
										<td>商品种类编号</td>
										<td>商品种类名称</td>
										<td>操作</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${ list}" var="c">
										<tr>
											<td><span id="s"><input id="inputcheck" class="inputcheck"
												type="checkbox" name="inputcheck" /> <label
												for="inputcheck"></label></span></td>
											<td id="i1">${c.commodityId}</td>
											<td>${c.commodityClass}</td>
											<td>
												<div class="PublicTableBtnIcon Color4Btn Js_delete">
													<a href="javascript:del1(${c.commodityId})"
														class="iconfont icon-shanchu"> <span>删除</span>
													</a>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</form>
					</div>
					<!--分页-->
					<div class="PageNumber">
						<div class="NumbersBox">
							<ul>
								<li class="LeftArrow"><a
										href="${pageContext.request.contextPath}/comclass/${pageNum -1}">
									<span>上一页</span>
								</a></li>
								<c:forEach begin="1" end="${totalPage}" var="i">
									<c:if test="${i==pageNum}">
										<li class="Select"><a
												href="${pageContext.request.contextPath}/comclass/${i}">${i}</a>
										</li>
									</c:if>
									<c:if test="${i!=pageNum}">
										<li><a
												href="${pageContext.request.contextPath}/comclass/${i}">${i}</a>
										</li>
									</c:if>
								</c:forEach>
								<li class="RightArrow "><a
										href="${pageContext.request.contextPath}comclass/${pageNum +1}"><span>下一页</span>
								</a></li>
							</ul>
							<li>共${total}条数据，共${totalPage}页</li>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- alert通用 提示是否退出-->
	<div class="PublicFloatBox f_delete" id="del2">
		<div class="f_MiddleBox wid260">
			<div class="f_Head">
				<span>提示消息</span> <i
					class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
			</div>
			<div class="f_content clearfix">
				<!--提示消息内容-->
				<div class="f_someText">
					<i class="iconfont icon-tishi"></i> <span>确定要退出吗？</span>
				</div>
				<!--按钮-->
				<div class="f_pormatBtn  clearfix">
					<div class="f_pormatBtn1" onclick="yes()">确定</div>
					<div class="f_pormatBtn2" onclick="no()">取消</div>
				</div>
			</div>
		</div>
	</div>

	<!--添加用户浮层-->
	<div class="PublicFloatBox adduser">
		<div class="f_MiddleBox wid400">
			<div class="f_Head">
				<span>添加分类</span> <i
					class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
			</div>
			<form
				action="${pageContext.request.contextPath}/comclassadd"
				method="post" id="addform">
				<div class="f_content">
					<div class="f_alonediv">
						<div class="f_alone_name">种类ID:</div>
						<div class="f_alone_input">
							<input class="f_p_input" name="commodityId" />
						</div>
						<!--提示消息-->
						<div class="f_pormat">请输入正确的ID！</div>
					</div>
					<div class="f_alonediv">
						<div class="f_alone_name">添加分类:</div>
						<div class="f_alone_input">
							<input class="f_p_input" name="commodityClass" />
						</div>
						<!--提示消息-->
						<div class="f_pormat">请输入正确的分类!</div>
					</div>
					<div class="f_alonediv1">
						<div class="f_alone_name"></div>
						<div class="f_alone_input1">
							<!--publicbtn-->
							<div class="publicf_btn">
								<div class="publicf_btn1" onclick="add()">确定</div>
								<div class="publicf_btn2 fr Js_closeBtn">取消</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	
	
	
	
	<div class="PublicFloatBox f_delete" id="esc">
		<div class="f_MiddleBox wid260">
			<div class="f_Head">
				<span>提示消息</span> <i
					class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
			</div>
			<div class="f_content clearfix">
				<!--提示消息内容-->
				<div class="f_someText">
					<i class="iconfont icon-tishi"></i> <span>确定要删除此数据吗？</span>
				</div>
				<!--按钮-->
				<div class="f_pormatBtn  clearfix">
					<div class="f_pormatBtn1" onclick="del()">确定</div>
					<div class="f_pormatBtn2" onclick="nodel()">取消</div>
				</div>
			</div>
		</div>
	</div>
	
	<!--返回顶部-->
	<a href="javaScript:void();" class="back-to-top"><i
		class="iconfont icon-fanhuidingbu"></i> </a>
</body>
</html>
