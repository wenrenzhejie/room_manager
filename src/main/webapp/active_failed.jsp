<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h3><s:fielderror style="color:red;" fieldName="active_msg"></s:fielderror>
        <a href="${pageContext.servletContext.contextPath}/login.jsp" style="position: absolute;left: 50px;top: 50px;">去登陆</a>
</body>
</html>
