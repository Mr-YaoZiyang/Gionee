<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<title>新闻列表</title>
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
	<div class="container" style="margin-top:50px">
        <p style="text-align: center;font-size: 30px;">行业新闻</p>
        <p style="margin-top:30px"></p>
        <c:forEach var="m" items="${requestScope.pageBean.list }">
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
									<a href="newsList.do?nowPageNum=${pageBean.nowPageNum-1}" aria-label="Previous">
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
									<li><a href="newsList.do?nowPageNum=${s}">${s }</a></li>
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
									<a href="newsList.do?nowPageNum=${pageBean.nowPageNum+1}" aria-label="Next"> 
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
	<!-- footer开始 -->
	<%@ include file="footer.jsp" %>
	<!-- footer结束 -->


</body>
</html>