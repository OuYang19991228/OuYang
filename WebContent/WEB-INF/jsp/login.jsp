<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>诗阁</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/common.css"allpage">
    	    <style>
    .main-window {margin-top: -290px;}
    .allpage {background: url(<%=basePath%>img/bei.png) top left no-repeat;background-size: 100% 100%; background-attachment : fixed;overflow: hidden;background-attachment: fixed;}
    </style>
    <div class="allpage">
		<div class="main-window">
			<form id="form" method="post" action="" >
				<div class="form-title">
					<span>登录界面</span>
				</div>
				<div class="form-item">
					<span class="form-txt">用户名：</span>
					<input type="text" class="form-input" id="username" name="username" placeholder="请输入用户名" autocomplete="off" autofocus/>
				</div>
				<div class="form-item">
					<span class="form-txt">密码：</span>
					<input type="password" class="form-input" id="password" name="password" placeholder="请输入密码" autocomplete="off"/>
				</div>
				<div class="form-btn">
					<input type="button" class="login-button" id="login" value="登录"/>
					<input type="button" class="login-button" id="set" value="注册" onclick="window.location.href='<%=basePath%>index/register';"/>
				</div>
			</form>
		</div>
	</div>
	</div>
  </body>
</html>
<script>
     
	$(document).ready(function(){
		$("#save").click(function(){
			//获取信息并登录
			var username = $("#username").val();
			var password = $("#password").val();
			var data = {"username":username,"password":password};
			console.log(data);
			//请求URL，传递参数
			request("post","<%=basePath%>/clothes/login",data,successLogin,serverError,false);
			
		  });
	})
	
	
	//successLogin中的参数data是后台API传递过来的result
	function successLogin(data){
		window.location.href=data.nextAction;
		showMessage(data);
	}
	
	function request(method,url,data,successCallBack,errorCallBack,async){
        $.ajax({
            url: url,
            async:async,
            data: data,
            method: method
        }).done(successCallBack).fail(errorCallBack);
    }
	function showMessage(data){
    	console.log("showMessage",data);
    	alert(data.description);
    }
	function serverError(XMLHttpRequest, textStatus){
	    console.log("responseText:",XMLHttpRequest.responseText);
	    console.log("status:",XMLHttpRequest.status);
	    console.log("textStatus:",textStatus);
	    console.log("readyState:",XMLHttpRequest.readyState);
	    alert("服务器故障");
	}
	</script>
</html>