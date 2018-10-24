<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>新闻详情</title>
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
    <div class="container">
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
              <img src="img/banner2.jpg" alt="...">
              <div class="carousel-caption">
                ...
              </div>
            </div>
            <div class="item">
              <img src="img/banner1.jpg" alt="...">
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

    </div>
    <!-- banner  结束 -->
    <div class="container">
    	<p style="margin:30px 0;text-align: center;font-size: 30px;">
    		${requestScope.queryNewsById.NEWS_TITLE }
    	</p>
    	<p style="text-indent:2em;">${requestScope.queryNewsById.NEWS_CONTENT }</p>
    </div>
	
	<!-- footer开始 -->
	<%@ include file="footer.jsp" %>
	<!-- footer结束 -->

</body>
</html>