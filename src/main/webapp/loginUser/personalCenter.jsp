<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>个人中心</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/css/headerAndFooter.css">
        <link rel="shortcut icon" href="${pageContext.request.contextPath }/img/favicon.ico" type="image/x-icon">
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/jQuery.min.1.9.1.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/personalCenter.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/plug/dist/jquery-confirm.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/plug/dist/jquery-confirm.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath }/js/personalCenter.js"></script>
    </head>

    <body>
		<!--头部开始-->
		<%@ include file="../header.jsp" %>
		<!--头部结束-->
        <div class="container info">
            <div class="row" style="padding-top: 30px;">
                <div class="col-md-4">
                    <div class="list-group col-md-10 col-md-offset-1" >
                      <a href="#" class="list-group-item active">
                        个人中心
                      </a>
                      <a href="#" class="list-group-item" id="orderTitle">个人订单</a>
                      <a href="#" class="list-group-item" id="infoTitle">个人资料</a>
                      <a href="#" class="list-group-item" id="repwdTitle">修改密码</a>
                    </div>
                </div>
                <div class="col-md-8">
                    <div id="Order">
                        <p>个人订单</p>
                        <table class="table table-hover">
                            <tr>
                                <th>商品名称</th>
                                <th>单价</th>
                                <th>数量</th>
                                <th>小计</th>
                            </tr>
                            <c:forEach var="m" items="${requestScope.pageBean.list }">
                            	 <tr>
	                                <td>
	                                    <a href="${pageContext.request.contextPath }/productDetail.do?proId=${m.PRO_ID }">
		                                    <img src="${pageContext.request.contextPath }/${m.PRO_PIC}" alt="" class="phoneImg" />
		                                    <span class="phoneName">${m.PRO_NAME}</span>
	                                    </a>
	                                </td>
	                                <td class="price">${m.PRO_PRICE}</td>
	                                <td class="count">${m.ITEM_COUNT}</td>
	                                <td class="total">¥<span>0</span></td>
	                            </tr>
                            
                            </c:forEach>
                        </table>
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
														<a href="personalCenter.do?nowPageNum=${pageBean.nowPageNum-1}" aria-label="Previous">
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
														<li><a href="personalCenter.do?nowPageNum=${s}">${s }</a></li>
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
														<a href="personalCenter.do?nowPageNum=${pageBean.nowPageNum+1}" aria-label="Next"> 
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
                    <div id="Info">
                        <p>个人资料</p>
                        <table class="table">
                            <tr>
                                <td>用户名：</td>
                                <td id="name">${requestScope.queryUserById.USER_NAME }</td>
                            </tr>
                            <tr>
                                <td>性别：</td>
                                <td id="sex">
                                    <c:choose>
                                    	<c:when test="${requestScope.queryUserById.USER_SEX==0 }">
                                    		<!-- <input type="radio" name="sex"  />男
                                    		<input type="radio" name="sex" checked="checked" />女 -->
                                    		女
                                    	</c:when>
                                    	<c:otherwise>
                                    		<!-- <input type="radio" name="sex"  checked="checked" />男
                                    		<input type="radio" name="sex"/>女 -->
                                    		男
                                    	</c:otherwise>
                                    </c:choose>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td>生日：</td>
                                <td id="birthday">
                                	<span>${requestScope.queryUserById.USER_BIRTHDAY }</span>
                                </td>
                            </tr>
                            <tr>
                                <td>手机号码：</td>
                                <td id="tel"><span>${requestScope.queryUserById.USER_TEL }</span></td>
                            </tr>
                           	<tr>
                                <td></td>
                                <td>
                                    <button type="button" class="btn btn-primary" onclick="updateUserInfo();">保存</button>
                                    <button type="button" class="btn btn-warning" onclick="findUserInfo();">修改</button>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div id="Repwd">
                        <p>修改密码</p>
                            <table class="table">
                                <tr>
                                    <td>原始密码：</td>
                                    <td>
                                        <input type="password" class="form-control"  name="" id="pwd">
                                    </td>
                                    <td><span id="pwdspan"></span></td>
                                </tr>
                                <tr>
                                    <td>新密码：</td>
                                    <td>
                                        <input type="password" class="form-control" name="" id="repwd">
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>确认密码</td>
                                    <td>
                                        <input type="password" class="form-control" name=""  id="repwd1">
                                    </td>
                                    <td><span id="repwdspan"></span></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <button type="button" class="btn btn-primary" onclick="updatePwd();" id="RePwdBtn">
                                            	提交
                                        </button>
                                    </td>
                                    <td></td>
                                </tr>
                            </table>
                    </div>
                </div>
            </div>
            <div style="text-indent:30px" ><strong style="font-size:30px;">我的足迹</strong></div>
            <div class="row">
                <div id="footprint">
                    <ul>
                    	<c:forEach var="m" items="${requestScope.queryFootprint }">
                    		<li class="col-md-4">
	                           <a href="${pageContext.request.contextPath }/productDetail.do?proId=${m.PRO_ID }">
	                                <img src="${pageContext.request.contextPath }/${m.PRO_PIC}" alt="">
	                                <p class="phoneName">${m.PRO_NAME }</p>
	                                <p class="phoneDetail">${m.PRO_DETAIL }</p>
	                                <p class="phonePrice"><span>￥</span>${m.PRO_PRICE }</p>
	                            </a>
                        	</li>
                    	</c:forEach>
                    </ul>
                </div>
            </div>
        </div>
       	<!-- footer开始 -->
		<%@ include file="../footer.jsp" %>
		<!-- footer结束 -->
    </body>

</html>