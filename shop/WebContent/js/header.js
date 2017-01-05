//头部搜索框提示和搜索内容颜色改变
function searchTips(idstr){
	var tips = $(idstr).val();
	$(idstr).focus(function(){
		if($(this).val()==tips){
			$(this).val("").css("color","#444");
		}else{
			$(this).css("color","#444");
		}
	});
	$(idstr).blur(function(){
		if($(this).val()==""){
			$(this).val(tips).css("color","#999");
		}
	});
}

$(document).ready(function(){
	//头部商品店铺下拉菜单
	$(".dropDown").hover(function() {
		$(this).find(".putIn").removeClass("iconshop1").addClass("iconshop2");
		$(".dropList").show();
	},function(){
		$(".dropList").hide();
		$(this).find(".putIn").removeClass("iconshop2").addClass("iconshop1");
	});
	var goods_li="<li>商品</li>";
	var shop_li="<li>店铺</li>";
	$("ul.dropList li").live("click",function() {
		var listText = $(this).html();
		$(".putIn").val(listText); //将所点击下拉列表的内容复制到input中
		$(this).remove();
		if($(this).html()=="商品"){
				$(".dropList").append(shop_li);
			}else{
				$(".dropList").append(goods_li);
			}
			$(".dropList").hide();
			$(".dropDown").find(".putIn").removeClass("iconshop2").addClass("iconshop1");
	});
	
	/*我的商城下拉*/
	$(".header-list li").mouseover(function(){
		$(this).find(".icon-arrowDown").removeClass("icon-arrowDown").addClass("icon-arrowUp");
	});
	$(".header-list li").mouseout(function(){
		$(this).find(".icon-arrowUp").removeClass("icon-arrowUp").addClass("icon-arrowDown");
	});
});



