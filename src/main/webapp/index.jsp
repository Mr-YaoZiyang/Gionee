<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta charset="utf-8">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery.min.1.9.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/index.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/headerAndFooter.css">
</head>
<body>
	<!--头部开始-->
	<%@ include file="header.jsp" %>
	<!--头部结束-->
	<!-- banner 开始 -->
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	    <!-- <li data-target="#carousel-example-generic" data-slide-to="2"></li> -->
	  </ol>

	  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	    <div class="item active">
	      <img src="${pageContext.request.contextPath }/img/banner2.jpg" alt="...">
	      <div class="carousel-caption">
	        ...
	      </div>
	    </div>
	    <div class="item">
	      <img src="${pageContext.request.contextPath }/img/banner1.jpg" alt="...">
	      <div class="carousel-caption">
	      </div>
	    </div>

	  </div>

	  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	    <span class="sr-only">Previous</span>
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	    <span class="sr-only">Next</span>
	  </a>
	</div>
	<!-- banner  结束 -->
	<div class="container">
		<p class="mxcp">明星产品</p>
	</div>

	<div class="container mxcpimg">
		<ul>
			<c:forEach var="m" items="${requestScope.queryStarPhone }" begin="0" end="2">
				<li>
					<a href="${pageContext.request.contextPath }/productDetail.do?proId=${m.PRO_ID }">
						<img src="${pageContext.request.contextPath }/${m.PRO_STARIMG }">
					</a>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div class="container-fluid" style="background:#ddd;">
		<!-- 热卖推荐 开始 -->
		<div class="container">
			<p class="rmtj">热卖推荐</p>
		</div>
		<div class="container rmtjimg">
			<div class="row">
				<span class="more"><a href="phone.do">更多&gt;&gt;</a></span>
			</div>
			<div class="row">
				<div class="col-md-3">
					<a href="#">
						<img src="img/jinliS11.jpg">
					</a>
				</div>

				<div class="col-md-9">
					<ul>
						<c:forEach var="map" items="${requestScope.queryAllPhone }" begin="0" end="5">
							<li>
								<a href="${pageContext.request.contextPath }/productDetail.do?proId=${map.PRO_ID }">
									<img src="${pageContext.request.contextPath }/${map.PRO_PIC }" alt="">
									<p class="phoneName">${map.PRO_NAME}</p>
									<p class="phoneDetail">${map.PRO_DETAIL }</p>
									<p class="phonePrice"><span>￥</span>${map.PRO_PRICE }</p>
								</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<!-- 热卖推荐 结束 -->
        <!-- 精美配件 开始 -->
        <div class="container">
			<p class="rmtj">精美配件</p>
		</div>
		<div class="container jmpj">
			<div class="row">
				<span class="more"><a href="accessories.do">更多&gt;&gt;</a></span>
			</div>
			<div class="row">
				<c:forEach var="map" items="${requestScope.queryAllAcc }" begin="0" end="5">
					<a href="${pageContext.request.contextPath }/productDetail.do?proId=${map.PRO_ID }">
						<div class="col-md-4">
							<img src="${pageContext.request.contextPath }/${map.PRO_PIC }" alt="">
							<p class="jmpjName">${map.PRO_NAME }</p>
							<p class="jmpjDetail">${map.PRO_DETAIL }</p>
							<p class="jmpjPrice"><span>￥</span>${map.PRO_PRICE }</p>
						</div>
					</a>
				</c:forEach>
			</div>
		</div>
		<!-- 精美配件结束 -->
	</div>
	<!-- 品牌动态 开始 -->
	<div class="container">
		<p class="rmtj">行业新闻</p>
	</div>
	<div class="container">
		<div class="row">
			<span class="more"><a href="newsList.do">更多&gt;&gt;</a></span>
		</div>
		<div class="row">
			
	        <c:forEach var="m" items="${requestScope.queryAllNews }" begin="0" end="2">
	        	<div class="panel panel-default">
	        		<div class="panel-heading">
	        			<a href="newsDetail.do?newsId=${m.NEWS_ID }" style="color: #333;">
	        				${m.NEWS_TITLE }
	        			</a>
	        		</div>
		          	<div class="panel-body">
						${fn:length(m.NEWS_CONTENT)>200?fn:substring(m.NEWS_CONTENT,0,199):m.NEWS_CONTENT}…
						<a href="newsDetail.do?newsId=${m.NEWS_ID }">[查看全文]</a>
		          	</div>
		        </div>
	        </c:forEach>
		</div>
	</div>
    <!-- 品牌动态结束 -->
	<!-- footer开始 -->
	<%@ include file="footer.jsp" %>
	<!-- footer结束 -->
</body>
</html>