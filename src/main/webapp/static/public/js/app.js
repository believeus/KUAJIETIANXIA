/*查看报名人员*/
function apply_user_info(a1){
	
	//alert(a1);
	var c1="remid_mob1_"+a1;
	
	if($("#"+c1).siblings('.remid_mob2').is(":hidden")){//判断是否隐藏
	    $('.remid_mob').removeClass('show');	
	    $('.remid_mob2').slideUp(200,function(){});
		//R(12);
		$("#"+c1).parents('.remid_mob').addClass('show');
		$("#"+c1).siblings('.remid_mob2').slideDown(200,function(){});
	}else{		
		$("#"+c1).siblings('.remid_mob2').slideUp(200,function(){
			$("#"+c1).parents('.remid_mob').removeClass('show');
		});
	}
}