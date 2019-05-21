<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>付款</title>
    <style type="text/css">
        * {
            font-size: 11pt;
        }
        div {
            border: solid 2px gray;
            width: 75px;
            height: 75px;
            text-align: center;
        }
        li {
            margin: 10px;
        }

        #pay {
            background: url("images/all.png") no-repeat;
            display: inline-block;
            background-position: 0 -412px;
            margin-left: 30px;
            height: 36px;
            width: 146px;
        }
        #pay:HOVER {
            background: url("images/all.png") no-repeat;
            display: inline-block;
            background-position: 0 -448px;
            margin-left: 30px;
            height: 36px;
            width: 146px;
        }
        #img{
            height: 75px;
            width:73px;
            overflow: hidden;
        }
    </style>
</head>
<body>
<form method="post" action="javascript:alert('别点了，再点就去银行页面了！');" id="form" target="_parent">
    选择银行：<br/>
    <input type="radio" name="pd_FrpId" value="ICBC-NET-B2C" checked="checked"/>工商银行
    <img src="${pageContext.servletContext.contextPath}/bank_img/icbc.bmp" align="middle"/>
    <input type="radio" name="pd_FrpId" value="BOC-NET-B2C"/>中国银行
    <img src="${pageContext.servletContext.contextPath}/bank_img/bc.bmp" align="middle"/><br/><br/>
    <input type="radio" name="pd_FrpId" value="ABC-NET-B2C"/>农业银行
    <img src="${pageContext.servletContext.contextPath}/bank_img/abc.bmp" align="middle"/>
    <input type="radio" name="pd_FrpId" value="CCB-NET-B2C"/>建设银行
    <img src="${pageContext.servletContext.contextPath}/bank_img/ccb.bmp" align="middle"/><br/><br/>
    <input type="radio" name="pd_FrpId" value="BOCO-NET-B2C"/>交通银行
    <img src="${pageContext.servletContext.contextPath}/bank_img/bcc.bmp" align="middle"/><br/>
</form>
<s:a namespace="/" action="order_payById" id="pay">
    <s:param name="oid" value="%{oid}"></s:param>
</s:a>
</body>
</html>
