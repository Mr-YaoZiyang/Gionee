<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>注册</title>
<script type="text/javascript" src="js/jQuery.min.1.9.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/headerAndFooter.css">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/register.css">
<script type="text/javascript" src="plug/dist/jquery-confirm.min.js"></script>
<link rel="stylesheet" type="text/css" href="plug/dist/jquery-confirm.min.css">
<script type="text/javascript">
	$(function(){
		$('#userAccount').blur(function(){
			checkAccount();
		});
		
		function checkAccount(){
			var regx = /^[a-zA-Z][a-zA-Z0-9]{3,}$/;
			var value = $("#userAccount").val();
			var flag = regx.test(value);
			if(flag){
				$("#pAccount").text("");
			}else{
				$("#pAccount").text("字母+数字的组合长度大于4");
			}
			return flag;
		}
		$('#userRePwd').blur(function(){
			checkPwd();
		});
		function checkPwd(){
			if($('#userPwd').val()!=$('#userRePwd').val()){
				$('#pRePwd').text("两次密码输入不一致");
			}else{
				$('#pRePwd').text("");
			}
			return $('#userPwd').val()==$('#userRePwd').val();
		}
		$('#userTel').blur(function(){
			checkTel();
		});
		function checkTel(){
			var regx = /^1(3|4|5|7|8)\d{9}$/;
			var value = $("#userTel").val();
			var flag = regx.test(value);
			if(flag){
				$("#pTel").text("");

			}else{
				$("#pTel").text("请输入正确的手机号码！！");
			}
			return flag;
		}
		
		$('#sub').click(function(){
			var account = checkAccount();
			var rePwd =  checkPwd();
			var Tel = checkTel();
			if(account&&rePwd&&Tel){
				$.post(
					'register.do',
					{
						userName:$('#userName').val(),
						userAccount:$('#userAccount').val(),
						userPwd:$('#userPwd').val(),
						userRePwd:$('#userRePwd').val(),
						userTel:$('#userTel').val()
					},
					function(data){
						if(data.flag==false){
							$.alert({
								title:"Error",
								content:"注册失败"
							});
						}else{
							window.location.href="index.do";
						}
					},
					'json'
				);
			}
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
			<form class="form-horizontal" action="#">
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<input type="text" class="form-control" id="userName"
							placeholder="用户名">
						<p class="col-sm-offset-1 col-sm-12"></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<input type="text" class="form-control" id="userAccount"
							placeholder="账号">
						<p class="col-sm-offset-1 col-sm-12" id="pAccount"></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<input type="password" class="form-control" id="userPwd"
							placeholder="密码">
						<p class="col-sm-offset-1 col-sm-12"></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<input type="password" class="form-control" id="userRePwd"
							placeholder="确认密码">
						<p class="col-sm-offset-1 col-sm-12" id="pRePwd"></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<input type="text" class="form-control" id="userTel"
							placeholder="手机号码">
						<p class="col-sm-offset-1 col-sm-12" id="pTel"></p>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10"></div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<a id="sub" class="btn btn-primary btn-lg  btn-block">
							注册
						</a>
					</div>
				</div>
			</form>
		</div>

	</div>
</body>
</html>