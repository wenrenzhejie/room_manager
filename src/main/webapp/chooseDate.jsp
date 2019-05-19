<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form action="${pageContext.servletContext.contextPath}/room_findByCategoryId">
        <input type="hidden" name="category.cid" value="<s:property value="cid"/>">
        入住日期:<input type="date" name="beginDate1">
        离去日期:<input type="date" name="endDate1">
        <input type="submit" value="提交">
    </form>
</body>
</html>