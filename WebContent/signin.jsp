<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>TPCOP</title>
<link href='./css/bootstrap.min.css' rel='stylesheet'>
<link href='./css/all.css' rel='stylesheet'>
<style>
body {
	background-color: #EBEAEF
}

.container {
	flex-wrap: wrap
}

.card {
	border: none;
	border-radius: 10px;
	background-color: #4270C8;
	width: 350px;
	margin-top: -60px
}

p.mb-1 {
	font-size: 25px;
	color: #9FB7FD
}

.btn-primary {
	border: none;
	background: #5777DE;
	margin-bottom: 60px
}

.btn-primary small {
	color: #9FB7FD
}

.btn-primary span {
	font-size: 13px
}

.card.two {
	border-top-right-radius: 60px;
	border-top-left-radius: 0
}

.form-group {
	position: relative;
	margin-bottom: 2rem
}

.form-control {
	border: none;
	border-radius: 0;
	outline: 0;
	border-bottom: 1.5px solid #E6EBEE
}

.form-control:focus {
	box-shadow: none;
	border-radius: 0;
	border-bottom: 2px solid #8A97A8
}

.form-control-placeholder {
	position: absolute;
	top: 15px;
	left: 10px;
	transition: all 200ms;
	opacity: 0.5;
	font-size: 80%
}

.form-control:focus+.form-control-placeholder, .form-control:valid+.form-control-placeholder
	{
	font-size: 80%;
	transform: translate3d(0, -90%, 0);
	opacity: 1;
	top: 10px;
	color: #8B92AC
}

.btn-block {
	border: none;
	border-radius: 8px;
	background-color: #506CCF;
	padding: 10px 0 12px
}

.btn-block:focus {
	box-shadow: none
}

.btn-block span {
	font-size: 15px;
	color: #D0E6FF
}
</style>
<script type='text/javascript' src='./js/jquery.min.js'></script>
<script type='text/javascript' src='./js/bootstrap.bundle.min.js'></script>
</head>
<body oncontextmenu='return false' class='snippet-body'>
	<div class="container d-flex justify-content-center">
		<div class="d-flex flex-column justify-content-between">
			<div class="card mt-3 p-5">
				<div class="logo mb-3">
					<img src="./images/zydrQCr.jpg">
				</div>
				<div>
					<p class="mb-1">Welcome you to</p>
					<h4 class="mb-5 text-white">TPCOP!</h4>
				</div>
				<button id="goSignUp" class="btn btn-primary btn-lg">
					<small>Not have an account?</small><span>&nbsp;Sign Up</span>
				</button>
			</div>
			<form action="signIn" method="post"
				class="card two bg-white px-5 py-4 mb-3">
				<div class="form-group">
					<input type="email" class="form-control" id="mail" name="email"
						required><label class="form-control-placeholder"
						for="mail">Email</label>
				</div>
				<div class="form-group">
					<input type="password" class="form-control" id="password"
						name="password" required><label
						class="form-control-placeholder" for="password">Password</label>
				</div>
				<input type="submit" value="Login"
					class="btn btn-primary btn-block btn-lg mt-1 mb-2" />
			</form>
		</div>
		<s:if test='%{#session.NOTIFICBODY != null}'>
			<script type="text/javascript">
			 var Msg ='<%=session.getAttribute("NOTIFICBODY")%>';
				console.log(Msg);
				alert(Msg);
				<%
					request.getSession().removeAttribute("NOTIFICBODY");
				%>
			</script>
		</s:if>
	</div>
	<script type='text/javascript'>
		$("#goSignUp").click(function(e) {
			window.location.href = "goSignUp";
		});
	</script>
</body>
</html>