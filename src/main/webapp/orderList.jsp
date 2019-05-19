<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>所有订单</title>
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
<h1>我的订单</h1>
<s:iterator value="orderList">
    <table border="1" width="100%" cellspacing="0">
        <tr bgcolor="gray" bordercolor="gray">
            <td colspan="7">
                订单编号：<s:property value="oid"/>　成交时间：<s:date name="successTime" var="st"/><s:property value="#st"/>　金额：<font color="red"><b><s:property value="subtotal"></s:property>元</b></font>
            </td>
        </tr>
            <tr bordercolor="gray" align="center">
                <td width="15%">
                    <div><img src="<s:property value="room.image"/>" id="img"/></div>
                </td>
                <td>房间号：<s:property value="room.rnum"></s:property></td>
                <td>单价：<s:property value="room.price"></s:property>元</td>
                <td>入住时间：<s:date name="%{beginDate}" var="d1" format="yyyy-MM-dd"></s:date><s:property value="#d1"></s:property></td>
                <td>离去时间：<s:date name="%{endDate}" var="d2" format="yyyy-MM-dd"></s:date><s:property value="#d2"></s:property></td>
                <td>订单状态:<s:if test="%{status}">
                    <a href="/room_manager/real_index.jsp">已付款</a></s:if><s:else>
                        <s:a namespace="/" action="order_payById">
                            <s:param name="oid" value="%{oid}"></s:param>
                           未付款
                        </s:a></s:else>
                </td>
                <td><s:a namespace="/" action="order_cancle">
                    <s:param name="oid" value="%{oid}"></s:param>
                    取消订单
                </s:a></td>
            </tr>
    </table>
</s:iterator>

<br/>
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
<a href="${pageContext.servletContext.contextPath}/order_payAll" id="pay"></a>
</body>
</html>

