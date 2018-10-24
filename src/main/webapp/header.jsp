<%@page import="com.oracleoaec.service.impl.UserServiceImpl"%>
<%@page import="com.oracleoaec.service.UserService"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.oracleoaec.service.impl.ShoppingCarServiceImpl"%>
<%@page import="com.oracleoaec.service.ShoppingCarService"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.Map"%>
<%@ page language="java" pageEncoding="utf-8"%>
	<!--头部开始-->
	<div class="container">
		<div class="row">
			<div class="col-md-offset-9 col-md-3">
				<ul class="users">
					<%
							Cookie[] cookies = request.getCookies();
							pageContext.setAttribute("cookies", cookies);
					%>
					<c:choose>
						<c:when test="${empty cookie.user}">
							<li><a href="${pageContext.request.contextPath }/login.jsp">原账号登录&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
							<li><a href="${pageContext.request.contextPath }/register.jsp"> 注册&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
							<li><a href="${pageContext.request.contextPath }/loginUser/showShoppingCar.do">购物车(<span>0</span>)</a></li>
						</c:when>
						<c:otherwise>
						<%
							String userNameAndPwd =null;
							for (Cookie cookie : cookies) {
										
								String name = cookie.getName();
								if("user".equals(name)) {
									userNameAndPwd = cookie.getValue();
								}
							}
							String[] user = userNameAndPwd.split(",");
							UserService us = new UserServiceImpl();
										
							Map<String, Object> userMap1 = us.login(user[0], user[1]);
							if(userMap1==null){
								session.setAttribute("userMap", null);
							%>
								<li><a href="${pageContext.request.contextPath }/login.jsp">原账号登录&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
								<li><a href="${pageContext.request.contextPath }/register.jsp"> 注册&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
								<li><a href="${pageContext.request.contextPath }/loginUser/showShoppingCar.do">购物车(<span>0</span>)</a></li>
							<% }else{
								session.setAttribute("userMap", userMap1);
								Map<String, Object> userMap = (Map<String, Object>) session.getAttribute("userMap");
								BigDecimal userId = (BigDecimal) userMap.get("USER_ID");
								ShoppingCarService ss = new ShoppingCarServiceImpl();
								Map<String, Object> count1 =  ss.shoppingCarCount(userId.toString());
								%>
								<li><a href="${pageContext.request.contextPath }/loginUser/personalCenter.do"> ${sessionScope.userMap.USER_NAME }&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
								<li><a href="${pageContext.request.contextPath }/loginUser/showShoppingCar.do">购物车(<span><%=count1.get("COUNT(*)") %></span>)&nbsp;&nbsp;|&nbsp;&nbsp;</a></li>
								<li><a href="${pageContext.request.contextPath }/logout.do"> [<span id="logout">退出</span>]</a></li>
							<%}%>			
							
						
						</c:otherwise>
						
					</c:choose>
				</ul>
			</div>
		</div>

	</div>
	<div class="container-fluid header">

		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div id="logo">
						<a href="${pageContext.request.contextPath }/index.do"><img src="${pageContext.request.contextPath }/img/logo.png"></a>
					</div>
				</div>
				<div class="col-md-7">
					<ul class="nav">
						<li><a href="${pageContext.request.contextPath }/index.do">首页</a></li>
						<li><a href="${pageContext.request.contextPath }/phone.do">手机</a></li>
						<li><a href="${pageContext.request.contextPath }/accessories.do">配件</a></li>
						<li><a href="${pageContext.request.contextPath }/newsList.do">新闻</a></li>
						<li><a href="#">服务</a></li>
						<li><a href="#">下载</a></li>
						<li><a href="#">amigoOS</a></li>
					</ul>
				</div>
				<div class="col-md-2">
					<form action="${pageContext.request.contextPath }/search.do" method="post">
						<div class="input-group">
							<input type="text" name="searchCountent" class="form-control" placeholder="商品名称">
							<span class="input-group-btn">
								<input type="submit" class="btn btn-default" id="searchBtn" value="搜索">
							</span>
						</div>
					</form>
				</div>
			</div>

		</div>
	</div>
	<!--头部结束-->