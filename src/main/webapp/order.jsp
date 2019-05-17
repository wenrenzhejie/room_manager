<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>填写订单</title>
</head>
<body>
    <form action="${pageContext.servletContext.contextPath}/order_addOrder">
        <input type="hidden" value="${room.rid}" name="room.rid">
        身份证号码:<input type="text" name="user.idCard"><br>
        电话号码:<input type="text" name="user.telephone"><br>
        <input type="submit" value="提交">
    </form>
</body>
</html>
