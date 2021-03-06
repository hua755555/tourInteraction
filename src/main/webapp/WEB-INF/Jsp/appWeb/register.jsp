<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<!-- saved from url=(0033)https://account.metinfo.cn/login/ -->
<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css" id="alertifyCSS">
        /* style.css */

    </style>
    <title>注册 - Tour 用户中心</title>
    <meta name="renderer" content="webkit">

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <link rel="stylesheet" href="<%=contextPath %>/resource/css/appWeb/loginAndReg.css">
    <link rel="stylesheet" type="text/css" href="<%=contextPath%>/resource/css/toastr/toastr.scss">
    <style>
        html,
        * {
            -webkit-user-select: text!important;
            -moz-user-select: text!important;
        }

    </style>
</head>

<body class="page-login-v3 layout-full">

    <div class="page animsition vertical-align text-center" data-animsition-in="fade-in" data-animsition-out="fade-out">&gt;
        <div class="page-content vertical-align-middle">
            <div class="panel">
                <div class="panel-body">

                    <div class="brand">
                        <img class="brand-img" src="<%=contextPath %>/resource/images/appWeb/logo.png" alt="Tour 用户中心" width="50">
                        <h2 class="brand-text font-size-20 margin-top-20">用户注册</h2>
                    </div>

                    <form method="post" id="register_from" class="met-form-validation fv-form fv-form-bootstrap" action="<%=contextPath%>/signTour/appRegister.do" novalidate="novalidate"><button type="submit" class="fv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>
                        <div class="form-group form-material floating">
                            <input type="text" class="form-control empty" id="name" name="name" data-fv-notempty="true" data-fv-message="请输入用户名或邮箱或手机号码" data-fv-field="name">
                            <label class="floating-label" id="label_name">用户名/邮箱/手机</label>
                            <small class="help-block" data-fv-validator="notEmpty" data-fv-for="name" data-fv-result="NOT_VALIDATED" style="display: none;">请输入用户名或邮箱或手机号码</small></div>
                        <div class="form-group form-material floating">
                            <input type="password" class="form-control empty" id="password" name="password" data-fv-notempty="true" data-fv-message="请输入密码" data-fv-field="password">
                            <label class="floating-label" id="label_passwd">密码</label>
                            <small class="help-block" data-fv-validator="notEmpty" data-fv-for="password" data-fv-result="NOT_VALIDATED" style="display: none;">请输入密码</small></div>
                        <div class="form-group form-material floating">
                            <input type="password" class="form-control empty" id="comfirm_password" name="comfirm_password" data-fv-notempty="true" data-fv-message="请输入密码" data-fv-field="comfirm_password">
                            <label class="floating-label" id="label_passwd_sure">确认密码</label>
                            <small class="help-block" data-fv-validator="notEmpty" data-fv-for="comfirm_password" data-fv-result="NOT_VALIDATED" style="display: none;">请再次输入密码</small></div>
                        <button type="submit" class="btn btn-primary btn-block btn-lg margin-top-40">注册</button>
                    </form>
                    <ol class="breadcrumb margin-bottom-0 padding-0">
                        <li>已有账号? 去 <a href="<%=contextPath %>/page/appWebLogin">登录</a></li>
                    </ol>
                </div>
            </div>       

        </div>
    </div>


    <!---->
    <div>
        <div class="sweet-overlay" tabindex="-1"></div>
        <div class="sweet-alert" tabindex="-1">
            <div class="icon error"><span class="x-mark"><span class="line left"></span><span class="line right"></span></span>
            </div>
            <div class="icon warning"> <span class="body"></span> <span class="dot"></span> </div>
            <div class="icon info"></div>
            <div class="icon success"> <span class="line tip"></span> <span class="line long"></span>
                <div class="placeholder"></div>
                <div class="fix"></div>
            </div>
            <div class="icon custom"></div>
            <h2>Title</h2>
            <p class="lead text-muted">Text</p>
            <p><button class="cancel btn btn-lg" tabindex="2">Cancel</button> <button class="confirm btn btn-lg" tabindex="1">OK</button></p>
        </div>
    </div>
</body>
<script src="<%=contextPath%>/resource/js/jquery.js"></script>
<script src="<%=contextPath%>/resource/js/jquery.validate.js"></script>
<script type="text/javascript"
	src="<%=contextPath%>/resource/js/toastr/toastr.js"></script>
<script type="text/javascript">
	toastr.options = {
		"closeButton" : false, //是否显示关闭按钮
		"progressBar": true,
		"positionClass" : "toast-top-center", //弹出窗的位置
		"showDuration" : "300", //显示的动画时间
		"hideDuration" : "1000", //消失的动画时间
		"timeOut" : "3000", //展现时间

	}; 
	
	if("${msg}" != null && "${msg}"!=""){
		toastr.warning("${msg}");
	}
    $("#name").focusout(function() {
        if ($("#name").val() != "") {
            $("#label_name").css("top", "-20px");
        } else {
            $("#label_name").css("top", "");

        }
    });

    $("#password").focusout(function() {
        if ($("#password").val() != "") {
            $("#label_passwd").css("top", "-20px");

        } else {
            $("#label_passwd").css("top", "");

        }
    });
    
        $("#comfirm_password").focusout(function() {
        if ($("#comfirm_password").val() != "") {
            $("#label_passwd_sure").css("top", "-20px");

        } else {
            $("#label_passwd_sure").css("top", "");

        }
    });

</script>
<script type="text/javascript">
//定义验证
	$.validator.addMethod("nameLength",function(value,element,param){
		var len = value.length;
		if(len > 16 || len < 6){
			return false;
		}else{
			return true;
		}
	});
	$.validator.addMethod("passwordValidate",function(value,element,param){
		var len = value.length;
		if(len>16 || len<6){
			return false;
		}else{
			return true;
		}
	})
	$.validator.addMethod("confirmPasswordValidate",function(value,element,param){
		var len = value.length;
		if(len > 16 || len < 6 || $("#password").val() != $("#comfirm_password").val() ){
			return false;
		}else{
			return true;
		}
	})
	
	$("#register_from").validate({
		/* debug:true, *//*开启后验证是否成功都不会提交表单，未设置时，验证成功才提交  */
		rules:{
			name:{
				required:true,
				nameLength:true
			},
			password:{
				required:true,
				passwordValidate:true
			},
			comfirm_password:{
				required:true,
				confirmPasswordValidate:true
			}
		},
		messages:{
			name:"请输入6-16位账户名",
			password:"请输入6-16位密码",
			comfirm_password:"两次密码输入不一致"
		}
	});
</script>
</html>
