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
<script type="text/javascript">
	$(function() {
		var totalp;
		$('table .price').each(function(i) {
			//获得商品单价和数量
			var priceValue = $('.price').eq(i).text();
			var countValue = $('.count').eq(i).text();
			//小计=数量*单价
			$('.total span').eq(i).text(eval(priceValue + "*" + countValue));
			//小计相加
			totalp = $('.total span').eq(i).text();
			//将小计相加给总计
			$('#totalPrice span').text(eval($('#totalPrice span').text() + "+" + totalp));
		});
		
		
	});
	function updateAddress(){
		$.post(
				'addAddress.do',
				{
					
					provinceId:$('#province').val(),
					cityId:$('#city').val(),
					address:$('#address').val(),
					userName:$('#userName').val(),
					tel:$('#tel').val()
				},
				function(data){
					$("#userAddress").text('');
					$("#userAddress").append("<div class='address'>"
						+"<input type='hidden' name='userAddressId' value="+data.USERADDRESS_ID+">"
						+"<span>"+data.PROVINCE_NAME+"&nbsp;</span>"
						+"<span>"+data.CITY_NAME+"&nbsp;</span>"
						+"<span>"+data.USERADDRESS+"&nbsp;</span>"
						+"<span>（"+data.USERADDRESS_RNAME+" &nbsp;收）&nbsp;</span>"
						+"<span>"+data.USER_TEL+"</span></div>");
				},
				'json'
			); 
	}

	function changeProvince(){
		$.post(
			'city.do',
			{
				provinceId:$('#province').val()
			},
			function(data){
				$("#city option").remove();
				//$("#city").append("<option value='0'>--请选择--</option>")
				$.each(data, function(index,obj) {
					$("#city").append("<option value='"+obj.CITY_ID+"'>"+obj.CITY_NAME+"</option>");
				});
			},
			'json'
		);
	}
	
</script>
</head>
<body>
	<!--头部开始-->
	<%@ include file="../header.jsp"%>
	<!--头部结束-->
	<form action="orderFrom.do" method="get">
	<div class="container">
		<p style="font-size: 30px; padding: 20px 0px">收货地址</p>
		<c:choose>
			<c:when test="${!empty queryuserAddressByuserId }">
			<div id="userAddress">
				<div class="address">
				<input type="hidden" name="userAddressId" value="${requestScope.queryuserAddressByuserId.USERADDRESS_ID }">
					<span>${requestScope.queryuserAddressByuserId.PROVINCE_NAME }</span>
					<span>${requestScope.queryuserAddressByuserId.CITY_NAME }</span>
					<span>${requestScope.queryuserAddressByuserId.USER_ADDRESS }</span>
					<span>（${requestScope.queryuserAddressByuserId.USERADDRESS_RNAME } 收）</span>
					<span>${requestScope.queryuserAddressByuserId.USER_TEL }</span>
				</div>
			</div>
			</c:when>
			<c:when test="${empty queryuserAddressByuserId }">
			<div   id="userAddress">
				<div class="address" style="display: none;">
					<span>${requestScope.queryuserAddressByuserId.PROVINCE_NAME }</span>
					<span>${requestScope.queryuserAddressByuserId.CITY_NAME }</span>
					<span>${requestScope.queryuserAddressByuserId.USER_ADDRESS }</span>
					<span>（${requestScope.queryuserAddressByuserId.USERADDRESS_RNAME } 收）</span>
					<span>${requestScope.queryuserAddressByuserId.USER_TEL }</span>
				</div>
			</div>
			</c:when>
		</c:choose>




		<button type="button" class="btn btn-default" data-toggle="modal"
			data-target="#exampleModal" data-whatever="@mdo">添加收货地址</button>
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="exampleModalLabel">请添加收货地址</h4>
						</div>
						<div class="modal-body">
							
								<div class="form-group">
									<label for="recipient-name" class="control-label">省:</label> 
									<select id="province" class="form-control" onchange="changeProvince();">
										<option value="0">--请选择--</option>
										<c:forEach var="m" items="${requestScope.queryAllProvince }">
											<option value="${m.PROVINCE_ID }">${m.PROVINCE_NAME }</option>
										</c:forEach>
									</select> 
									<label for="recipient-name" class="control-label">市:</label> 
									<select  id="city" class="form-control">
										<option value="">--请选择--</option>
									</select>
	
								</div>
								<div class="form-group">
									<label for="message-text" class="control-label">详细地址:</label>
									<textarea class="form-control" id="address"></textarea>
								</div>
								<div class="form-group">
									<label for="message-text" class="control-label">收件人姓名:</label>
									<input type="text" class="form-control" id="userName">
									
								</div>
								<div class="form-group">
									<label for="message-text" class="control-label">联系电话:</label>
									<input type="tel" class="form-control" id="tel" maxlength="11">
								</div>
							
						</div>
						<div class="modal-footer">
							<input type="button" class="btn btn-primary"  onclick="updateAddress();"  data-dismiss="modal"value="提交">
							<input type="button" class="btn btn-default" data-dismiss="modal" value="取消">
						</div>
					</div>
				</div>
			</div>
		<p style="font-size: 30px; padding: 20px 0px">确认订单信息</p>
		<table class="table table-hover">
			<tr>
				<th>商品名称</th>
				<th>单价</th>
				<th>数量</th>
				<th>小计</th>
			</tr>
			<c:choose>
				<c:when test="${!empty requestScope.queryProductById }">
					<tr>
						<input type="hidden" name="proId" value="${requestScope.queryProductById.PRO_ID }">
						<td><img src="${pageContext.request.contextPath }/${requestScope.queryProductById.PRO_PIC }" alt="" class="phoneImg" /> 
							<span class="phoneName">${requestScope.queryProductById.PRO_NAME }</span>
						</td>
						<td class="price">${requestScope.queryProductById.PRO_PRICE }</td>
						<td class="count">${requestScope.count }</td>
						<input type="hidden" name="count" value="${requestScope.count }">
						<td class="total">¥<span>${requestScope.queryProductById.PRO_PRICE*requestScope.count }</span></td>
					</tr>
				</c:when>
				<c:when test="${!empty requestScope.shopList }">
					<c:forEach var="m" items="${requestScope.shopList }">
						<tr>
							<input type="hidden" name="shoppingId" value="${m.SHOPPING_ID }">
							<td><img src="${pageContext.request.contextPath }/${m.PRO_PIC }" alt="" class="phoneImg" /> 
								<span class="phoneName">${m.PRO_NAME }</span>
							</td>
							<td class="price">${m.PRO_PRICE }</td>
							<td class="count">${m.SHOPPING_COUNT }</td>
							<td class="total">¥<span>${m.PRO_PRICE*m.SHOPPING_COUNT }</span></td>
						</tr>
					</c:forEach>
				</c:when>
			</c:choose>
			
		</table>
		<div class="container settlement">
			<div class="row">
				<div class="col-md-3 col-md-offset-9">
					<ul>
						<li id="totalPrice">合计：¥<span>0</span></li>
						<li style="padding: 0;">
							<a href="#">
								<input type="submit" value="结算" class="btn btn-danger btn-lg">
							</a>
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