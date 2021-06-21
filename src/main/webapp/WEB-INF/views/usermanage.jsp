<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 指定字符集 -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/iconfont.css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet" />
<script src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/f.js"></script>
<script type="text/javascript">
	function del1(id) {
		$("#del2").css("display", "block");
	}
	function del(id) {
		window.location.href = "${pageContext.request.contextPath}/deleteuser?userId="
				+ $("#i1").text();
	}
2
	$(function() {
		$(".PublicFloatBox f_delete").css("display", "none");
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
		$("#del2").css("display", "block");
	}

	function nodels() {
		$("#del2").css("display", "none");
	}
	function esc1() {
		$("#esc").css("display", "block");

	}
	function yes() {
		window.location.href = "${pageContext.request.contextPath}/login?+${adminName}";
	}
	function cx() {
		window.location.href = "${pageContext.request.contextPath}/users/${pageNum}?phone="
				+ $("#phone").val();
	}
</script>
<title>用户管理</title>
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
				<div class="UserName" id="admin">欢迎您! ${adminName}</div>
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
				<a href="#">
					<li class="Select"><i class="iconfont icon-yonghuguanli"></i><span>用户管理</span></li>
				</a>
				<a href="${pageContext.request.contextPath}/orders/1">
					<li><i class="iconfont icon-tubiao_dingdan"></i><span>订单管理</span></li>
				</a>
				<a href="${pageContext.request.contextPath}/comclass/1">
					<li><i class="iconfont icon-fenlei"></i><span>分类管理</span></li>
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
					<span class="span1">用户管理</span> <span class="span2">后台用户管理列表</span>
				</div>
				<!--查询-->
				<div class="InquireBox clearfix">
					<div class="InquireleftBox">
						<div class="Text">手机号：</div>
						<div class="InputDiv">
							<input class="phoneInput" type="text" value=""
								placeholder="请输入你需要查询的手机号" name="phone" id="phone" />
						</div>
					</div>
					<div class="PublicBtnIcon Color1Btn fr">
						<i class="iconfont icon-icon-chaxun" onclick="cx()"></i> <span>查询</span>
					</div>
				</div>
				<!--表修改-->
				<div class="InquireTableBox">
					<div class="headbox">
						<div class="headboxtext">
							<span class="span1">后台用户管理列表</span>
						</div>
						<!--批量删除-->
						<div class="PublicBtnIcon Color5Btn">
							<a href="javascript:dels()" class="iconfont  icon-shanchu aaa"
								id="deletes"><span>删除选中</span></a>
						</div>
					</div>

					<!--查询到的表格-->

					<div class="InquireSelectTable">
						<form action="${pageContext.request.contextPath}/deleteuser"
							method="post" id="myform">
							<c:if test="${empty list}">
									<p style="text-align:center;font-size:16px;">暂无符合条件的信息！</p>
								</c:if>
							<c:if test="${not empty  list}">
							<table class="PublicTableCss">
								<thead>
									<tr>
										<td><input id="inputcheck" class="inputcheck"
											type="checkbox" name="inputcheck" /> <label for="inputcheck"></label>
											<span>全选</span></td>
										<td>用户ID</td>
										<td>用户姓名</td>
										<td>性别</td>
										<td>手机号</td>
										<td>操作</td>
									</tr>
								</thead>
								<tbody>
								<c:if test="${not empty  list}">
									<c:forEach items="${ list}" var="c">
										<tr>
											<td><span id="s"><input id="inputcheck" class="inputcheck"
												type="checkbox" name="inputcheck" /> <label
												for="inputcheck"></label></span></td>
											<td id="i1">${c.userId}</td>
											<td>${c.realName}</td>
											<td>${c.sex}</td>
											<td>${c.phone}</td>
											<td>
												<div class="PublicTableBtnIcon Color4Btn Js_delete">
													<a href="javascript:del1(${c.userId})"
														class="iconfont icon-shanchu" class="delete"> <span>删除</span>
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
					<!--分页-->
					<div class="PageNumber">
						<div class="NumbersBox">
							<ul>
								<li class="LeftArrow"><a
										href="${pageContext.request.contextPath}/users/${pageNum -1}?phone=${phone}">
									<span>上一页</span>
								</a></li>
								<c:forEach begin="1" end="${totalPage}" var="i">
									<c:if test="${i==pageNum}">
										<li class="Select"><a
												href="${pageContext.request.contextPath}/users/${i}?phone=${phone}">${i}</a>
										</li>
									</c:if>
									<c:if test="${i!=pageNum}">
										<li><a
												href="${pageContext.request.contextPath}/users/${i}?phone=${phone}">${i}</a>
										</li>
									</c:if>
								</c:forEach>
								<li class="RightArrow "><a
										href="${pageContext.request.contextPath}users/${pageNum +1}?phone=${phone}"><span>下一页</span>
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
	<div class="PublicFloatBox f_delete" id="esc">
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


	<!-- alert通用 提示是否批量删除-->
	<div class="PublicFloatBox f_delete" id="del2">
		<div class="f_MiddleBox wid260">
			<div class="f_Head">
				<span>提示消息</span> <i
					class="Js_closeBtn iconfont icon-buoumaotubiao20 fr"></i>
			</div>
			<div class="f_content clearfix">
				<!--提示消息内容-->
				<div class="f_someText">
					<i class="iconfont icon-tishi"></i> <span>确定删除此条数据？</span>
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