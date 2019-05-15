<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>rooms</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
</head>
<body>
<div class="team" id="team">
    <div class="container">
        <h3>所有房间</h3>
        <div class="row pt-md">
            <s:iterator value="roomList">
                <div class="col-md-3 w3ls_profile">
                    <s:a namespace="/" action="room_findById">
                        <s:param name="rid" value="%{rid}"></s:param>
                        <div class="img-box">
                            <img src="${pageContext.servletContext.contextPath}/${image}" class="img-responsive">
                        </div>
                    </s:a>

                    <h3 class="w3layouts_team">${rnum}</h3>
                    <s:if test="%{sell}">
                        <s:date name="endDate" format="yyyy-MM-dd" var="d"></s:date>
                        <h6 style="color: red;margin-left: 57px">退房日期:<s:property value="d"></s:property></h6>
                    </s:if>
                </div>
            </s:iterator>
    </div>
</div>
</div>
</body>
</html>
