			function delBtn(obj){
	    		$.confirm({
	    		    title: '删除',
	    		    content: '确认删除',
	    		    buttons: {
	    		        "确认": function () {
	    		        	window.location.href="deleteProduct.do?shoppingId="+obj
	    		        },
	    		        "取消": function () {
	    		        	
	    		        }
	    		    }
	    		}); 
	    	}
			$(function(){
				if($("input[name='check']:checked").length==0){
					$('#subBtn').addClass('disabled');
				}
				$('#subBtn').click(function(){
					$('#form1').submit();
				});
			});
			function add(obj){
				var count = $('#count'+obj);
				$.get(
						'updateShoppingCount.do',
						{
							shoppingId:obj,
							shoppingCount:eval($('#count'+obj).val()+"+"+1)
						},
						function(data){
							if(data.callback==true){
								count.val(eval($('#count'+obj).val()+"+"+1));
								$('#total_'+obj).text(eval(count.val()+"*"+$('#price_'+obj).text()));
							}else{
								$('#count'+obj).val($('#count'+obj).val());
								$('#total_'+obj).text(eval(count.val()+"*"+$('#price_'+obj).text()));
							}
						},
						'json'
						
				);
				//$('#total_'+obj).text(eval(count.val()+"*"+$('#price_'+obj).text()));
				if($('#check'+obj).is(':checked')){
					$('#totalPrice span').text(eval($('#totalPrice span').text()+"+"+$('#price_'+obj).text()));
				}
			}

			function subtract(obj){
				var count = $('#count'+obj);
				if(count.val()>1){
					//$('#count'+obj).val(eval($('#count'+obj).val()+"-"+1));
					$.get(
							'updateShoppingCount.do',
							{
								shoppingId:obj,
								shoppingCount:eval($('#count'+obj).val()+"-"+1)
							},
							function(data){
								if(data.callback==true){
									count.val(eval($('#count'+obj).val()+"-"+1));
									$('#total_'+obj).text(eval(count.val()+"*"+$('#price_'+obj).text()));

								}else{
									$('#count'+obj).val($('#count'+obj).val());
									$('#total_'+obj).text(eval(count.val()+"*"+$('#price_'+obj).text()));
								}
							},
							'json'
							
					);
					if($('#check'+obj).is(':checked')){
						$('#totalPrice span').text(eval($('#totalPrice span').text()+"-"+$('#price_'+obj).text()));
					}
				}else{
					return;
				}
			}


			function allCheck(){
				var totalp=0;
				var flag = $('#all').prop('checked');
				var m = 0;
				$('#totalPrice span').text(0);
				$.each($('input[name="shoppingId"]'), function(index) {
					$('input[name="shoppingId"]').eq(index).prop('checked', flag);

					if(flag==true){
						//获得当前行的小计
						totalp = $('.total span').eq(index).text();
						//将获取的小计从总价当中减去
						//alert($('#totalPrice span').text()+"+"+totalp);
						$('#totalPrice span').text(eval($('#totalPrice span').text()+"+"+totalp));
						$('#subBtn').removeClass('disabled');
					}else{
						$('#totalPrice span').text(0);
						$('#subBtn').addClass('disabled');
					}
					 m++;
				});
				//判断是否选中  给商品数量填值
				if(flag==true){
					$('#checkeBoxCount').text(m);

				}else{
					$('#checkeBoxCount').text(0);
				}
				
			}

			function checkedhobby(obj){
				var m = 0;
				var flag = $(obj).prop("checked");
				var totalp=0;
				if(flag==false){

					$("#all").prop("checked",flag);

					//记录所选商品数量
					m=$("input[name='shoppingId']:checked").length;
					$('#totalPrice span').text(0);
					$.each($("input[name='shoppingId']"),function(index){

							if($("input[name='shoppingId']").eq(index).prop('checked')==true){
								//获得当前行的小计
								totalp = $('.total span').eq(index).text();
								//将获取的小计从总价当中减去
								//alert($('#totalPrice span').text()+"+"+totalp);
								$('#totalPrice span').text(eval($('#totalPrice span').text()+"+"+totalp));
								
							}
					});
					
				}else{
					$('#totalPrice span').text(0);
					$.each($("input[name='shoppingId']"),function(index){

						if($("input[name='shoppingId']").eq(index).prop('checked')==true){

							//记录所选商品数量
							m=$("input[name='shoppingId']:checked").length;
							//获得当前行的小计
							totalp = $('.total span').eq(index).text();
							//将获取的小计添加到总价当中
							//alert($('#totalPrice span').text()+"+"+totalp);
							$('#totalPrice span').text(eval($('#totalPrice span').text()+"+"+totalp));
						}
					});
					
				}
				
				if(m>0){
					$('#subBtn').removeClass('disabled');
				}else{
					$('#subBtn').addClass('disabled');
				}
				
				$('#checkeBoxCount').text(m);
					if(m==$("input[name='shoppingId']").length){
						$("#all").prop("checked",true);
					}
			}
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			/*$(function(){

			var priceValue = $('.price').val($('.priceText').text());
			var totalp=0;
			$("table tr").each(function(i){

				$('.add').eq(i).click(function() {
					$('#totalPrice span').text(0);
					//获得数量和单价
					var count = $('.count').eq(i).val();
					var price = $('.priceText').eq(i).text();
					var countnum = eval("("+count+"+"+1+")");
					//计算 数量+1*单价
					//alert(countnum+"*"+price);
					var totalValue = eval(countnum+"*"+price);
					$('.total span').eq(i).text(totalValue);
					$('.countNum').eq(i).val(countnum);
					$('.count').eq(i).val(countnum);
					$.each($("input[name='check']:checked"), function(index, val) {
						totalp = $('.total span').eq(index).text();
						alert($('#totalPrice span').text()+"+"+totalp);
						
						$('#totalPrice span').text(eval($('#totalPrice span').text()+"+"+totalp));
					});
				});

				$('.subtract').eq(i).click(function() {
					//获得数量和单价
					var count = $('.count').eq(i).val();
					var price = $('.priceText').eq(i).text();
					//数量不能小于0
					if($('.count').eq(i).val()>1){
						$('#totalPrice span').text(0);
						var countnum = eval("("+count+"-"+1+")");
						//计算 数量-1*单价
						var totalValue = eval(countnum+"*"+price);
						$('.total span').eq(i).text(totalValue);
						$('.countNum').eq(i).val(countnum);
						$('.count').eq(i).val(countnum);
						$.each($("input[name='check']:checked"), function(index, val) {
							totalp = $('.total span').eq(index).text();
							$('#totalPrice span').text(eval($('#totalPrice span').text()+"+"+totalp));
						});
					}else{
						return;
					}
				});

				$('tr .removeTr').eq(i).click(function(){
					// alert($('tr').length);
					// alert(i+1);



					//bug
					$('tr').eq(i+1).remove();



					// alert($('tr').length);
					$('#totalPrice span').text(0);
					var m = 0;
					$.each($("input[name='check']:checked"), function(index, val) {
						totalp = $('.total span').eq(index).text();
						$('#totalPrice span').text(eval($('#totalPrice span').text()+"+"+totalp));
						m++;
					});
					$('#checkeBoxCount').text(m);
				});
			});
		});*/
			
			
			
			
			
			
			