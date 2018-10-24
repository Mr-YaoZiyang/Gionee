$(function() {
	$('table .price').each(function(i) {
		// 获得商品单价和数量
		var priceValue = $('.price').eq(i).text();
		var countValue = $('.count').eq(i).text();
		// 小计=数量*单价
		$('.total span').eq(i).text(eval(priceValue + "*" + countValue));
	});

	$('#orderTitle').click(function() {
		$('#Order').css('display', 'block');
		$('#Info').css('display', 'none');
		$('#Repwd').css('display', 'none');
	});
	$('#infoTitle').click(function() {
		$('#Order').css('display', 'none');
		$('#Info').css('display', 'block');
		$('#Repwd').css('display', 'none');
	});
	$('#repwdTitle').click(function() {
		$('#Order').css('display', 'none');
		$('#Info').css('display', 'none');
		$('#Repwd').css('display', 'block');
	});
	bindany();
});
function bindany() {
	$('#pwd').blur(function() {
		chcekPwd();
	});
	$('#repwd1').blur(function() {
		chcekRePwd()
	});
}

function chcekPwd() {
	$.post('checkPwd.do', {
		pwd : $('#pwd').val()
	}, function(data) {
		if (data.flag == false) {
			$('#pwdspan').text("与原密码不一致");
			// return false;
		} else {
			$('#pwdspan').text("");
			// return true;
		}
	}, 'json');
}
function chcekRePwd() {
	var pwd = $('#repwd').val();
	var pwd1 = $('#repwd1').val();
	if (pwd != pwd1) {
		$('#repwdspan').text("两次密码输入不一致");
		// return false;
	} else {
		$('#repwdspan').text("");
		// return true;
	}
}

function updatePwd() {
	// alert(1);
	var chcekPwd;
	var chcekRePwd;
	if ($('#pwdspan').text() == null || $('#pwdspan').text() == "") {
		chcekPwd = true;
	} else {
		chcekPwd = false;
	}
	if ($('#repwdspan').text() == null || $('#repwdspan').text() == "") {
		chcekRePwd = true;
	} else {
		chcekRePwd = false;
	}

	if (chcekPwd && chcekRePwd) {
		$.post('../updatePwd.do', {
			pwd : $('#repwd').val()
		}, function(data) {
			if (data.flag == true) {
				$.alert({
					title : "Success",
					content : "修改成功"
				});
				$('#repwd').val("");
				$('#repwd1').val("");
				$('#pwd').val("");
			} else {
				$.alert({
					title : "Error",
					content : "修改失败"
				});
			}
		}, 'json');
	} else {

	}
}
function findUserInfo(){
	$.post(
			'findUserInfo.do',
			{},
			function(data){
				//用户名
				$('#name').html(
						"<input type='text' name='name' value="+data.USER_NAME+">"
				);
				
				
				//性别
				if(data.USER_SEX == 0){
					$('#sex').html(
							"<input type='radio' name='sex' value='1' />男" +
							"<input type='radio' name='sex' checked='checked' value='0' />女"
					);
				}else{
					$('#sex').html(
							"<input type='radio' name='sex' checked='checked' value='1' />男" +
							"<input type='radio' name='sex' value='0' />女"
					);
				}
				//生日
				if(data.USER_BIRTHDAY==null){
					$('#birthday').html(
							"<input type='text' name='birthday' value=''>"
					);
				}else{
					$('#birthday').html(
							"<input type='text' name='birthday' value="+data.USER_BIRTHDAY+">"
					);
				}
				
				//电话
				$('#tel').html(
						"<input type='text' name='tel' value="+data.USER_TEL+">"
				);
				
			},
			'json'
	);
}
function updateUserInfo(){
	$.post(
			'updateUserInfo.do',
			{
				name:$("input[name='name']").val(),
				sex:$("input[name='sex']:checked").val(),
				birthday:$("input[name='birthday']").val(),
				tel:$("input[name='tel']").val()
			},
			function(data){
				//用户名
				$('#name').text(data.USER_NAME);
				
				//性别
				if(data.USER_SEX == 0){
					$('#sex').text('女');
				}else{
					$('#sex').text('男');
				}
				
				//生日
				$('#birthday').text(data.USER_BIRTHDAY);
				//电话
				$('#tel').text(data.USER_TEL);
			},
			'json'
	);
	
	
	
	
}






