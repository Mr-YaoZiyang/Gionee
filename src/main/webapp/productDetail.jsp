<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>商品详情</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery.min.1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/productDetail.css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/headerAndFooter.css">
<script type="text/javascript">
	$(function() {
		$('#add').click(function() {
			//获得数量和单价
			var count = $('#count').val();
			var price = $('#price span:eq(1)').text();
			var countnum = eval("(" + count + "+" + 1 + ")");
			//计算 数量+1*单价
			var totalValue = eval(countnum + "*" + price);
			$('#total').val(totalValue);
			$('#countNum').val(countnum);
			$('#count').val(countnum);
		});

		$('#subtract').click(function() {
			//获得数量和单价
			var count = $('#count').val();
			var price = $('#price span:eq(1)').text();
			//数量不能小于0
			if ($('#count').val() > 1) {
				var countnum = eval("(" + count + "-" + 1 + ")");
				//计算 数量-1*单价
				var totalValue = eval(countnum + "*" + price);
				$('#total').val(totalValue);
				$('#countNum').val(countnum);
				$('#count').val(countnum);

			} else {
				return;
			}
		});
	});
</script>
</head>
<body>
	<!--头部开始-->
	<%@ include file="header.jsp"%>
	<!--头部结束-->
	<div class="container-fluid intro">
		<div class="container ">
			<div class="shop">
				<form action="" method="get">
					<div class="row">
						<div class="col-md-4">
							<img src="${pageContext.request.contextPath }/${requestScope.queryProductById.PRO_PIC }" alt="" />
						</div>
						<div class="col-md-8">
							<h1 class="name">${requestScope.queryProductById.PRO_NAME }</h1>
							
							<p class="detail">${requestScope.queryProductById.PRO_DETAIL }</p>
							<p id="price">
								现&nbsp;&nbsp;价：<span>¥</span><span>${requestScope.queryProductById.PRO_PRICE }</span>
							</p>
							<input type="hidden" name="proId" value="${requestScope.queryProductById.PRO_ID }">
							<br>
							<p class="count">
								购买数量： 
								<span><a href="javascript:void(0);" id="subtract">-</a></span>
								<input type="text" name="" value="1" id="countNum" /> 
								<input type="hidden" name="count" value="1" id="count" /> 
								<input type="hidden" name="total" id="total"
								 value="${requestScope.queryProductById.PRO_PRICE }" /> 
								<span><a href="javascript:void(0);" id="add">+</a></span>
							</p>
	
							<p class="buy">
								<input type="submit" onclick="javascript:this.form.action='${pageContext.request.contextPath }/loginUser/shoppingCar.do';" value="加入购物车" class="btn btn-danger btn-lg" >
								<input type="submit" onclick="javascript:this.form.action='${pageContext.request.contextPath }/loginUser/showOrder.do';" value="立即购买" class="btn btn-success btn-lg" >
							</p>
						</div>
					</div>
				</form>
				
			</div>
		</div>
	</div>
	<!--tab开始-->
	<div class="container">
		<div class="tabTitle">

			<!-- Nav tabs -->
			<ul class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home"
					aria-controls="home" role="tab" data-toggle="tab">特色功能</a></li>
				<li role="presentation"><a href="#profile"
					aria-controls="profile" role="tab" data-toggle="tab">参数规格</a></li>
				<li role="presentation"><a href="#messages"
					aria-controls="messages" role="tab" data-toggle="tab">包装清单</a></li>
			</ul>

			<!-- Tab panes -->
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home">
					
					<c:forEach var ="m" items="${requestScope.queryPicByproId }">
						<img src="${pageContext.request.contextPath }/${m.PIC_PATH }" />
					</c:forEach>

					
					
				</div>
				<div role="tabpanel" class="tab-pane" id="profile">
					<table class="table table-bordered">
						<tr>
							<th colspan="2">基本信息</th>
						</tr>
						<c:if test="${ !empty requestScope.queryProductById.PRO_TIME }">
							<tr>
								<td>[上市时间]</td>
								<td>${requestScope.queryProductById.PRO_TIME }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_OS }">
							<tr>
								<td>[操作系统]</td>
								<td>${requestScope.queryProductById.PRO_OS  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_MEMORY }">
							<tr>
								<td>[运行内存]</td>
								<td>${requestScope.queryProductById.PRO_MEMORY }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_SPACE }">
							<tr>
								<td>[存储空间]</td>
								<td>${requestScope.queryProductById.PRO_SPACE }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_BEFORECAMERA }">
							<tr>
								<td>[前置摄像头]</td>
								<td>${requestScope.queryProductById.PRO_BEFORECAMERA }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_AFTERCAMERA }">
							<tr>
								<td>[后置摄像头]</td>
								<td>${ requestScope.queryProductById.PRO_AFTERCAMERA  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_BLUETOOTH }">
							<tr>
								<td>[蓝牙]</td>
								<td>${ requestScope.queryProductById.PRO_BLUETOOTH  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_MODEL }">
							<tr>
								<td>[型号]</td>
								<td>${ requestScope.queryProductById.PRO_MODEL  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_OUTPUT }">
							<tr>
								<td>[输出]</td>
								<td>${ requestScope.queryProductById.PRO_OUTPUT  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_INTERFACE }">
							<tr>
								<td>[接口]</td>
								<td>${ requestScope.queryProductById.PRO_INTERFACE  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_COLOR }">
							<tr>
								<td>[颜色]</td>
								<td>${ requestScope.queryProductById.PRO_COLOR  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_SIZE }">
							<tr>
								<td>[尺寸]</td>
								<td>${ requestScope.queryProductById.PRO_SIZE  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_LENGTH }">
							<tr>
								<td>[线长]</td>
								<td>${ requestScope.queryProductById.PRO_LENGTH  }</td>
							</tr>
						</c:if>
						<c:if test="${ !empty requestScope.queryProductById.PRO_TYPE }">
							<tr>
								<td>[产品类型]</td>
								<td>${ requestScope.queryProductById.PRO_TYPE  }</td>
							</tr>
						</c:if>
					</table>
				</div>
				<div role="tabpanel" class="tab-pane" id="messages">
					<p>${requestScope.queryProductById.PRO_PACKING }</p>
				</div>
			</div>

		</div>
	</div>
	<!--tab结束-->
	<!-- footer开始 -->
	<%@ include file="footer.jsp"%>
	<!-- footer结束 -->
</body>
</html>