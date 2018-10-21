<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>登录</title>
<script type="text/javascript" src="js/jQuery.min.1.9.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/headerAndFooter.css">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="plug/dist/jquery-confirm.min.js"></script>
<link rel="stylesheet" type="text/css" href="plug/dist/jquery-confirm.min.css">
<script type="text/javascript">
	$(function(){
		$('#sub').click(function(){
			$.post(
				'login.do',
				{
					userAccount:$('#userAccount').val(),
					userPwd:$('#userPwd').val()
				},
				function(data){
					if(data.flag == false){
						$.alert({
							title:"Error",
							content:"用户名或密码错误"
						});
					}else{
						window.location.href="index.do";
					}
				},
				'json'
			);
		});
		
	});

</script>

</head>
<body style="background: #f5f5f5">

	<div class="container-fluid middel">
		<div class="b1"></div>
		<div class="content">

			<header>
				<h1 class="contentHeader">
					<span></span>
				</h1>
			</header>
			<form class="form-horizontal">
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<input type="text" class="form-control" id="userAccount"
							placeholder="账号">
						<p class="col-sm-offset-1 col-sm-10" id="spanAccount"></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<input type="password" class="form-control" id="userPwd"
							placeholder="密码">
						<p class="col-sm-offset-1 col-sm-10" id="spanPwd"></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10 ">
						<a id="sub"  class="btn btn-primary btn-lg  btn-block">
							登录
						</a>
					</div>
				</div>
			</form>
		</div>

	</div>
</body>
</html>