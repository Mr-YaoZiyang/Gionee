<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>配件</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery.min.1.9.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/phone.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/index.css">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/headerAndFooter.css">
<style type="text/css">
.form {
    height: 50px;
}
</style>
</head>
<body>
	<!--头部开始-->
	<%@ include file="header.jsp"%>
	<!--头部结束-->

	<div class="container-fluid" style="background: #f1f1f1;">
		<div class="container" style="padding: 0px;">
			<!-- banner 开始 -->
			<div class="row ">
				<div class="col-xs-12">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="img/banner2.jpg" alt="...">
								<div class="carousel-caption">...</div>
							</div>
							<div class="item">
								<img src="img/banner1.jpg" alt="...">
								<div class="carousel-caption"></div>
							</div>

						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> 
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> 
						<a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
			<!-- banner  结束 -->
			<!--选择类别开始-->
			<div class="row">
				<div class="col-xs-12">
					<form action="" class="form">
						<dl>
							<dt>配件分类：</dt>
							<dd>
								<c:choose>
									<c:when test="${empty requestScope.acctypeId }">
										<a href="accessories.do?acctypeId=">
											<input type="radio" name="type" checked="checked">
											全部
										</a>
									</c:when>
									<c:otherwise>
										<a href="accessories.do?acctypeId=">
											<input type="radio" name="type">
											全部
										</a>
									</c:otherwise>
								</c:choose>
							</dd>
							<c:forEach var="m" items="${requestScope.queryAllAccType }">
								<c:choose>
									<c:when test="${requestScope.acctypeId==m.ACCTYPE_ID }">
										<dd>	
											<a href="accessories.do?acctypeId=${m.ACCTYPE_ID }">
												<input type="radio" name="type" checked="checked">${m.ACCTYPE_NAME }
											</a>
										</dd>
									</c:when>
									
									<c:otherwise>
										<dd>
											<a href="accessories.do?acctypeId=${m.ACCTYPE_ID }">
												<input type="radio" name="type">${m.ACCTYPE_NAME }
											</a>
										</dd>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</dl>
						<span style="clear: both;"></span><br>
						<hr>
					</form>
				</div>
			</div>
			<!--选择类别结束-->
			<!--商品列表开始-->
			<div class="row " style="margin-top: 20px;">
				<div class="container jmpj">
					<div class="row">
						<c:forEach var="m" items="${requestScope.pageBean.list }" begin="0" end="5"> 
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
			<!--分页 开始    -->
			<div class="row" style="background: #ffffff; margin: 20px 0;">
				<div style="text-align:center;">
					<nav aria-label="Page navigation">
						<nav aria-label="...">
							<ul class="pagination">
								<c:choose>
									<c:when test="${requestScope.pageBean.nowPageNum ==1 }">
										<li class="disabled">
											<a href="javascript:void(0);" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
											</a>
										</li>
									</c:when>
									<c:otherwise>
										<li>
											<a href="accessories.do?acctypeId=${requestScope.acctypeId }&nowPageNum=${pageBean.nowPageNum-1}" aria-label="Previous">
												<span aria-hidden="true">&laquo;</span>
											</a>
										</li>
									</c:otherwise>
								</c:choose>
								
								<c:forEach var="s" begin="1" end="${requestScope.pageBean.pageCount }">
									<c:choose>
										<c:when test="${requestScope.pageBean.nowPageNum == s }">
											<li class="active"><a href="javascript:void(0);">${s }<span class="sr-only">(current)</span></a>
										</c:when>
										<c:otherwise>
											<li><a href="accessories.do?acctypeId=${requestScope.acctypeId }&nowPageNum=${s}">${s }</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:choose>
									<c:when test="${requestScope.pageBean.nowPageNum == pageBean.pageCount }">
										<li class="disabled">
											<a href="javascript:void(0);" aria-label="Next"> 
												<span aria-hidden="true">&raquo;</span>
											</a>
										</li>
									</c:when>
									<c:otherwise>
										<li>
											<a href="accessories.do?acctypeId=${requestScope.acctypeId }&nowPageNum=${pageBean.nowPageNum+1}" aria-label="Next"> 
												<span aria-hidden="true">&raquo;</span>
											</a>
										</li>
									</c:otherwise>
								</c:choose>
								
							</ul>
						</nav>
					</nav>
				</div>
			</div>
			<!--分页结束    -->
		</div>
	</div>



	<!-- footer开始 -->
	<%@ include file="footer.jsp"%>
	<!-- footer结束 -->
</body>
</html>