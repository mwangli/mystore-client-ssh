<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>用户登录</title>
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/footer.css">
</head>
<body>
	<!--头部-->
	<div id="header">
		<div class="h_center">
			<img src="images/login/MyLogo.png" alt="">
			<p>为确保您账户的安全及正常使用，依《网络安全法》相关要求，6月1日起会员账户需绑定手机。
				如您还未绑定，请尽快完成，感谢您的理解及支持！</p>
		</div>
	</div>
	<!--中部-->
	<div id="login_body">
		<div class="login_b_center">
			<div class="login_bg">
                密码登录<span style="color: red">${error}</span>
				<form action="UserAction_login" id="login_form" method="post">
					<div class="username">
						<span></span>
						<!---->
						<input type="text" id="username" name="name">
					</div>
					<div class="password">
						<span></span> <input type="password" id="pwd" name="password">
					</div>
					<div class="login_bt">
						<input type="button" value="登录" onclick="checkData()">
					</div>
				</form>
				<div class="forgotPwd">
					<a href="#">忘记密码</a><a href="register.jsp">免费注册</a>
				</div>
			</div>
		</div>
	</div>
	<!--底部-->
	<%@ include file="footer.jsp"%>
	<script>
		//前端验证，用户名，密码非空
		function checkData() {
			var username = document.getElementById("username");
			var pwd = document.getElementById("pwd");
			var form = document.getElementById("login_form");
			if (username.value == "") {
				alert("请输入用户名")
				return;
			}
			if (pwd.value == "") {
				alert("请输入密码")
				return;
			}
			form.submit();
		}
	</script>
</body>
</html>