<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>搜索</title>
<script type="text/javascript" src="js/jQuery.min.1.9.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/phone.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/index.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/headerAndFooter.css">
</head>
<body>
	<!--头部开始-->
	<%@ include file="header.jsp" %>
	<!--头部结束-->
	<div class="container">
		<c:if test="${!empty requestScope.phonelist }">
			<p style="font-size: 30px;" class="row">手机</p>
			<!--商品列表开始-->
			<div class="row productList" style="margin-top: 20px;">
				<c:forEach var="map" items="${requestScope.phonelist }">
					<div class="col-md-3 pro">
						<a href="productDetail.do?proId=${map.PRO_ID }" target="_blank"> 
							<img src="${map.PRO_PIC }" alt="">
							<p class="phoneName">${map.PRO_NAME}</p>
							<p class="phoneDetail">${map.PRO_DETAIL }</p>
							<p class="phonePrice">
								<span>￥</span>${map.PRO_PRICE }
							</p>
						</a>
						<div class="ckxq">
							<p>${map.PRO_DETAIL }</p>
							<a href="productDetail.do?proId=${map.PRO_ID }" target="_blank">查看详情</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:if>
		<c:if test="${!empty requestScope.accList }">
			<p style="font-size: 30px;" class="row">配件</p>
			<!--商品列表开始-->
			<div class="row " style="margin-top: 20px;">
				<div class="container jmpj">
					<div class="row">
						<c:forEach var="m" items="${requestScope.accList }"> 
							<a href="productDetail.do?proId=${m.PRO_ID }">
								<div class="col-md-4">
									<img src="${m.PRO_PIC }" alt="">
									<p class="jmpjName">${m.PRO_NAME }</p>
									<p class="jmpjDetail">${m.PRO_DETAIL }</p>
									<p class="jmpjPrice">
										<span>￥</span>${m.PRO_PRICE }
									</p>
								</div>
							</a> 
						</c:forEach>
					</div>
				</div>
			</div>
			<!--商品列表结束-->
		</c:if>
	</div>
	<!-- footer开始 -->
	<%@ include file="footer.jsp" %>
	<!-- footer结束 -->		
</body>
</html>