// JavaScript Document
function o() {
		var a = document.body,
		b = document.documentElement;
		return {
			x: Math.max(a.scrollWidth, b.clientWidth),
			y: Math.max(a.scrollHeight, b.clientHeight),
			top: Math.max(b.scrollTop, a.scrollTop),
			left: Math.max(b.scrollLeft, a.scrollLeft),
			width: b.clientWidth,
			height: b.clientHeight
		}
	}
function Q(a) {
		var b = o(),
		d = b.height * .482 - a.offsetHeight / 2,
		e = b.left + (b.width - a.offsetWidth) / 2;
		a.style.top = b.top + d + "px",
		a.style.left = e + "px"
}
function R(t,c){
		$("body").append('<div id="tips" class="'+c+'"><span>'+t+'</span></div>'),
		Q(document.getElementById("tips")),setTimeout(function() {
			$("#tips").animate({
				top: o().top,
				opacity: 0
			},
			function() {
				$(this).remove()
			})
		},3000)
}

function R2(t,s,c){
		$("body").append('<div id="tips" class="'+c+'"><span>'+t+'</span></div>'),
		Q(document.getElementById("tips")),setTimeout(function() {
			$("#tips").animate({
				top: o().top,
				opacity: 0
			},
			function() {
				$(this).remove()
			})
		},s)
}

function R3(t,c){
		$("body").append('<div id="tips3" class="'+c+'"><span>'+t+'</span></div>'),
		Q(document.getElementById("tips3")),setTimeout(function() {
            //$("#tips3").css("background-image","url(images/r3.gif)");
			$("#tips3").animate({
				top: o().top,
				opacity: 0
			},
			function() {
				$(this).remove();
			})
		},3000)
}

function R4(t,s,c){
	    if (s=="" || isNaN(s)) s=3000;
		$("body").append('<div id="tips4" class="'+c+'"><span>'+t+'</span></div>'),
		Q(document.getElementById("tips4")),setTimeout(function() {
			$("#tips4").animate({
				top: o().top,
				opacity: 0
			},
			function() {
				$(this).remove()
			})
		},s)
}

//ҳ����ؿ�ʼ
$(document).ready(function() {

var visibleW=$(window).width();

/*�������ķ���ģ��*/
$('#top_rightXJs,#top_rightXJs2').click(function(){
	$('.pr_list').css('left',visibleW+"px");
	$('.pr_list').animate({left:'0'},500);
});

$('.pr_listBtn,.pr_listBtn a').click(function(){
	$('.pr_list').animate({left:'100%'},500);
});
$('.pr_listTip').click(function(){
	//var pr_listTip2=$(this).find('.pr_listTip');
	var class2=$(this).parents('.pr_listConModn').find('.class2');
	if(class2.is(":hidden")){
		$('.pr_listTip').removeClass('pr_listTip2');		
		$(this).addClass('pr_listTip2');
	}else{
		$(this).removeClass('pr_listTip2');
		
	}
	
});

/*�����ɫ���� �� ȡ����ť �Ĳ���*/
$('.J_Shade_tip_img,.reset,.vote_tip_operate div.yl,.vote_tip_operate div.fq').click(function(){
	hideBg();
	$('.J_Shade_tip').css('display','none');	
	$('.apply_box').css('display','none');	
});



$('input,textarea').focus(function(){
   $(".footer2").css("display","none");

   $(this).blur(function() {
      $(".footer2").css("display","block");
   });
});


/*�����б߿���ı����100%���
text_W();
function text_W(){
	var text_w=$('.apply_warp').width()-22;
	$('.apply_warp input').css('width',text_w+'px');
	$('.apply_warp textarea').css('width',text_w+'px');
}
*/
});
//ҳ����ؽ���


//���صײ���ʼ
function foot_move(a1){
   $(".footer2").css("display","none");

   $("#"+a1).blur(function() {
      $(".footer2").css("display","block");
   });
}
//���صײ�����


/*��� ���������Ȧ ��ť�Ĳ���--> .btn_general*/
function share_to(){
	var display=$('.J_Shade_tip').css('display');
	if(display=='none'){
		showBg();
		$('.J_Shade_tip').css('display','block');
	}else{
		hideBg();
		$('.J_Shade_tip').css('display','none');	
	}
}


