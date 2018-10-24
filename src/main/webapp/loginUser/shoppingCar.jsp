<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>购物车</title>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery.min.1.9.1.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/plug/dist/jquery-confirm.min.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/plug/dist/jquery-confirm.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/headerAndFooter.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/shoppingCar.css" />
		<link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.ico" type="${pageContext.request.contextPath }/image/x-icon">
		<script src="${pageContext.request.contextPath }/js/ShopingCar.js"></script>

	</head>

	<body>
	<!--头部开始-->
	<%@ include file="/header.jsp"%>
	<!--头部结束-->
		<form action="showOrder.do" method="get" id="form1">
		<div class="container" style="padding: 50px 0px;">
			<table class="table table-bordered">
				<tr>
					<th>
						<input type="checkbox" id="all" name="" onclick="allCheck()" />全选
					</th>
					<th>商品名称</th>
					<th>单价</th>
					<th>数量</th>
					<th>小计</th>
					<th>操作</th>
				</tr>
				
				<c:forEach var="m" items="${requestScope.queryShopping }">
				<tr>
					<td>
						<input type="checkbox"  name="shoppingId" value="${m.SHOPPING_ID }" id="check${m.SHOPPING_ID }" onclick="checkedhobby(this)" />
					</td>
					
					<td>
						<img src="${pageContext.request.contextPath }/${m.PRO_PIC }" alt="" />
							${m.PRO_NAME }
						</td>
					<td id="price_${m.SHOPPING_ID }">${m.PRO_PRICE }</td>
						
					<td class="count">
						<span  class="subtract"  onclick="subtract(${m.SHOPPING_ID })"><a href="javascript:void(0);">-</a></span>
						<input type="text" name="" id="count${m.SHOPPING_ID }" value="${m.SHOPPING_COUNT }" readonly="readonly" /> 
						<input type="hidden" name="" id="count1${m.SHOPPING_ID }" value="${m.SHOPPING_COUNT }"> 
						<input type="hidden" name="" class="price">
						<span class="add" onclick="add(${m.SHOPPING_ID })"><a href="javascript:void(0);">+</a></span>
					</td>

					<td class="total">¥<span id="total_${m.SHOPPING_ID }">${m.PRO_PRICE*m.SHOPPING_COUNT }</span></td>
						
					<td><a onclick="delBtn(${m.SHOPPING_ID })" class="btn btn-danger">删除</a></td>
				</tr>
				</c:forEach>

			</table>

			<div class="container settlement" >
				<div class="row">
					<div class="col-md-5 col-md-offset-7">
						<ul>
							<li>已选商品
								<span style="color: red;" id="checkeBoxCount">0</span>件
							</li>
							<li id="totalPrice">合计：¥<span>0</span></li>
							<li style="padding: 0;">
								<a id="subBtn" class="btn btn-danger btn-lg">结算</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		</form>
	<!-- footer开始 -->
	<%@ include file="../footer.jsp"%>
	<!-- footer结束 -->
</body>
</html>