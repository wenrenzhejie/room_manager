<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择日期</title>
    <style>
        body{
            background-image: url("images/cd.jpg");
            background-size: cover;
        }
        table{
            margin: 200px auto;
        }
    </style>
</head>
<body>
    <form action="${pageContext.servletContext.contextPath}/room_findByCategoryId">
        <input type="hidden" name="category.cid" value="<s:property value="cid"/>">
        <table>
            <tr>
                <td>入住日期:</td>
                <td><input type="date" name="beginDate1"></td>
            </tr>
            <tr>
                <td>离去日期:</td>
                <td><input type="date" name="endDate1"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" value="提交"></td>
            </tr>
        </table>

    </form>
</body>
</html>