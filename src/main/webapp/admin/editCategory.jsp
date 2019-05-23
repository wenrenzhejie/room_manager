<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改分类</title>
    <link rel="icon" type="image/png" href="${pageContext.servletContext.contextPath}/admin/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/admin/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/admin/assets/css/admin.css">
    <script src="${pageContext.servletContext.contextPath}/admin/assets/js/jquery.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/admin/assets/js/app.js"></script>
</head>
<body>
<div>
    <div >
        <h4 class="am-popup-title" style="text-align: center;width: 1000px">修改分类</h4>
    <div class="am-popup-bd">
        <form class="am-form tjlanmu" action="${pageContext.servletContext.contextPath}/admin_realEditCategory">
            <input type="hidden" value="<s:property value="cid"/>" name="cid">
            <div class="am-form-group">
                <div class="zuo">修改分类名：</div>
                <div class="you">
                    <input type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入类名" value="<s:property value='cname'/>" name="cname" style="width: 300px">
                </div>
            </div>
            <div class="am-form-group am-cf">
                <div class="you" style="margin-top: 3px;">
                    状态:
                    <label class="am-checkbox-inline">
                        <input type="checkbox" value="option1">
                        显示 </label>
                    <label class="am-checkbox-inline">
                        <input type="checkbox" value="option2">
                        隐藏 </label>
                </div>
            </div>
            <div class="am-form-group am-cf">
                <div class="you">
                    <p>
                        <input type="submit" value="提交" class="am-btn am-btn-success am-radius">
                    </p>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>
