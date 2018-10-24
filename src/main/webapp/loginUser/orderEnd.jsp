<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>订单页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/headerAndFooter.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery.min.1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/order.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/plug/dist/jquery-confirm.min.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/plug/dist/jquery-confirm.min.js"></script>
</head>
<body>

	<!--头部开始-->
	<%@ include file="../header.jsp"%>
	<!--头部结束-->
	<div class="container">
		<strong style="font-size: 50px; padding: 20px 0px">付款成功</strong>
		<p style="font-size: 30px; padding: 20px 0px">收货地址</p>
		<div id="userAddress">
				<div class="address">
					<span>${requestScope.queryuserAddressByuserId.PROVINCE_NAME }</span>
					<span>${requestScope.queryuserAddressByuserId.CITY_NAME }</span>
					<span>${requestScope.queryuserAddressByuserId.USER_ADDRESS }</span>
					<span>（${requestScope.queryuserAddressByuserId.USERADDRESS_RNAME } 收）</span>
					<span>${requestScope.queryuserAddressByuserId.USER_TEL }</span>
				</div>
		</div>
		<p style="font-size: 30px; padding: 20px 0px">订单信息</p>
		<table class="table table-hover">
			<tr>
				<th>商品名称</th>
				<th>单价</th>
				<th>数量</th>
				<th>小计</th>
			</tr>
			<c:forEach var="m" items="${requestScope.queryItemsByOrderId }">
				<tr>
					<td><img src="${pageContext.request.contextPath }/${m.PRO_PIC }" alt="" class="phoneImg" /> 
						<span class="phoneName">${m.PRO_NAME }</span>
					</td>
					<td class="price">${m.PRO_PRICE }</td>
					<td class="count">${m.ITEM_COUNT }</td>
					<td class="total">¥<span>${m.PRO_PRICE*m.ITEM_COUNT }</span></td>
				</tr>
			</c:forEach>
		</table>
		
	</div>
	<!-- footer开始 -->
	<%@ include file="../footer.jsp"%>
	<!-- footer结束 -->




</body>
</html>