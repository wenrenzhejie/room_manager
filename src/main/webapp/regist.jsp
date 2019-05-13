<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
		<meta charset="utf-8">
		<link href="css/style_regist.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
</head>
 
<body>
	<div class="main">
				 <!-----start-main---->
				 <div class="inset">
				 	<div class="social-icons">
		    			 <div class="span"><a href="#"><img src="images/fb.png" alt=""/><i>QQ 登录 </i><div class="clear"></div></a></div>
    					 <div class="span1"><a href="#"><img src="images/t-bird.png" alt=""/><i>微信登录</i><div class="clear"></div></a></div>
    					 <div class="clear"></div>
					</div>
				 </div>	
				 <h2>注册账号</h2>
				 <form action="${pageContext.servletContext.contextPath}/user_regist">
							<div class="lable-2">
		                     	<input type="text" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" <%--id="active"--%> name="username">
		                    </div>
		                    <div class="clear"> </div>
		                    <div class="lable-2">
		                     <input type="password" class="text" value="Password " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password ';}" name="password">
							<input type="text" class="text" value="your@email.com " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'your@email.com ';}" name="email">
							<input type="text" class="text" value="ValidateCode " onfocus="this.value = '';" id="verifycode"><a href="javascript:_change()"><img src="${pageContext.servletContext.contextPath}/verifycode" name="code" class="img" id="img"></a>
							</div>
							<div class="clear"> </div>
							 <h3>请阅读以下条款并同意 <span><a href="#">协议</a> </span></h3>
								 <div class="submit">
									<input type="submit" value="注册" >
								</div>
									<div class="clear"> </div>
							 </form>
		<!-----//end-main---->
		</div>
		 <!-----start-copyright---->
   					<div class="copy-right">
						<p>More Infors <a href="#" title="阳光酒店">阳光酒店</a></p>
					</div>
				<!-----//end-copyright---->
	 
</body>
</html>

<script type="text/javascript">
	var img = document.getElementById("img");
	function _change(){
		img.src="/room_manager/verifycode?time="+new Date().getTime();
	}
</script>