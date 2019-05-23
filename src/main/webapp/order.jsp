<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html dir="ltr" lang="en-US">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>订单页面</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets1/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets1/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets1/css/form-elements.css">
        <link rel="stylesheet" href="assets1/css/style.css">

            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <link rel="shortcut icon" href="assets1/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets1/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets1/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets1/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets1/ico/apple-touch-icon-57-precomposed.png">

    </head>

    <body>
        <!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-5 form-box" style="margin-left: 300px">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>您的信息:</h3>
                            		<p>Fill in the form below before having a room</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-pencil"></i>
                        		</div>
                            </div>
                            <div class="form-bottom" style="width: 100%;">
			                    <s:form role="form" namespace="/" action="order_addOrder" method="post" class="registration-form">

                                    <s:hidden name="room.rid" value="%{room.rid}"></s:hidden>
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-first-name">真实姓名:</label>

                                        <s:textfield name="user.real_name" placeholder="真实姓名..." class="form-first-name form-control" id="form-first-name"></s:textfield>

			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-last-name">身份证号:</label>

                                        <s:textfield name="user.idCard" placeholder="身份证号..." class="form-last-name form-control" id="form-last-name"></s:textfield>
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">联系电话：</label>
                                        <s:textfield name="user.telephone" placeholder="联系电话..." class="form-email form-control" id="form-email"></s:textfield>
			                        </div>

			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">入住日期：</label><s:date name="%{#session.beginDate}" var="bd" format="yyyy-MM-dd"></s:date>
			                        	<input type="date" name="beginDate" class="form-email form-control" readonly="readonly" value="<s:property value="#bd"/>">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-email">退房日期：</label><s:date name="%{#session.endDate}" var="ed" format="yyyy-MM-dd"></s:date>
			                        	<input type="date" name="endDate" placeholder="退房日期..." class="form-email form-control" readonly="readonly" value="<s:property value="#ed"/>">
			                        </div>
                                    <s:submit value="提交" cssClass="btn"></s:submit>
			                    </s:form>
		                    </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>


        <!-- Javascript -->
        <script src="assets1/js/jquery-1.11.1.min.js"></script>
        <script src="assets1/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets1/js/jquery.backstretch.min.js"></script>
        <script src="assets1/js/retina-1.1.0.min.js"></script>
        <script src="assets1/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets1/js/placeholder.js"></script>
        <![endif]-->
    </body>

</html>