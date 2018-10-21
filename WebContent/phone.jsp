<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>手机</title>
<meta charset="utf-8">
<script type="text/javascript" src="js/jQuery.min.1.9.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/phone.css">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/headerAndFooter.css">
<script type="text/javascript">
	$(function() {
		$.each($('.pro'), function(index, val) {
			$('.pro').eq(index).hover(function() {
				//向上划入
				$('.ckxq').eq(index).show();
				$('.ckxq').eq(index).stop(true, true).animate({
					height : "110px"
				});
				$('.ckxq p').eq(index).stop(true, true).animate({
					height : "50px"
				});
				$('.ckxq a').eq(index).stop(true, true).animate({
					height : "37px"
				});
				// $('.ckxq').eq(index).css('z-index', '5');
			}, function() {
				//向下划出

				$('.ckxq').eq(index).stop(true, true).animate({
					height : "-110px"
				});
				$('.ckxq p').eq(index).stop(true, true).animate({
					height : "0px"
				});
				$('.ckxq a').eq(index).stop(true, true).animate({
					height : "0px"
				});
				// $('.ckxq').eq(index).css('z-index', '-5');
			});
		});

	});
</script>
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
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control"
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
					<form action="" class="form" >
						<dl>
							<dt>手机分类：</dt>
								<dd>
									<c:choose>
										<c:when test="${empty requestScope.typeId }">
											<a href="phone.do?typeId=&modelId=${requestScope.modelId }&seriesId=${requestScope.seriesId }">
												<input type="radio" name="phoneType" checked="checked">
												全部
											</a>
										</c:when>
										<c:otherwise>
											<a href="phone.do?typeId=&modelId=${requestScope.modelId }&seriesId=${requestScope.seriesId }">
												<input type="radio" name="phoneType">
												全部
											</a>
										</c:otherwise>
									</c:choose>
								</dd>
							<c:forEach var="m" items="${requestScope.queryAllType }">
									<c:choose>
										<c:when test="${requestScope.typeId==m.TYPE_ID }">
											<dd>	
												<a href="phone.do?typeId=${m.TYPE_ID }&modelId=${requestScope.modelId }&seriesId=${requestScope.seriesId }">
													<input type="radio" name="phoneType" checked="checked">${m.TYPE_NAME }
												</a>
											</dd>
										</c:when>
										
										<c:otherwise>
											<dd>
												<a href="phone.do?typeId=${m.TYPE_ID }&modelId=${requestScope.modelId }&seriesId=${requestScope.seriesId }">
													<input type="radio" name="phoneType">${m.TYPE_NAME }
												</a>
											</dd>
										</c:otherwise>
									</c:choose>
								
								
							</c:forEach>
						</dl>
						<span style="clear: both;"></span> <br>
						<hr>
						<dl>
							<dt>手机外观：</dt>
							<dd>
								<c:choose>
									<c:when test="${empty requestScope.modelId }">
										<a href="phone.do?typeId=${requestScope.typeId }&modelId=&seriesId=${requestScope.seriesId }">
											<input type="radio" name="phoneModel" checked="checked">
											全部
										</a>
									</c:when>
									<c:otherwise>
										<a href="phone.do?typeId=${requestScope.typeId }&modelId=&seriesId=${requestScope.seriesId }">
											<input type="radio" name="phoneModel">
											全部
										</a>
									</c:otherwise>
								</c:choose>
							</dd>
							<c:forEach var="m" items="${requestScope.queryAllModel }">
								<c:choose>
									<c:when test="${requestScope.modelId==m.MODEL_ID }">
										<dd>	
											<a href="phone.do?typeId=${requestScope.typeId }&modelId=${m.MODEL_ID }&seriesId=${requestScope.seriesId }">
												<input type="radio" name="phoneModel" checked="checked">${m.MODEL_NAME }
											</a>
										</dd>
									</c:when>
									<c:otherwise>
										<dd>
											<a href="phone.do?typeId=${requestScope.typeId }&modelId=${m.MODEL_ID }&seriesId=${requestScope.seriesId }">
												<input type="radio" name="phoneModel">${m.MODEL_NAME }
											</a>
										</dd>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
						</dl>
						<span style="clear: both;"></span> <br>
						<hr>
						<dl>
							<dt>手机系列：</dt>
							<dd>
								<c:choose>
									<c:when test="${empty requestScope.seriesId }">
										<a href="phone.do?typeId=${requestScope.typeId }&modelId=${requestScope.modelId }&seriesId=">
											<input type="radio" name="phoneSeries" checked="checked">
												全部
										</a>
									</c:when>
									<c:otherwise>
										<a href="phone.do?typeId=${requestScope.typeId }&modelId=${requestScope.modelId }&seriesId=">
											<input type="radio" name="phoneSeries">
											全部
										</a>
									</c:otherwise>
								</c:choose>
							</dd>
							<c:forEach var="m" items="${requestScope.queryAllSeries }">
								<c:choose>
									<c:when test="${requestScope.seriesId==m.SERIES_ID }">
										<dd>	
											<a href="phone.do?typeId=${requestScope.typeId }&modelId=${requestScope.modelId }&seriesId=${m.SERIES_ID }">
												<input type="radio" name="phoneSeries" checked="checked">${m.SERIES_NAME }
											</a>
										</dd>
									</c:when>
									<c:otherwise>
										<dd>
											<a href="phone.do?typeId=${requestScope.typeId }&modelId=${requestScope.modelId }&seriesId=${m.SERIES_ID }">
												<input type="radio" name="phoneSeries">${m.SERIES_NAME }
											</a>
										</dd>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
						</dl>
						<span style="clear: both;"></span> <br>
						<hr>
					</form>
				</div>
			</div>
			<!--选择类别结束-->
			<!--商品列表开始-->
			<div class="row productList" style="margin-top: 20px;">
				<c:forEach var="map" items="${requestScope.pageBean.list }" begin="0" end="7">
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
											<a href="phone.do?typeId=${requestScope.typeId }&modelId=${requestScope.modelId }&seriesId=${requestScope.seriesId }&nowPageNum=${pageBean.nowPageNum-1}" aria-label="Previous">
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
											<li><a href="phone.do?typeId=${requestScope.typeId }&modelId=${requestScope.modelId }&seriesId=${requestScope.seriesId }&nowPageNum=${s}">${s }</a></li>
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
											<a href="phone.do?typeId=${requestScope.typeId }&modelId=${requestScope.modelId }&seriesId=${requestScope.seriesId }&nowPageNum=${pageBean.nowPageNum+1}" aria-label="Next"> 
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