<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>用户注册界面</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/common.css">
    <style>
    .main-window {margin-top: -290px;}
    .allpage {background: url(<%=basePath%>img/bei.png) top left no-repeat;background-size: 100% 100%; background-attachment : fixed;overflow: hidden;background-attachment: fixed;}
    .login-button{width:250px;height:30px;margin-left:30px;background:rgb(132,133,135);font-size:12px;}
    .btn{
	color: #fff;
	background-color: #5E6BA2;
	width: 120px;
	margin: 10px 20px;
	line-height: 40px;
	height: 40px;
	border-radius: 6px;
	font-size: 16px;
	border: 0;
	outline: 0;
	text-align: center;
}
    </style>
  </head>
  
  <body>
  <div class="allpage">
		<div class="main-window">
			<form id="form">
				<div class="form-title">
					<span>注册</span>
				</div>
				<div class="form-item">
					<span class="form-txt">用户名称：</span>
					<input type="text" class="form-input" id="username" name="username" placeholder="请输入用户名称" />
				</div>
				<div class="form-item">
					<span class="form-txt">输入密码：</span>
					<input type="password" class="form-input" id="password" name="password" placeholder="请输入密码" autocomplete="off" required="required"/>
				</div>
				<div class="form-item">
					<span class="form-txt">确认密码：</span>
					<input type="password" class="form-input"id="again" placeholder="请确认密码"
				autocomplete="off" required="required"/>
				</div>
				<div class="form-group" id="model"></div>
				<div class="register-btn" style="width: 800px;margin:0">
						<input type="button" id="return" class="back" value="返回" onclick="window.location.href='<%=basePath%>index/login';"/>
						<input type="button" id="reg" class="btn btn-theme btn-info btn-block" value="保存" />
				</div>
			</form>
		</div>
	</div>
  </body>
  <script type="text/javascript">
	//注册时检查输入项
	function allIsNull(){
		var name=document.registForm.uname.value;
		var pwd=document.registForm.upass.value;
		var repwd=document.registForm.reupass.value;
		if(name==""){
			alert("请输入姓名！");
			document.registForm.uname.focus();
			return false;
		}
		if(pwd==""){
			alert("请输入密码！");
			document.registForm.upass.focus();
			return false;
		}
		if(repwd==""){
			alert("请输入确认密码！");
			document.registForm.reupass.focus();
			return false;
		}
		if(pwd!=repwd){
			alert("2次密码不一致，请重新输入！");
			document.registForm.upass.value="";
			document.registForm.reupass.value="";
			document.registForm.upass.focus();
			return false;
		}
		document.registForm.submit();
		return true;
	}
</script>
</html>
