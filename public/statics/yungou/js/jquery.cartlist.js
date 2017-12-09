(function(){
	//立即购买
	var  gcartlist = {};
		 gcartlist.DOMS = {};
		 		 
	var _x,_y,m,allscreen=false;		 
	gcartlist.heredoc = function(fn) {
		 //return fn.toString().split('\n').slice(1,-1).join('\n') + '\n'
		  return fn.toString().match(/\/\*!?(?:\@preserve)?[ \t]*(?:\r\n|\n)([\s\S]*?)(?:\r\n|\n)\s*\*\//)[1];
	}

	gcartlist.strToDom = function (arg) {
	　　 var objE = document.createElement("div");
	　　 objE.innerHTML = arg;
	　　 return objE.childNodes;
	};
	var cartlist_shopid="";
	var curr_shopid = '';
	var curr_userlist = '';
	var curr_index = 0;
	var curr_timeout = '';

	gcartlist.gocartlist = function(shopid,path,cookie_pre){
		var syrs='';
		var shopinfo='';

		$.get(path+"/member/cart/Fastpay/",{'shopid':shopid},function(cgoodsdata){	
			var cgoodsinfo = jQuery.parseJSON(cgoodsdata);
			syrs=cgoodsinfo.zongrenshu-cgoodsinfo.canyurenshu;
			shopinfo={'shopid':shopid,'money':cgoodsinfo.price,'shenyu':syrs};
            			var carid='car_'+shopid;
			curr_shopid = shopid;
			if(syrs!=0){
				if(Cartcookie(false)){
    				$('#'+carid).parent().parent().parent().find('.success .main').html(cgoodsinfo.tishi);
    				$('#'+carid).parent().parent().parent().find('.success').show(1500,function(){
       				$('#'+carid).parent().parent().parent().find('.success').hide(1500);});
       				curr_userlist = cgoodsinfo['userList'];
       				
       				curr_index = 0;
       				curr_timeout = '';
       				paopao();
    			}else{
    				$('#'+carid).parent().parent().parent().find('.fail .main').html(cgoodsinfo.tishi);
    				$('#'+carid).parent().parent().parent().find('.fail').show(1500,function(){
    				$('#'+carid).parent().parent().parent().find('.fail').hide(1500);});
    			}
			}else{
    			$('#'+carid).parent().parent().parent().find('.fail .main').html(cgoodsinfo.tishi);
    			$('#'+carid).parent().parent().parent().find('.fail').show(1500,function(){
       			$('#'+carid).parent().parent().parent().find('.fail').hide(1500);});
            }


			function Cartcookie(cook){
				var info = {};
				var Cartlist = $.cookie('Cartlist');
				//判断是否已经存在
				// alert(shopid);
				var encoded = $.toJSON(Cartlist);
				eval("Cartlist123="+Cartlist);
				 for(x in Cartlist123){
				 	if(x == shopid){
				 		return false;
				 	}
			   	 }  
				if(Cartlist){
					var info = $.evalJSON(Cartlist);
					if((typeof info) !== 'object'){
						var info = {};
					}
				}else{
					var info = {};
				}	
				if(!shopinfo[shopid]){
					var CartTotal=$("#sCartTotal").text();
					var CartTotal=$("#sCartTotalA").text();
					$("#sCartTotal").text(parseInt(CartTotal)+1);
					$("#sCartTotalA").text(parseInt(CartTotal)+1);
				}
				info[shopid]={};
				info[shopid]['num']=1;
				info[shopid]['shenyu']=shopinfo['shenyu'];
				info[shopid]['money']=shopinfo['money'];
				info['MoenyCount']='0.00';
				$.cookie('Cartlist',$.toJSON(info),{expires:7,path:'/'});	
				if(cook){
					window.location.href=path+"/member/cart/cartlist/"+new Date().getTime();//+new Date().getTime()
				}
				return true;
			}

			function paopao(){
				if(curr_timeout != '')
					clearTimeout(curr_timeout);

				if(curr_index >= curr_userlist.length)
					return;

				var html = '<div class="paopao paopao'+curr_shopid+' iconfont" style="left: '+ Math.round(Math.random()*100/3) + 'px;">';
				html += '<img width="35px" height="35px" src="/uploads/' + curr_userlist[curr_index].img + '"></div>';
			    $(".pao"+curr_shopid).append(html);
			    //执行动画
			    $(".paopao"+curr_shopid).each(function () {
			        if (!$(this).is(":animated")) {
			            $(this).animate({            //运动
			                top: "-250px",
			                opacity: "0"
			            }, 3000,
			            function () {
			                $(this).remove();        //清除元素
			            })
			        }
			    });
			    curr_index++;
			    curr_timeout = setTimeout(paopao,500);
			}
		});			
	}
	window.gcartlist = gcartlist;	
})();
