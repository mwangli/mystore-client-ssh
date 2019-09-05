<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>用户注册</title>
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/regist.css">
<link rel="stylesheet" href="css/footer.css">
</head>
<body>
	<!--头部-->
	<div id="reg_head">
		<div class="reg_h_center">
			<div class="reg_h_left">
				<img src="images/login/MyLogo.png" alt="">
				<h3>欢迎注册</h3>
			</div>
			<div class="reg_h_right">
				<a href="login.jsp">请登录</a> <span>已有账号</span>
			</div>
		</div>
	</div>
	<!--表单内容-->
	<div id="reg_center">
		<div class="reg_cen_left">
			<form action="UserAction_register" id="reg_form" method="post">
				<div>
					<label>用户名</label> <input id="username" name="name"
						type="text" placeholder="请输入用户名">
					<span style="color: red">${error}</span>
				</div>
				<div>
					<label>密码</label> <input id="pwd" name="password" type="password"
						placeholder="请输入密码">
				</div>
				<div>
					<label>确认密码</label> <input id="pwd2" type="password"
						placeholder="请确认密码">
				</div>
				<div>
					<label>手机号码</label> <input id="phone" name="phone" type="text"
						placeholder="请输入手机号码">
				</div>
				<div>
					<label>验证码</label> <input id="code" name="code" type="text"
						placeholder="请输入验证码"> <span><img
                        src="images/check_code.png" ></span>
				</div>
				<div>
					<input type="button" class="reg_button" value="立即注册"
						onclick="checkData()">
				</div>
			</form>
		</div>
		<div class="reg_cen_right">
			<a href="#"> <img src="images/reg_right.png" alt="">
			</a>
		</div>
	</div>
	<!--底部-->
	<%@ include file="footer.jsp"%>
	<script>

		//前端验证，用户名非空，密码一致
		function checkData() {
			var username = document.getElementById("username");
			var pwd = document.getElementById("pwd");
			var pwd2 = document.getElementById("pwd2");
			var form = document.getElementById("reg_form");

			if (username.value == "") {
				alert("请输入用户名")
				return;
			}
			if (pwd.value == "") {
				alert("请输入密码")
				return;
			}
			if (pwd2.value == "") {
				alert("请输入确认密码")
				return;
			}
			if (phone.value == "") {
				alert("请输入手机号码")
				return;
			}
			if (code.value == "") {
				alert("请输入验证码")
				return;
			}
			if (pwd.value == pwd2.value) {
				form.submit();
			} else {
				alert("确认密码不一致")
				return;
			}
		}
	</script>
</body>
</html>