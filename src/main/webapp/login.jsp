<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html dir="ltr" lang="en-US">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<title>Web 2.0 Login Form by Azmind.com</title>

	<!--- CSS --->
	<link rel="stylesheet" href="style.css" type="text/css" />


	<!--- Javascript libraries (jQuery and Selectivizr) used for the custom checkbox --->

	<!--[if (gte IE 6)&(lte IE 8)]>
		<script type="text/javascript" src="jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="selectivizr.js"></script>
		<noscript><link rel="stylesheet" href="fallback.css" /></noscript>
	<![endif]-->

	</head>

	<body>
		<div id="container">
            <s:fielderror fieldName="login_error" style="color:red;"></s:fielderror>
            <s:form namespace="/" action="user_login">
				<div class="login">LOGIN</div>
				<div class="username-text">Username:</div>
				<div class="password-text">Password:</div>
				<div class="username-field">
                    <s:textfield name="username" value="%{username}"></s:textfield>
				</div>
				<div class="password-field">
                    <s:password name="password" value="%{password}"></s:password>
				</div>
                <input type="checkbox" id="remember-me" /><label for="remember-me">Remember me</label>
				<div class="forgot-usr-pwd">Forgot <a href="#">username</a> or <a href="#">password</a>?</div>
                <s:submit value="GO"></s:submit>
            </s:form>
		</div>
	</body>
</html>