/*�鿴������Ա*/
function apply_user_info(a1){
	//alert(a1);
	var c1="remid_mob1_"+a1;
	
	if($("#"+c1).siblings('.remid_mob2').is(":hidden")){//�ж��Ƿ�����
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

/*��� ��Ҫ���� ��ť�Ĳ���--> .apply*/
function apply1(){
	var display=$('.apply_box1').css('display');
	if(display=='none'){
		showBg();
		$('.apply_box1').css('display','block');
	}else{
		hideBg();
		$('.apply_box1').css('display','none');	
	}
}

function apply2(){
	var display=$('.apply_box2').css('display');
	if(display=='none'){
		showBg();
		$('.apply_box2').css('display','block');
	}else{
		hideBg();
		$('.apply_box2').css('display','none');	
	}
}


/*���ػ�ɫ����*/
function hideBg(){
	$('.J_Shade').removeClass('J_ShadeShow');
	$('.J_Shade').addClass('J_ShadeHide');
}

/*��ʾ��ɫ����*/
function showBg(){
	$('.J_Shade').removeClass('J_ShadeHide');
	$('.J_Shade').addClass('J_ShadeShow');
}



/*������⿪ʼ*/
function isChn(str){ 

   var name = /^[\u4E00-\u9FA5]+$/; 

   if(!name.test(str)){ 
      R("��ʾ������ȷ������ʵ������"); 
      return false;  
   }

} 
/*����������*/


/*���֤��⿪ʼ*/
function checkCardId(socialNo){

	  if(socialNo == "")
	  {
	    R("����ȷ�������֤");
	    return (false);
	  }

	  if (socialNo.length != 15 && socialNo.length != 18)
	  {
	    R("����ȷ�������֤");
	    return (false);
	  }
		
	 var area={11:"����",12:"���",13:"�ӱ�",14:"ɽ��",15:"���ɹ�",21:"����",22:"����",23:"������",31:"�Ϻ�",32:"����",33:"�㽭",34:"����",35:"����",36:"����",37:"ɽ��",41:"����",42:"����",43:"����",44:"�㶫",45:"����",46:"����",50:"����",51:"�Ĵ�",52:"����",53:"����",54:"����",61:"����",62:"����",63:"�ຣ",64:"����",65:"�½�",71:"̨��",81:"���",82:"����",91:"����"}; 
	   
	   if(area[parseInt(socialNo.substr(0,2))]==null) {
	   	R("����ȷ�������֤");
	    	return (false);
	   } 
	    	
	  if (socialNo.length == 15)
	  {
	     pattern= /^\d{15}$/;
	     if (pattern.exec(socialNo)==null){
			R("����ȷ�������֤");
			return (false);
	    }
		var birth = parseInt("19" + socialNo.substr(6,2));
		var month = socialNo.substr(8,2);
		var day = parseInt(socialNo.substr(10,2));
		switch(month) {
			case '01':
			case '03':
			case '05':
			case '07':
			case '08':
			case '10':
			case '12':
				if(day>31) {
					R('����ȷ�������֤');
					return false;
				}
				break;
			case '04':
			case '06':
			case '09':
			case '11':
				if(day>30) {
					R('����ȷ�������֤');
					return false;
				}
				break;
			case '02':
				if((birth % 4 == 0 && birth % 100 != 0) || birth % 400 == 0) {
					if(day>29) {
						R('����ȷ�������֤');
						return false;
					}
				} else {
					if(day>28) {
						R('����ȷ�������֤');
						return false;
					}
				}
				break;
			default:
				R('����ȷ�������֤');
				return false;
		}
		var nowYear = new Date().getYear();
		if(nowYear - parseInt(birth)<15 || nowYear - parseInt(birth)>100) {
			R('����ȷ�������֤');
			return false;
		}
	    return (true);
	  }
	  
	  var Wi = new Array(
	            7,9,10,5,8,4,2,1,6,
	            3,7,9,10,5,8,4,2,1
	            );
	  var   lSum        = 0;
	  var   nNum        = 0;
	  var   nCheckSum   = 0;
	  
	    for (i = 0; i < 17; ++i)
	    {
	        

	        if ( socialNo.charAt(i) < '0' || socialNo.charAt(i) > '9' )
	        {
	            R("����ȷ�������֤");
	            return (false);
	        }
	        else
	        {
	            nNum = socialNo.charAt(i) - '0';
	        }
	         lSum += nNum * Wi[i];
	    }

	  
	    if( socialNo.charAt(17) == 'X' || socialNo.charAt(17) == 'x')
	    {
	        lSum += 10*Wi[17];
	    }
	    else if ( socialNo.charAt(17) < '0' || socialNo.charAt(17) > '9' )
	    {
	        R("����ȷ�������֤");
	        return (false);
	    }
	    else
	    {
	        lSum += ( socialNo.charAt(17) - '0' ) * Wi[17];
	    }

	    
	    
	    if ( (lSum % 11) == 1 )
	    {
	        return true;
	    }
	    else
	    {
	        R("����ȷ�������֤");
	        return (false);
	    }
		
}
/*���֤������*/


/*�ֻ���⿪ʼ*/
function checkPhone(tel) {

if ( /^13\d{9}$/g.test(tel) || /^14\d{9}$/g.test(tel) || /^15\d{9}$/g.test(tel) || /^18\d{9}$/g.test(tel) ){
     return true;
}else{
	 R("����ȷ�����ֻ�");
     return (false);
}

}
/*�ֻ�������*/


/*�����⿪ʼ*/
function checkEmail(email){
    var temp = email;
    //�Ե����ʼ�����֤
    var myreg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+[\.][a-zA-Z]{2,3}$/;
    if (!myreg.test(temp)){
        R("����ȷ����E-Mail");
        return false;
    }
}
/*���������*/

/*�����⿪ʼ*/
function checkUser2(user){
    var reg = /^[A-Za-z0-9]+$/;   
   if (arr=user.match(reg)) {  
      //return ture;   
   }else{
      R("����ֻ��������Ӣ�ġ�����");   
      return false;   
   }   
}
/*���������*/

/*�û�����⿪ʼ*/
function checkUser(user){
   var reg = /^(\w|[\u4E00-\u9FA5])*$/;   
   if (arr=user.match(reg)) {  
      //return ture;   
   }else{
      R("�û���ֻ��������Ӣ�ġ����֡�����");   
      return false;   
   }   
}
/*�û���������*/


/*���汨�����ݿ�ʼ*/
function apply_save() {
	var username=$("#username").val();
	var phone=$("#phone").val();
	var weixin=$("#weixin").val();
	var beizhu=$("#beizhu").val();	
	var aid=$("#aid").val();

	if (aid=="" || isNaN(aid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (username == "" || username.length > 4 || username.length < 2) {
       R("����ȷ������ʵ����");
       return (false);
    }
	
	if (isChn(username)==false) return (false);
	
	if (phone == "" || phone.length != 11 || isNaN(phone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(phone)==false) return (false);
	
	if (weixin == "" || weixin.length > 30) {
       R("����ȷ����΢���ʺ�");
       return (false);
    }
	
	if (beizhu != "" && (beizhu==" " || beizhu=="��")) {
       R("����ȷ���뱸ע");
       return (false);
    }
	
	$("#BtnOn1").css("display","none");
	$("#BtnOn2").css("display","inline");
	//$("#BtnOn3").css("display","none");
	
	$.post("lib/apply_save.asp", {username:username,phone:phone,weixin:weixin,beizhu:beizhu,aid:aid},function(txt){tb_remove(),$("#net_re").html(txt);R(txt)});
}

function apply_save_re(a1) {
   if (a1=="no"){
	  $("#BtnOn1").css("display","inline");
	  $("#BtnOn2").css("display","none");
	  $("#BtnOn3").css("display","inline");
   }
   
   if (a1=="yes"){
      apply1();	
	  $("#BtnOn1").css("display","inline");
	  $("#BtnOn2").css("display","none");
	  $("#BtnOn3").css("display","inline");
   }
}
/*���汨�����ݽ���*/


/*��֤�����˿�ʼ*/
function apply_user_check() {
	var aid=$("#aid").val();
	var pwd=$("#pwd").val();
	
	if (aid=="" || isNaN(aid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (pwd == "" || pwd.length > 16 || pwd.length < 6) {
       R("����ȷ�����������");
       return (false);
    }
	
	$("#BtnOn4").css("display","none");
	$("#BtnOn5").css("display","inline");
	//$("#BtnOn6").css("display","none");
	
	$.post("lib/apply_user_check.asp", {aid:aid,pwd:pwd},function(txt){tb_remove(),$("#net_re").html(txt);R(txt)});
}



function apply_user_check_re(a1) {
   if (a1=="no"){
	  $("#BtnOn4").css("display","inline");
	  $("#BtnOn5").css("display","none");
	  $("#BtnOn6").css("display","inline");
   }
   
   if (a1=="yes"){
      apply2();	
	  $("#BtnOn4").css("display","inline");
	  $("#BtnOn5").css("display","none");
	  $("#BtnOn6").css("display","inline");
   }
}
/*��֤�����˽���*/


/*�鿴������ҳ��ʼ*/
function apply_user_del(a1,a2,a3){
	
	var v1=$("#aid").val();
	var url;

	if (a1=="" || isNaN(a1) || v1=="" || isNaN(v1)) {
       R("�����쳣��");
       return (false);
    }
	
	var jstxt="ɾ���û���"+a2+"����ȷ�ϲ�����"
	
	if (confirm(jstxt)){
	   var b1="remid_mob_s_"+a1;
	   var b2="remid_"+a1;
	
       $("#"+b1).slideUp(300);
	   
	   url="lib/apply_user_del.asp";
	   if (a3=="ping") url="apply_ping_del.asp";	   
	   $.post(url, {uid:a1,aid:v1},function(txt){tb_remove(),$("#net_re").html(txt);R(txt)});
	}   
}


function apply_user_page(a1){
	var k=$("#k").val();
	var aid=$("#aid").val();
	var tid=$("#tid").val();
	var page=$("#page").val();
	var d1="remid_more_"+page;
	var url;
	
	if (page=="" || isNaN(page) || aid=="" || isNaN(aid) || tid=="" || isNaN(tid)) {
       R("�����쳣��");
       return (false);
    }
	
	var nextpage=page*1+1;
	var b1="rem_load1_"+page;
	var b2="rem_load2_"+page;
	
	$("#"+b2).css("display","block");
	$("#"+b1).css("display","none");
	
	url="apply_user_page.do";
	if (a1=="ping") url="apply_ping_page.do";
	
	$.post(url, {page:nextpage,aid:aid,tid:tid,k:k},function(txt){tb_remove(),$("#"+d1).html(txt);});
}


function apply_user_search(a1){
	var search_text=$("#search_text").val();
	var aid=$("#aid").val();
	
	if (a1=="ping"){
	   location.href="apply-ping-"+aid+"-"+search_text+".html";
	}else{
	   location.href="apply-user-"+aid+"-"+search_text+".html";
	}
}
/*�鿴������ҳ����*/


/*�����б�ʼ*/
function apply_list_page(){
	var k=$("#search_text").val();
	var page=$("#page").val();
	var netid=$("#netid").val();
	var d1="remid_more_"+page;
	
	if (page=="" || isNaN(page)) {
       R("�����쳣��");
       return (false);
    }
	
	var nextpage=page*1+1;
	var b1="rem_load1_"+page;
	var b2="rem_load2_"+page;
	
	$("#"+b2).css("display","block");
	$("#"+b1).css("display","none");
	
	$.post("apply_list_page.asp", {page:nextpage,k:k,netid:netid},function(txt){tb_remove(),$("#"+d1).html(txt);});
}


function apply_list_search(){

	var search_text=$("#search_text").val();
	var netid=$("#netid").val();
	
	//if (netid!="" && isNaN(netid)) {
//       R("�����쳣��");
//       return (false);
//    }
	
	if (search_text=="���롰��ؼ��֡��򡰷�����������") search_text="";
	
	if (netid=="") netid="0";
	
	//$.post("html.asp", {k:search_text,netid:netid},function(txt){tb_remove(),$("#net_re").html(txt);});	
	location.href="html.asp?key="+search_text;
}
/*�����б����*/


/*��������ҳ�л���ʼ*/
function apply_add_site(a1) {

if (a1 != "1" && a1 != "2" && a1 != "3"){
    //R("�����쳣��");
    //return (false);	
}

if (a1=="1" || a1=="2") {
   $(".apply_add1 div").removeClass("apply_add1_on");
   $("#psite").val(a1);
}

if (a1 == "1") {
   $(".apply_add3").css("display","none");
   $(".apply_add4").css("display","none");
   $("#address").val("");
   $(".apply_add1_1").addClass("apply_add1_on");
}

if (a1 == "2") {
   $(".apply_add3").css("display","block");
   $(".apply_add1_2").addClass("apply_add1_on");
}

if (a1 == "3") R("VIP�������ڲ���");

if (a1 == "4") {
   $("#apply_add5").css("display","none");
   $(".apply_add4").css("display","block");
}

}
/*��������ҳ�л�����*/


/*����ͼƬ�ϴ���ʼ*/
function FpicUp(){
  $("#FpicUpDiv2").css("display","block");
  $("#FpicUpDiv1").css("display","none");
  $("#apply_up_on").trigger("click");
}

function FpicDel(a1){
  $("#FpicUpDiv4").css("display","block");
  $("#FpicUpDiv3").css("display","none");
  
  url="fpic_up_del.do";
  
  if (a1=="2") url="MJoinpic_up_del.do";
  
  $.post(url, function(txt){tb_remove(),$("#net_re").html(txt);});
}


function FpicTo(a1,a2){
	if (a2!="0" && a2!="1") a2="0";
	$("#picUrl",window.parent.parent.document).val(a1);
	$("#picSite",window.parent.parent.document).val(a2);
}


function JpicTo(a1,a2,a3){
	$("#picUrl"+a2,window.parent.parent.document).val(a1);
	$("#picSite"+a2,window.parent.parent.document).val(a3);
}

function JpicDel(a1,a2){
  $("#FpicUpDiv4").css("display","block");
  $("#FpicUpDiv3").css("display","none");
  
  url="jobpic_up_del.do";
  if (a2=="haibao") url="haibaoPic_up_del.do";
  if (a2=="matchJoin") url="MJoinPic_up_del.do";
  
  $.post(url,{picid:a1},function(txt){tb_remove(),$("#net_re").html(txt);});
}
/*����ͼƬ�ϴ�����*/


/*����������ʼ*/
function apply_add_save() {
	var title=$("#title").val();
	var timeTxt=$("#timeTxt").val();
	var priceTxt=$("#priceTxt").val();
	var info=$("#info").val();	
	var info=info.replace(/\n/g, "<br />");
	var fromUser=$("#fromUser").val();
	var fromPhone=$("#fromPhone").val();
	var fromWeixin=$("#fromWeixin").val();
	var fromPwd=$("#fromPwd").val();
	var psite=$("#psite").val();
	var picUrl=$("#picUrl").val();
	var province=$("#province").val();
	var city=$("#city").val();
	var area=$("#area").val();
	var address=$("#address").val();
	
	if (psite != "1" && psite != "2") {
       R("�����쳣��");
       return (false);
    }
	
	if (title == "" || title == " " || title == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (title.length > 30) {
       R("���������30���ַ�");
       return (false);
    }
	
	if (timeTxt != "" && (timeTxt == " " || timeTxt == "��")) {
       R("����ȷ����ʱ��");
       return (false);
    }
	
	if (priceTxt != "" && (priceTxt == " " || priceTxt == "��")) {
       R("����ȷ��������");
       return (false);
    }
	
	if (address != "" && (province == "" || city == "") && psite=="2") {
       R("��ѡ��ʡ���С���");
       return (false);
    }
	
	if (info == "" || info == " " || info == "��") {
       R("����ȷ������ϸ");
       return (false);
    }
	
	if (info.length > 100000) {
       R("���ϸ����10����ַ�");
       return (false);
    }
	
	if (fromPwd== "" || fromPwd == " " || fromPwd == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromPwd.length > 16 || fromPwd.length < 6) {
       R("���볤������6-16λ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPhone == "" || fromPhone.length != 11 || isNaN(fromPhone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(fromPhone)==false) return (false);
	
	if (fromWeixin == "" || fromWeixin.length > 30) {
       R("����ȷ����΢�Ż�QQ");
       return (false);
    }	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("lib/apply_add_save.asp", {title:title,timeTxt:timeTxt,priceTxt:priceTxt,info:info,fromUser:fromUser,fromPwd:fromPwd,psite:psite,picUrl:picUrl,province:province,city:city,area:area,address:address,fromPhone:fromPhone,fromWeixin:fromWeixin},function(txt){tb_remove(),$("#net_re").html(txt);R(txt)});
}



function apply_add_save_re(a1) {
   $("#apply_add_on2").css("display","none");
   $("#apply_add_on1").css("display","block");
}
/*������������*/


/*����������ʼ*/
function match_add_save() {
	var title=$("#title").val();
	var timeTxt=$("#timeTxt").val();
	var priceTxt=$("#priceTxt").val();
	var info=$("#info").val();
	var info=info.replace(/\n/g, "<br />");
	var fromUser=$("#fromUser").val();
	var fromPhone=$("#fromPhone").val();
	var fromWeixin=$("#fromWeixin").val();
	var fromPwd=$("#fromPwd").val();
	var picUrl=$("#picUrl").val();
	var host=$("#host").val();
	
	if (title == "" || title == " " || title == "��") {
       R("����ȷ�����������");
       return (false);
    }
	
	if (title.length > 30) {
       R("������������30���ַ�");
       return (false);
    }
	
	if (timeTxt != "" && (timeTxt == " " || timeTxt == "��")) {
       R("����ȷ�������ʱ��");
       return (false);
    }
	
	if (priceTxt != "" && (priceTxt == " " || priceTxt == "��")) {
       R("����ȷ�����������");
       return (false);
    }
	
	if (host != "" && (host == " " || host == "��")) {
       R("����ȷ����������췽");
       return (false);
    }
	
	if (host.length > 50) {
       R("����ȷ����������췽");
       return (false);
    }
	
	if (info == "" || info == " " || info == "��") {
       R("����ȷ���������ϸ");
       return (false);
    }
	
	if (info.length > 100000) {
       R("������ϸ����10����ַ�");
       return (false);
    }
	
	if (fromPwd== "" || fromPwd == " " || fromPwd == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromPwd.length > 16 || fromPwd.length < 6) {
       R("���볤������6-16λ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPhone == "" || fromPhone.length != 11 || isNaN(fromPhone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(fromPhone)==false) return (false);
	
	if (fromWeixin == "" || fromWeixin.length > 30) {
       R("����ȷ����΢�Ż�QQ");
       return (false);
    }
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("lib/match_add_save.asp", {title:title,timeTxt:timeTxt,priceTxt:priceTxt,info:info,fromUser:fromUser,fromPwd:fromPwd,picUrl:picUrl,host:host,fromPhone:fromPhone,fromWeixin:fromWeixin},function(txt){tb_remove(),$("#net_re").html(txt);R(txt)});
}



function match_add_save_re(a1) {
	  $("#apply_add_on2").css("display","none");
	  $("#apply_add_on1").css("display","block");
}
/*������������*/


/*����������ʼ*/
function match_Join_save() {
	var username=$("#username").val();
	var phone=$("#phone").val();
	var weixin=$("#weixin").val();
	var kouhao=$("#kouhao").val();
	var beizhu=$("#beizhu").val();	
	var aid=$("#aid").val();
	var netid=$("#netid").val();
	var matmv=$("#matmv").val();
	var wxsite=$("#wxsite").val();
	var picUrl1=$("#picUrl1").val();
	var picUrl2=$("#picUrl2").val();
	var picUrl3=$("#picUrl3").val();
	var picUrl4=$("#picUrl4").val();
	var picUrl5=$("#picUrl5").val();
	var picUrl6=$("#picUrl6").val();
	var picUrl7=$("#picUrl7").val();
	var picUrl8=$("#picUrl8").val();
	var picUrl9=$("#picUrl9").val();
	var picSite1=$("#picSite1").val();
	var picSite2=$("#picSite2").val();
	var picSite3=$("#picSite3").val();
	var picSite4=$("#picSite4").val();
	var picSite5=$("#picSite5").val();
	var picSite6=$("#picSite6").val();
	var picSite7=$("#picSite7").val();
	var picSite8=$("#picSite8").val();
	var picSite9=$("#picSite9").val();

	if (aid=="" || isNaN(aid)) {
       R("�����쳣��");
       return (false);
    }
	
	//if (netid=="" && isNaN(netid)) {
//       R("�����쳣��");
//       return (false);
//    }
	
	if (username == "" || username.length > 10 || username.length < 2) {
       R("����ȷ������ʵ����");
       return (false);
    }
	
	//if (isChn(username)==false) return (false);
	
	if (phone == "" || phone.length != 11 || isNaN(phone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(phone)==false) return (false);
	
	if (wxsite=="yes"){
	   if (weixin == "" || weixin.length > 30) {
          R("����ȷ����΢���ʺ�");
          return (false);
       }
	}
	
	if (picUrl1 == "" || picUrl1.length > 100) {
       R("���ϴ�����ͼƬ");
       return (false);
    }
	
	if (matmv != "" && (matmv.substr(0,19)!="http://v.youku.com/" || matmv.length<30 || matmv.indexOf("/id_")<=0 || matmv.indexOf(".html")<=0)) {
       R("����ȷ���롰�ſ���Ƶ����ַ");
       return (false);
    }
	
	if (kouhao != "" && (kouhao==" " || kouhao=="��")) {
       R("����ȷ��������ں�");
       return (false);
    }
	
	if (beizhu != "" && (beizhu==" " || beizhu=="��")) {
       R("����ȷ���뱸ע");
       return (false);
    }
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("lib/match_Join_save.asp", {username:username,phone:phone,weixin:weixin,kouhao:kouhao,beizhu:beizhu,aid:aid,netid:netid,matmv:matmv,wxsite:wxsite,picUrl1:picUrl1,picUrl2:picUrl2,picUrl3:picUrl3,picUrl4:picUrl4,picUrl5:picUrl5,picUrl6:picUrl6,picUrl7:picUrl7,picUrl8:picUrl8,picUrl9:picUrl9,picSite1:picSite1,picSite2:picSite2,picSite3:picSite3,picSite4:picSite4,picSite5:picSite5,picSite6:picSite6,picSite7:picSite7,picSite8:picSite8,picSite9:picSite9},function(txt){tb_remove(),$("#net_re").html(txt);R(txt)});
}

function match_Join_save_re(a1) {
   if (a1=="no"){
	  $("#apply_add_on2").css("display","none");
	  $("#apply_add_on1").css("display","block");
   }
   
   if (a1=="yes"){
      
   }
}


function matchPic_ping(){
   var cssTest=$("#btn_ping").css("display");
	
   if (cssTest=="none"){
      $("#btn_ping_open").css("display","none");
      $("#btn_ping_txt").css("display","block");
      $("#btn_ping").css("display","block");
   }else{
	  $("#btn_ping_open").css("display","block");
      $("#btn_ping_txt").css("display","none");
      $("#btn_ping").css("display","none");
   }
}



function match_Join_edit_save() {
	var username=$("#username").val();
	var phone=$("#phone").val();
	var weixin=$("#weixin").val();
	var kouhao=$("#kouhao").val();
	var beizhu=$("#beizhu").val();	
	var aid=$("#aid").val();
	var pid=$("#pid").val();
	var netid=$("#netid").val();
	var matmv=$("#matmv").val();
	var wxsite=$("#wxsite").val();
	var picUrl1=$("#picUrl1").val();
	var picUrl2=$("#picUrl2").val();
	var picUrl3=$("#picUrl3").val();
	var picUrl4=$("#picUrl4").val();
	var picUrl5=$("#picUrl5").val();
	var picUrl6=$("#picUrl6").val();
	var picUrl7=$("#picUrl7").val();
	var picUrl8=$("#picUrl8").val();
	var picUrl9=$("#picUrl9").val();
	var picSite1=$("#picSite1").val();
	var picSite2=$("#picSite2").val();
	var picSite3=$("#picSite3").val();
	var picSite4=$("#picSite4").val();
	var picSite5=$("#picSite5").val();
	var picSite6=$("#picSite6").val();
	var picSite7=$("#picSite7").val();
	var picSite8=$("#picSite8").val();
	var picSite9=$("#picSite9").val();

	if (aid=="" || isNaN(aid) || pid=="" || isNaN(pid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (netid=="" && isNaN(netid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (picUrl1 == "" || picUrl1.length > 100) {
       R("���ϴ�����ͼƬ");
       return (false);
    }
	
	if (username == "" || username.length > 10 || username.length < 2) {
       R("����ȷ������ʵ����");
       return (false);
    }
	
	//if (isChn(username)==false) return (false);
	
	if (phone == "" || phone.length != 11 || isNaN(phone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(phone)==false) return (false);
	
	if (wxsite=="yes"){
	   if (weixin == "" || weixin.length > 30) {
          R("����ȷ����΢���ʺ�");
          return (false);
       }
	}

	//if (matmv != "" && (matmv.substr(0,19)!="http://v.youku.com/" || matmv.length<30 || matmv.indexOf("/id_")<=0 || matmv.indexOf(".html")<=0)) {
       //R("����ȷ���롰�ſ���Ƶ����ַ");
       //return (false);
    //}
	
	if (kouhao != "" && (kouhao==" " || kouhao=="��")) {
       R("����ȷ��������ں�");
       return (false);
    }
	
	if (beizhu != "" && (beizhu==" " || beizhu=="��")) {
       R("����ȷ���뱸ע");
       return (false);
    }
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	
	
	$.post("match_Join_edit_save.do", {username:username,phone:phone,weixin:weixin,kouhao:kouhao,beizhu:beizhu,aid:aid,pid:pid,netid:netid,matmv:matmv,wxsite:wxsite,picUrl1:picUrl1,picUrl2:picUrl2,picUrl3:picUrl3,picUrl4:picUrl4,picUrl5:picUrl5,picUrl6:picUrl6,picUrl7:picUrl7,picUrl8:picUrl8,picUrl9:picUrl9,picSite1:picSite1,picSite2:picSite2,picSite3:picSite3,picSite4:picSite4,picSite5:picSite5,picSite6:picSite6,picSite7:picSite7,picSite8:picSite8,picSite9:picSite9},function(txt){tb_remove(),$("#net_re").html(txt);});
}



function match_Join_edit_save_re(a1) {
   if (a1=="no"){
	  $("#apply_add_on2").css("display","none");
	  $("#apply_add_on1").css("display","block");
   }
   
   if (a1=="yes"){
      
   }
}


function match_tp_Nobegin() {
   R("������û�п�ʼ��<br>���ע����ʱ�䡣");
}
/*������������*/


/*��������ͼƬҳ��ʼ*/
function PicListAutoHeight(a1) {
var h = $("."+a1).height();

$(".match_pic_info2 ul li").css("height",h+"px");
  
window.onresize = function() {
	            PicListAutoHeight(a1);
			};
}
/*��������ͼƬҳ����*/


/*����ͶƱҳ��Ƶ��ʼ*/
function match_pic_mv_con() {
	$("#match_pic_mv2").css("display","block");
	$("#match_pic_mv1").css("display","none");
}
/*����ͶƱҳ��Ƶ����*/


/*������Ƹ��ʼ*/
function job_add_save() {
	var title=$("#title").val();
	var jobZhiWei=$("#jobZhiWei").val();
	var jobDaiYu=$("#jobDaiYu").val();
	var host=$("#host").val();
	var info=$("#info").val();
	var fromPwd=$("#fromPwd").val();
	var fromUser=$("#fromUser").val();
	var fromPhone=$("#fromPhone").val();
	var fromWeixin=$("#fromWeixin").val();
	var fromPwd=$("#fromPwd").val();
	var psite=$("#psite").val();
	var picUrl=$("#picUrl").val();
	var province=$("#province").val();
	var city=$("#city").val();
	var area=$("#area").val();
	var address=$("#address").val();
	
	if (psite != "1" && psite != "2") {
       R("�����쳣��");
       return (false);
    }
	
	if (title == "" || title == " " || title == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (title.length > 30) {
       R("���������30���ַ�");
       return (false);
    }
	
	if (jobZhiWei != "" && (jobZhiWei == " " || jobZhiWei == "��")) {
       R("����ȷ������Ƹְλ");
       return (false);
    }
	
	if (jobDaiYu != "" && (jobDaiYu == " " || jobDaiYu == "��")) {
       R("����ȷ����н�����");
       return (false);
    }
	
	if (host != "" && (host == " " || host == "��")) {
       R("����ȷ�������쵥λ");
       return (false);
    }
	
	if (address != "" && (province == "" || city == "") && psite=="2") {
       R("��ѡ��ʡ���С���");
       return (false);
    }
	
	if (info == "" || info == " " || info == "��") {
       R("����ȷ������ϸ");
       return (false);
    }
	
	if (info.length > 100000) {
       R("���ϸ����10����ַ�");
       return (false);
    }
	
	if (fromPwd== "" || fromPwd == " " || fromPwd == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromPwd.length > 16 || fromPwd.length < 6) {
       R("���볤������6-16λ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPhone == "" || fromPhone.length != 11 || isNaN(fromPhone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(fromPhone)==false) return (false);
	
	if (fromWeixin == "" || fromWeixin.length > 30) {
       R("����ȷ����΢�Ż�QQ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("job_add_save.do", {title:title,jobZhiWei:jobZhiWei,jobDaiYu:jobDaiYu,host:host,info:info,fromUser:fromUser,fromPwd:fromPwd,fromPhone:fromPhone,fromWeixin:fromWeixin,psite:psite,picUrl:picUrl,province:province,city:city,area:area,address:address},function(txt){tb_remove(),$("#net_re").html(txt);});
}



function job_add_save_re(a1) {
   $("#apply_add_on2").css("display","none");
   $("#apply_add_on1").css("display","block");
}
/*������Ƹ����*/


/*��Ƹ������ʼ*/
function job_Join_save() {
	var username=$("#username").val();
	var phone=$("#phone").val();
	var weixin=$("#weixin").val();
	var beizhu=$("#beizhu").val();	
	var aid=$("#aid").val();
	var picUrl1=$("#picUrl1").val();
	var picUrl2=$("#picUrl2").val();
	var picUrl3=$("#picUrl3").val();
	var netid=$("#netid").val();

	if (aid=="" || isNaN(aid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (netid=="" && isNaN(netid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (username == "" || username.length > 4 || username.length < 2) {
       R("����ȷ������ʵ����");
       return (false);
    }
	
	if (isChn(username)==false) return (false);
	
	if (phone == "" || phone.length != 11 || isNaN(phone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(phone)==false) return (false);
	
	if (weixin == "" || weixin.length > 30) {
       R("����ȷ����΢���ʺ�");
       return (false);
    }
	
	if (beizhu != "" && (beizhu==" " || beizhu=="��")) {
       R("����ȷ���뱸ע");
       return (false);
    }
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("job_Join_save.do", {username:username,phone:phone,weixin:weixin,beizhu:beizhu,aid:aid,picUrl1:picUrl1,picUrl2:picUrl2,picUrl3:picUrl3,netid:netid},function(txt){tb_remove(),$("#net_re").html(txt);});
}



function job_Join_save_re(a1) {
   if (a1=="no"){
	  $("#apply_add_on2").css("display","none");
	  $("#apply_add_on1").css("display","block");
   }
   
   if (a1=="yes"){
      
   }
}


function jobUserPic(a1) {
   if (a1=="") return (false);
   var pictxt="<img src='up/pic/"+a1+"' />"
   $("#jobUserPic1").html(pictxt);
   $("#jobUserPic").animate({marginLeft:"0%"});
}

function jobUserPicBack() {
   $("#jobUserPic").animate({marginLeft:"100%"});
}
/*��Ƹ��������*/


/*������ļ��ʼ*/
function recruit_add_save() {
	var title=$("#title").val();
	var jobZhiWei=$("#jobZhiWei").val();
	var jobDaiYu=$("#jobDaiYu").val();
	var host=$("#host").val();
	var info=$("#info").val();
	var info=info.replace(/\n/g, "<br />");
	var fromPwd=$("#fromPwd").val();
	var fromUser=$("#fromUser").val();
	var fromPhone=$("#fromPhone").val();
	var fromWeixin=$("#fromWeixin").val();
	var psite=$("#psite").val();
	var picUrl=$("#picUrl").val();
	var province=$("#province").val();
	var city=$("#city").val();
	var area=$("#area").val();
	var address=$("#address").val();
	
	if (psite != "1" && psite != "2") {
       R("�����쳣��");
       return (false);
    }
	
	if (title == "" || title == " " || title == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (title.length > 30) {
       R("���������30���ַ�");
       return (false);
    }
	
	if (jobZhiWei != "" && (jobZhiWei == " " || jobZhiWei == "��")) {
       R("����ȷ������Ƹְλ");
       return (false);
    }
	
	if (jobDaiYu != "" && (jobDaiYu == " " || jobDaiYu == "��")) {
       R("����ȷ����н�����");
       return (false);
    }
	
	if (host != "" && (host == " " || host == "��")) {
       R("����ȷ�������쵥λ");
       return (false);
    }
	
	if (address != "" && (province == "" || city == "") && psite=="2") {
       R("��ѡ��ʡ���С���");
       return (false);
    }
	
	if (info == "" || info == " " || info == "��") {
       R("����ȷ������ϸ");
       return (false);
    }
	
	if (info.length > 100000) {
       R("���ϸ����10����ַ�");
       return (false);
    }
	
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPwd.length > 16 || fromPwd.length < 6) {
       R("���볤������6-16λ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPhone == "" || fromPhone.length != 11 || isNaN(fromPhone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(fromPhone)==false) return (false);
	
	if (fromWeixin == "" || fromWeixin.length > 30) {
       R("����ȷ����΢�Ż�QQ");
       return (false);
    }

	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("lib/recruit_add_save.asp", {title:title,jobZhiWei:jobZhiWei,jobDaiYu:jobDaiYu,host:host,info:info,fromUser:fromUser,fromPwd:fromPwd,psite:psite,picUrl:picUrl,province:province,city:city,area:area,address:address,fromPhone:fromPhone,fromWeixin:fromWeixin},function(txt){tb_remove(),$("#net_re").html(txt);R(txt)});
}

function recruit_add_save_re(a1) {
   $("#apply_add_on2").css("display","none");
   $("#apply_add_on1").css("display","block");
}
/*������ļ����*/


/*Ӧ�б�����ʼ*/
function recruit_Join_save() {
	var username=$("#username").val();
	var phone=$("#phone").val();
	var weixin=$("#weixin").val();
	var beizhu=$("#beizhu").val();	
	var aid=$("#aid").val();
	var picUrl1=$("#picUrl1").val();
	var picUrl2=$("#picUrl2").val();
	var picUrl3=$("#picUrl3").val();
	var netid=$("#netid").val();

	if (aid=="" || isNaN(aid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (netid=="" && isNaN(netid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (username == "" || username.length > 4 || username.length < 2) {
       R("����ȷ������ʵ����");
       return (false);
    }
	
	if (isChn(username)==false) return (false);
	
	if (phone == "" || phone.length != 11 || isNaN(phone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(phone)==false) return (false);
	
	if (weixin == "" || weixin.length > 30) {
       R("����ȷ����΢���ʺ�");
       return (false);
    }
	
	if (beizhu != "" && (beizhu==" " || beizhu=="��")) {
       R("����ȷ���뱸ע");
       return (false);
    }
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("recruit_Join_save.do", {username:username,phone:phone,weixin:weixin,beizhu:beizhu,aid:aid,picUrl1:picUrl1,picUrl2:picUrl2,picUrl3:picUrl3,netid:netid},function(txt){tb_remove(),$("#net_re").html(txt);});
}



function recruit_Join_save_re(a1) {
   if (a1=="no"){
	  $("#apply_add_on2").css("display","none");
	  $("#apply_add_on1").css("display","block");
   }
   
   if (a1=="yes"){
      
   }
}
/*ӦƸ��������*/


/*�������¿�ʼ*/
function matchPic_ping_con(aid,tid,pid,netid,psite) {
	
	var pingCss=$("#div_ping_con").css("display");
    
	if (pingCss=="none") {
	
	   if (aid=="" || isNaN(aid) || tid=="" || isNaN(tid) || (netid!="" && isNaN(netid)) || (psite=="mp" && (pid=="" || isNaN(pid))) ) {
          R("�����쳣��");
          return (false);
       }
	   
	   window.scrollTo(0,408);
	
	   $("#div_ping_con").css("display","block");
	   $("#div_ping_con").html("<div class='ping_load'></div>");

       $.post("article_ping_con.do", {aid:aid,tid:tid,netid:netid,psite:psite,pid:pid},function(txt){tb_remove(),$("#div_ping_con").html(txt);});
	
	}else{
		
	   $("#div_ping_con").css("display","none");
	   $("#div_ping_con").html("");
	   
    }
}


function article_add_save() {
	var title=$("#title").val();
	var timeTxt=$("#timeTxt").val();
	var priceTxt=$("#priceTxt").val();
	var info=$("#info").val();
	var fromUser=$("#fromUser").val();
	var fromPhone=$("#fromPhone").val();
	var fromWeixin=$("#fromWeixin").val();
	var fromPwd=$("#fromPwd").val();
	var psite=$("#psite").val();
	var picUrl=$("#picUrl").val();
	var province=$("#province").val();
	var city=$("#city").val();
	var area=$("#area").val();
	var address=$("#address").val();
	
	if (title == "" || title == " " || title == "��") {
       R("����ȷ������������");
       return (false);
    }
	
	if (title.length > 30) {
       R("������������30���ַ�");
       return (false);
    }
	
	if (info == "" || info == " " || info == "��") {
       R("����ȷ������������");
       return (false);
    }
	
	if (info.length > 150000) {
       R("������������15����ַ�");
       return (false);
    }
	
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPwd== "" || fromPwd == " " || fromPwd == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromPwd.length > 16 || fromPwd.length < 6) {
       R("���볤������6-16λ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPhone == "" || fromPhone.length != 11 || isNaN(fromPhone)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(fromPhone)==false) return (false);
	
	if (fromWeixin == "" || fromWeixin.length > 30) {
       R("����ȷ����΢�Ż�QQ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("article_add_save.do", {title:title,info:info,fromUser:fromUser,fromPwd:fromPwd,picUrl:picUrl,fromPhone:fromPhone,fromWeixin:fromWeixin},function(txt){tb_remove(),$("#net_re").html(txt);});
}


function article_add_save_re(a1) {
   $("#apply_add_on2").css("display","none");
   $("#apply_add_on1").css("display","block");
}


function article_ping() {
   $("#btn_ping_open").css("display","none");
   $("#btn_ping_txt").css("display","block");
}


function article_ping_save(psite) {
   var psname=$("#psname").val();
   var pconter=$("#pconter").val();
   var tid=$("#tid").val();
   var aid=$("#aid").val();
   var pid=$("#pid").val();
   var uid=$("#uid").val();
   var netid=$("#netid").val();
   
   if (aid=="" || isNaN(aid) || tid=="" || isNaN(tid)) {
       R("�����쳣��");
       return (false);
    }
	
	if ((pid=="" || isNaN(pid)) && psite=="mp") {
       R("�����쳣��");
       return (false);
    }
   
   if (netid!="" && isNaN(netid)) {
       R("�����쳣��");
       return (false);
    }
	
   if (pconter== "" || pconter == " " || pconter == "��") {
       R("����ȷ������������");
       return (false);
   }
   
   if (pconter.length < 4) {
       R("��������̫��");
       return (false);
   }
	
   if (pconter.length > 300) {
       R("���۳�������300�ַ�");
       return (false);
   }
	
   $("#ping_on2").css("display","block");
   $("#ping_on1").css("display","none");
	
   $.post("article_ping_save.do", {pconter:pconter,aid:aid,pid:pid,uid:uid,tid:tid,netid:netid,psite:psite},function(txt){tb_remove(),$("#net_re").html(txt);});
}

function article_ping_save_re(a1,a2) {
   var txt1="";	
	
   $("#ping_on1").css("display","block");
   $("#ping_on2").css("display","none");
   
   if (a1=="yes"){
      txt1=$("#btn_ping_new").html();
	  //$("#btn_ping").css("display","block");
	  $("#btn_ping_new").html(a2+txt1);
	  $("#pconter").val("");
	  $("#btn_ping_nocon").css("display","none");
	  R("���ͳɹ���");
   }
}

function article_ping_page(){
   var tid=$("#tid").val();
   var aid=$("#aid").val();
   var page=$("#page").val();
	
   var pid=$("#pid").val();
   var uid=$("#uid").val();
   var psite=$("#psite").val();
   var netid=$("#netid").val();	
	
   if (aid=="" || isNaN(aid) || tid=="" || isNaN(tid) || (netid!="" && isNaN(netid)) || (psite=="mp" && (pid=="" || isNaN(pid))) ) {
       R("�����쳣��");
       return (false);
   }
	
   var nextpage=page*1+1;
   var d1="ping_page_"+page;
	
   $(".btn_ping3_1").css("display","none");
   $(".btn_ping_load").css("display","block");
	
   $.post("article_ping_page.do", {page:nextpage,tid:tid,aid:aid,pid:pid,uid:uid,psite:psite,netid:netid},function(txt){tb_remove(),$("#"+d1).html(txt);});
}

function apply_ping_reply(a1){
   var tid=$("#tid").val();
   var aid=$("#aid").val();
   var reinfo=$("#reinfo_"+a1).val();
   var d1="ping4_1_"+a1;
   var b1="ping7_1_"+a1;
   var b2="ping7_2_"+a1;
	
   if (aid=="" || isNaN(aid) || tid=="" || isNaN(tid) || a1=="" || isNaN(a1)) {
       R("�����쳣��");
       return (false);
   }
   
   if (reinfo.length > 300) {
       R("�ظ���������300�ַ�");
       return (false);
   }
   
   $("#"+b1).css("display","none");
   $("#"+b2).css("display","block");
   
   $.post("apply_ping_reply.do", {pid:a1,tid:tid,aid:aid,reinfo:reinfo},function(txt){tb_remove(),$("#"+d1).html(txt);});
}
/*�������½���*/


/*����������ʼ*/
function haibao_add_save() {
	var title=$("#title").val();
	var info=$("#info").val();
	var info=info.replace(/\n/g, "<br />");
	var picUrl1=$("#picUrl1").val();
	var picUrl2=$("#picUrl2").val();
	var picUrl3=$("#picUrl3").val();
	var picUrl4=$("#picUrl4").val();
	var picUrl5=$("#picUrl5").val();
	var picUrl6=$("#picUrl6").val();
	var picUrl7=$("#picUrl7").val();
	var picUrl8=$("#picUrl8").val();
	var picUrl9=$("#picUrl9").val();
	var netUrl=$("#netUrl").val();
	var musicUrl=$("#musicUrl").val();
	var fromUser=$("#fromUser").val();
	var fromPwd=$("#fromPwd").val();
	var tid=$("#tid").val();
	
	if (title == "" || title == " " || title == "��") {
       R("����ȷ���뺣������");
       return (false);
    }
	
	if (title.length > 30) {
       R("������������30���ַ�");
       return (false);
    }
	
	if (info.length > 120) {
       R("���ݼ������120���ַ�");
       return (false);
    }
	
	if (picUrl1 == "" || picUrl2 == "" || picUrl3 == "") {
       R("�������ϴ�����ͼƬ");
       return (false);
    }
	
	if (netUrl.length > 200) {
       R("������ַ����200���ַ�");
       return (false);
    }
	
	if (musicUrl != "" && isNaN(musicUrl)) {
       R("�����쳣");
       return (false);
    }
		
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPwd== "" || fromPwd == " " || fromPwd == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromPwd.length > 16 || fromPwd.length < 6) {
       R("���볤������6-16λ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("lib/haibao_add_save.asp", {title:title,info:info,picUrl1:picUrl1,picUrl2:picUrl2,picUrl3:picUrl3,picUrl4:picUrl4,picUrl5:picUrl5,picUrl6:picUrl6,picUrl7:picUrl7,picUrl8:picUrl8,picUrl9:picUrl9,netUrl:netUrl,fromUser:fromUser,fromPwd:fromPwd,tid:tid,musicUrl:musicUrl},function(txt){tb_remove(),$("#net_re").html(txt);R(txt)});
}

function haibao_add_save_re(a1) {
   $("#apply_add_on2").css("display","none");
   $("#apply_add_on1").css("display","block");
}

function haibao_music_open(){
   $("#apply_add6").css("display","block");
   $("#apply_add5").css("display","none");
}

function haibaoSelMusic(a1) {
   if (a1 == "" || isNaN(a1)) {
      R("�����쳣");
      return (false);
   }
   
   $(".apply_add6_1").removeClass("apply_add6_2");
   $("#music"+a1).addClass("apply_add6_2");
   
   if (a1=="0") {
	  $("#musicUrl").val("");
   }else{
	  $("#musicUrl").val(a1);
   }
   
   $("#video1").html("<source src='music/"+a1+".mp3' type='audio/mpeg'>");
   mp3Play("stop");
   mp3Play("play");
}
/*������������*/


/*�û���¼��ʼ*/
function user_login() {
	var username=$("#username").val();
	var sfz=$("#sfz").val();
	var prid=$("#prid").val();
	
	if (prid=="" || isNaN(prid)) {
       R("�����쳣��");
       return (false);
    }
	
	if (username == "" || username.length > 4 || username.length < 2) {
       R("����ȷ������ʵ����");
       return (false);
    }
	
	if (isChn(username)==false) return (false);
	
	
	if (sfz == "" || sfz.length != 11 || isNaN(sfz)) {
       R("����ȷ�����ֻ�");
       return (false);
    }
	
	if (checkPhone(sfz)==false) return (false);
	
	//$("#BtnOn1").css("display","none");
	//$("#BtnOn2").css("display","inline");
	
	//$.post("go.do", {username:username,sfz:sfz,prid:prid},function(txt){tb_remove(),$("#net_re").html(txt);});
	document.form.submit();   
    return true;	
}


function user_login_re(a1) {
   if (a1=="no"){
	  $("#BtnOn1").css("display","inline");
	  $("#BtnOn2").css("display","none");
   }
}
/*�û���¼����*/


//����ʼ
function shareWeb(a1) {
if (a1=="weixin"){
   $(".WeiXinShareShow").css("display","block");
}

if (a1=="weixinShare"){
   $(".WeiXinShareShow2").css("display","block");
}
}


function shareWebClose() {
   $(".WeiXinShareShow").css("display","none");
   $(".WeiXinShareShow2").css("display","none");
}


function shareSu(a1,a2,a3) {
  if (a1=="" || isNaN(a1) || a1=="" || isNaN(a1)) {
       return (false);
  }
  
  $.post("sharesu_save.do", {aid:a1,pid:a2,fsite:a3},function(txt){tb_remove(),$("#net_re").html(txt);});
}
//�������


/*����Զ���ȿ�ʼ*/
function PicListAutoWidth() {
  var w = document.body.clientWidth || window.innerWidth || document.documentElement.offsetWidth;
  var w2 = window.innerWidth;
  //R(w+"-"+w2);
  w = (w - (10*2 + 2 + 7))/2;
  w2 = w - 10;
  $(".photoTxt").css("width",w+"px");
  $(".picCon").css("width",w2+"px");
  
  window.onresize = function() {
				PicListAutoWidth();
			};
}


function PicAutoSet() {
  $("#pageCon").masonry({  
         singleMode: true,  
         itemSelector:".picCon",
		 
         });
}
/*����Զ���Ƚ���*/


/*���MV��ʼ*/
function matchMvOpen(a1,a2) {
  if (a1 != "" && a2=="youku"){
	 mvCon="<iframe height=100% width=100% src='http://player.youku.com/embed/"+a1+"' frameborder=0 allowfullscreen></iframe>"
     $("#matchMv").css("display","block");
	 $("#matchMvClose").animate({marginRight:"0px"});
	 $("#matchMvCon").html(mvCon);
  }
}

function matchMvClose() {
  $("#matchMvCon").html("");
  $("#matchMv").css("display","none");
  $("#matchMvClose").css("margin-right","-50px");
}
/*���MV����*/


/*�Զ���ȿ�ʼ*/
function autoWidth(a1,a2) {
  var w = document.body.clientWidth || window.innerWidth || document.documentElement.offsetWidth;

  if (a1 != "" && !isNaN(a1)){
      w = w - a1*1;
      $("."+a2).css("width",w+"px");
  }
  
  window.onresize = function() {
				autoWidth(a1,a2);
			};
}
/*�Զ���ȿ�ʼ*/


/*ͶƱ��ʼ*/
function match_tp(a1,a2){
  var b1="tpsu_"+a1;
  var b2="div_tpsu_"+a1;	
	
  if (a1=="" || isNaN(a1) || a1=="" || isNaN(a1)) {
       R("�����쳣��");
       return (false);
  }
  
  url="match_tp_ajax.do";
  
  $("#"+b1).html("+1");
  $("#"+b2).attr("onclick","");
	  
  $.post(url, {aid:a1,tpsu:a2}, function(txt){tb_remove(),$("#"+b1).html(txt);});
}

function match_tp_end(){
  R("���ڱ����Ѿ�������<br>��л���֧�֣�");
}


function match_tp_kuang(a1,a2){
	
	if (a1=="" || isNaN(a1) || a2=="" || isNaN(a2)) {
       R("�����쳣��");
       return (false);
    }
	
	var display=$('.apply_box2').css('display');
	if(display=='none'){
		showBg();
		$('.apply_box2').css('display','block');
		$.post("match_k_txt.do",{pid:a1,tpsu:a2}, function(txt){tb_remove(),$("#apply_box").html(txt);});
	}else{
		hideBg();
		$('.apply_box2').css('display','none');	
	}
}

function match_tp_check(a1,a2){
  var b1="tpsu_"+a1;
  var b2="div_tpsu_"+a1;
  
  if (a1=="" || isNaN(a1) || a2=="" || isNaN(a2)) {
       R("�����쳣��");
       return (false);
  }
  
  $("#"+b1).html("+1");
  
  url="lib/match_tp.asp";
	  
  $.post(url, {aid:a1,tpsu:a2}, function(txt){tb_remove(),$("#"+b1).html(txt);});
}

function match_tp_check_re(){
   hideBg();
   $(".apply_box2").css("display","none");
   $("#apply_box").html("<div class='apply_box3_0'></div>");
}


function match_tp_check2(a1,a2){
  var b1="tpsu_"+a1;
  var b2="div_tpsu_"+a1;
  var matchCheckSu=$("#matchCheckSu").val();
  
  if (matchCheckSu=="" || isNaN(matchCheckSu) || matchCheckSu.length!=4) {
       R("��������֤�룡");
       return (false);
  }
	
  if (a1=="" || isNaN(a1) || a1=="" || isNaN(a1)) {
       R("�����쳣��");
       return (false);
  }

  hideBg();
  $('.apply_box2').css('display','none');	
  $("#tpcheckimg").html("");
  $("#matchCheckSu").val("");
  
  $("#"+b1).html("+1");
  
  url="match_tp_ajax.do";
	  
  $.post(url, {aid:a1,tpsu:a2,matchCheckSu:matchCheckSu}, function(txt){tb_remove(),$("#"+b1).html(txt);});
}


function match_user_search(){
  var aid=$("#aid").val();
  var search_text=$("#search_text").val();
	
  if (aid=="" || isNaN(aid)) {
       R("�����쳣��");
       return (false);
  }
  
  if (search_text=="" || search_text.length<2 || search_text.length>15) {
       R("��������������ˣ�");
       return (false);
  }
  
  $("#match_search_con").html("<div class='match_search_con_loading'></div>");
  
  url="match_user_search.asp";
	  
  $.post(url, {aid:aid,search_text:search_text}, function(txt){tb_remove(),$("#match_search_con").html(txt);});
}

/*ͶƱ����*/


/*����������ʼ*/
function haibao_save() {
	var title=$("#title").val();
	var timeTxt=$("#timeTxt").val();
	var priceTxt=$("#priceTxt").val();
	var info=$("#info").val();
	var fromUser=$("#fromUser").val();
	var fromPwd=$("#fromPwd").val();
	var picUrl=$("#picUrl").val();
	var host=$("#host").val();
	
	if (title == "" || title == " " || title == "��") {
       R("����ȷ�����������");
       return (false);
    }
	
	if (title.length > 30) {
       R("������������30���ַ�");
       return (false);
    }
	
	if (timeTxt != "" && (timeTxt == " " || timeTxt == "��")) {
       R("����ȷ�������ʱ��");
       return (false);
    }
	
	if (priceTxt != "" && (priceTxt == " " || priceTxt == "��")) {
       R("����ȷ�����������");
       return (false);
    }
	
	if (host != "" && (host == " " || host == "��")) {
       R("����ȷ����������췽");
       return (false);
    }
	
	if (host.length > 50) {
       R("����ȷ����������췽");
       return (false);
    }
	
	if (info == "" || info == " " || info == "��") {
       R("����ȷ���������ϸ");
       return (false);
    }
	
	if (info.length > 100000) {
       R("������ϸ����10����ַ�");
       return (false);
    }
	
	if ( fromUser== "" || fromUser == " " || fromUser == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromUser.length > 15 || fromUser.length < 2) {
       R("������������2-15λ");
       return (false);
    }
	
	if (fromPwd== "" || fromPwd == " " || fromPwd == "��") {
       R("����ȷ��������");
       return (false);
    }
	
	if (fromPwd.length > 16 || fromPwd.length < 6) {
       R("���볤������6-16λ");
       return (false);
    }
	
	if (checkUser2(fromPwd)==false) return (false);
	
	$("#apply_add_on2").css("display","block");
	$("#apply_add_on1").css("display","none");
	
	$.post("match_add_save.do", {title:title,timeTxt:timeTxt,priceTxt:priceTxt,info:info,fromUser:fromUser,fromPwd:fromPwd,picUrl:picUrl,host:host},function(txt){tb_remove(),$("#net_re").html(txt);});
}



function haibao_add_save_re(a1) {
	  $("#apply_add_on2").css("display","none");
	  $("#apply_add_on1").css("display","block");
}


function haibao_pic_add(a1) {
	  $("#apply_add_hb"+a1).css("display","none");
	  $("#apply_add_piclist"+a1).css("display","block");	
}
/*������������*/


/*�����ֵ��ʼ*/
function QRonInput(a1){
   var v1=$("#"+a1).val();
   var v2,inpTxt;
   
   if (a1 != ""){
	  if (a1=="search_text"){
	     inpTxt="���롰��ؼ��֡��򡰷�����������";
		 if (v1==inpTxt) $("#"+a1).val("");
	  }
	  
	  $("#"+a1).blur(function() {
		   v2=$("#"+a1).val();
           if (v2=="") $("#"+a1).val(inpTxt);
      })
   }
}
/*�����ֵ����*/

/*�ı�������ɫ��ʼ*/
function selFontColor(){
   $(".apply_add4").addClass("apply_add4_2");
}
/*�ı�������ɫ����*/

/*����MP3��ʼ*/
function mp3Play(a1) {
if (a1!="play" && a1!="stop") return false;

if (a1=="stop") {
	document.getElementById('video1').load();
	}

if (a1=="play") {
	document.getElementById('video1').play();
	}
}
/*����MP3����*/

/*΢����Ȩ��ʼ*/
function weixinapi(fromurl) {
  var neturl="";
  if (fromurl=="" || fromurl.length<10) fromurl=window.location.href;
  top.location.href=neturl+"/apply/wxapi/?fromurl="+fromurl;
}
/*΢����Ȩ����*/

/*��Ϸ���а�ʼ*/
function gameph_list_con(){
	var gid=$("#gid").val();
	
	if (gid=="" || isNaN(gid)) {
       alert("�����쳣��");
       return (false);
    }
	
	var d1="gamephLi";
	
	$("#gameph").css("display","block");
	$("#gameph").animate({marginLeft:"0%"});
	
	$.post("../gameph_list_con.do", {gid:gid},function(txt){tb_remove(),$("#"+d1).html(txt);});
}

function gameph_list_close(){
    $("#gameph").animate({marginLeft:"100%"},function(){
                     $(this).css("display","none");
				 });
}

function gameph_list_page(){
	var gid=$("#gid").val();
	var page=$("#page").val();
	var d1="gameph_more_"+page;
	
	if (gid=="" || isNaN(gid) || page=="" || isNaN(page)) {
       alert("�����쳣��");
       return (false);
    }
	
	var nextpage=page*1+1;
	var b1="gameph_load1_"+page;
	var b2="gameph_load2_"+page;
	
	$("#"+b2).css("display","block");
	$("#"+b1).css("display","none");
	
	$.post("gameph_list_page.do", {page:nextpage,gid:gid},function(txt){tb_remove(),$("#"+d1).html(txt);});
}
/*��Ϸ���а����*/


/*��Ϸ���а�ʼ*/
function userRegTo(){
    top.location.href=''+window.location.href;
}
/*��Ϸ���а����*/


/*�������õ�����js����ʽѹ�����������*/
(function($){$.fn.artZoom=function(){var loading='position:absolute;left:6px;top:6px;width:16px;height:16px;background:url(js/images/loading.gif) no-repeat',max='url(js/images/zoomin.cur), pointer',min='url(js/images/zoomout.cur), pointer';$(this).live('mouseover',function(){this.style.cursor=max});$(this).live('click',function(){var maxImg=$(this).attr('href');if($(this).find('.loading').length==0)$(this).append('<span class="loading" style="'+loading+'" title="Loading.."></span>');imgTool($(this),maxImg);return false});var loadImg=function(url,fn){var img=new Image();img.src=url;if(img.complete){fn.call(img)}else{img.onload=function(){fn.call(img)}}};var imgTool=function(on,maxImg){var width=0,height=0,tool=function(){on.find('.loading').remove();on.hide();if(on.next('.artZoomBox').length!=0){return on.next('.artZoomBox').show()};var maxWidth=on.parent().innerWidth()-12;if(width>maxWidth){height=maxWidth/width*height;width=maxWidth};var html='<div class="artZoomBox"><a href="'+maxImg+'" class="maxImgLink" style="cursor:'+min+'"> <img class="maxImg" width="'+width+'" height="'+height+'" src="'+maxImg+'" /></a></div>';on.after(html);var box=on.next('.artZoomBox');box.find('.maxImgLink').bind('click',function(){box.hide();box.prev().show();return false})};loadImg(maxImg,function(){width=this.width;height=this.height;tool()})}};$('a.artZoom').artZoom()})(jQuery);
/* Thickbox 3.1*/
var tb_pathToImage="/js/images/loadingAnimation.gif";$(document).ready(function(){tb_init('a.thickbox')});function tb_init(domChunk){$(domChunk).click(function(){var t=this.title||this.name||null;var a=this.href||this.alt;if (window.parent.frames[window.name] && (top.document.getElementsByTagName('frameset').length <= 0)) { self.top.tb_show(t,a); }else{ tb_show(t,a); }this.blur();return false})}function tb_show(caption,url){try{if(typeof document.body.style.maxHeight==="undefined"){$("body","html").css({height:"100%",width:"100%"});$("html").css("overflow","hidden");if(document.getElementById("TB_HideSelect")===null){$("body").append("<iframe id='TB_HideSelect'></iframe><div id='TB_overlay'></div><div id='TB_window'></div>");$("#TB_overlay").click(tb_remove)}}else{if(document.getElementById("TB_overlay")===null){$("body").append("<div id='TB_overlay'></div><div id='TB_window'></div>");$("#TB_overlay").click(tb_remove)}}if(tb_detectMacXFF()){$("#TB_overlay").addClass("TB_overlayMacFFBGHack")}else{$("#TB_overlay").addClass("TB_overlayBG")}if(caption===null){caption=""}$("body").append("<div id='TB_load'><img src='"+tb_pathToImage+"' /></div>");$('#TB_load').show();var baseURL;if(url.indexOf("?")!==-1){baseURL=url.substr(0,url.indexOf("?"))}else{baseURL=url}var queryString=url.replace(/^[^\?]+\??/,'');var params=tb_parseQuery(queryString);TB_WIDTH=(params['width']*1)+30||580;TB_HEIGHT=(params['height']*1)+40||300;ajaxContentW=TB_WIDTH-30;ajaxContentH=TB_HEIGHT-45;if(url.indexOf('TB_iframe')!=-1){urlNoQuery=url.split('TB_');$("#TB_iframeContent").remove();if(params['modal']!="true"){$("#TB_window").append("<div id='TB_title'><div id='TB_ajaxWindowTitle'>"+caption+"</div><div id='TB_closeAjaxWindow'><a href='#' id='TB_closeWindowButton' title='�ر�'><img src='/js/images/divclose.gif'></a></div></div><iframe frameborder='0' hspace='0' src='"+urlNoQuery[0]+"' id='TB_iframeContent' name='TB_iframeContent"+Math.round(Math.random()*1000)+"' onload='tb_showIframe()' style='width:"+(ajaxContentW+29)+"px;height:"+(ajaxContentH+17)+"px;' > </iframe>")}else{$("#TB_overlay").unbind();$("#TB_window").append("<iframe frameborder='0' hspace='0' src='"+urlNoQuery[0]+"' id='TB_iframeContent' name='TB_iframeContent"+Math.round(Math.random()*1000)+"' onload='tb_showIframe()' style='width:"+(ajaxContentW+29)+"px;height:"+(ajaxContentH+17)+"px;'> </iframe>")}}else{if($("#TB_window").css("display")!="block"){if(params['modal']!="true"){$("#TB_window").append("<div id='TB_title'><div id='TB_ajaxWindowTitle'>"+caption+"</div><div id='TB_closeAjaxWindow'><a href='#' id='TB_closeWindowButton'><img src='/js/images/divclose.gif'></a></div></div><div id='TB_ajaxContent' style='width:"+ajaxContentW+"px;height:"+ajaxContentH+"px'></div>")}else{$("#TB_overlay").unbind();$("#TB_window").append("<div id='TB_ajaxContent' class='TB_modal' style='width:"+ajaxContentW+"px;height:"+ajaxContentH+"px;'></div>")}}else{$("#TB_ajaxContent")[0].style.width=ajaxContentW+"px";$("#TB_ajaxContent")[0].style.height=ajaxContentH+"px";$("#TB_ajaxContent")[0].scrollTop=0;$("#TB_ajaxWindowTitle").html(caption)}}$("#TB_closeWindowButton").click(tb_remove);if(url.indexOf('TB_inline')!=-1){$("#TB_ajaxContent").append($('#'+params['inlineId']).children());$("#TB_window").unload(function(){$('#'+params['inlineId']).append($("#TB_ajaxContent").children())});tb_position();$("#TB_load").remove();$("#TB_window").css({display:"block"})}else if(url.indexOf('TB_iframe')!=-1){tb_position();if($.browser.safari){$("#TB_load").remove();$("#TB_window").css({display:"block"})}}else{$("#TB_ajaxContent").load(url+="&random="+(new Date().getTime()),function(){tb_position();$("#TB_load").remove();tb_init("#TB_ajaxContent a.thickbox");$("#TB_window").css({display:"block"})})}if(!params['modal']){document.onkeyup=function(e){if(e==null){keycode=event.keyCode}else{keycode=e.which}if(keycode==27){tb_remove()}}}}catch(e){}}function tb_showIframe(){$("#TB_load").remove();$("#TB_window").css({display:"block"})}function tb_remove(){$("#TB_imageOff").unbind("click");$("#TB_closeWindowButton").unbind("click");$("#TB_window").fadeOut("fast",function(){$('#TB_window,#TB_overlay,#TB_HideSelect').trigger("unload").unbind().remove()});$("#TB_load").remove();if(typeof document.body.style.maxHeight=="undefined"){$("body","html").css({height:"auto",width:"auto"});$("html").css("overflow","")}document.onkeydown="";document.onkeyup="";return false}function tb_position(){$("#TB_window").css({marginLeft:'-'+parseInt((TB_WIDTH/2),10)+'px',width:TB_WIDTH+'px'});if(!(jQuery.browser.msie&&jQuery.browser.version<7)){$("#TB_window").css({marginTop:'-'+parseInt((TB_HEIGHT/2),10)+'px'})}}function tb_parseQuery(query){var Params={};if(!query){return Params}var Pairs=query.split(/[;&]/);for(var i=0;i<Pairs.length;i++){var KeyVal=Pairs[i].split('=');if(!KeyVal||KeyVal.length!=2){continue}var key=unescape(KeyVal[0]);var val=unescape(KeyVal[1]);val=val.replace(/\+/g,' ');Params[key]=val}return Params}function tb_getPageSize(){var de=document.documentElement;var w=window.innerWidth||self.innerWidth||(de&&de.clientWidth)||document.body.clientWidth;var h=window.innerHeight||self.innerHeight||(de&&de.clientHeight)||document.body.clientHeight;arrayPageSize=[w,h];return arrayPageSize}function tb_detectMacXFF(){var userAgent=navigator.userAgent.toLowerCase();if(userAgent.indexOf('mac')!=-1&&userAgent.indexOf('firefox')!=-1){return true}}