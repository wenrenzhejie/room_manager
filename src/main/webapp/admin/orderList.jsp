<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="${pageContext.servletContext.contextPath}/admin/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed" href="${pageContext.servletContext.contextPath}/admin/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/admin/assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath}/admin/assets/css/admin.css">
<script src="${pageContext.servletContext.contextPath}/admin/assets/js/jquery.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/admin/assets/js/app.js"></script>
</head>
<body>

<header class="am-topbar admin-header">
  <div class="am-topbar-brand"><img src="${pageContext.servletContext.contextPath}/admin/assets/i/logo.png"></div>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav admin-header-list">

   <li class="am-dropdown tognzhi" data-am-dropdown>
  <button class="am-btn am-btn-primary am-dropdown-toggle am-btn-xs am-radius am-icon-bell-o" data-am-dropdown-toggle> 消息管理<span class="am-badge am-badge-danger am-round">6</span></button>
  <ul class="am-dropdown-content">
  	
  	
  	
    <li class="am-dropdown-header">所有消息都在这里</li>

    

    <li><a href="#">未激活会员 <span class="am-badge am-badge-danger am-round">556</span></a></li>
    <li><a href="#">未激活代理 <span class="am-badge am-badge-danger am-round">69</span></a></li>
    <li><a href="#">未处理汇款</a></li>
    <li><a href="#">未发放提现</a></li>
    <li><a href="#">未发货订单</a></li>
    <li><a href="#">低库存产品</a></li>
    <li><a href="#">信息反馈</a></li>
    
    
    
  </ul>
</li>

 <li class="kuanjie">
 	
 	<a href="#">会员管理</a>          
 	<a href="#">奖金管理</a> 
 	<a href="#">订单管理</a>   
 	<a href="#">产品管理</a> 
 	<a href="#">个人中心</a> 
 	 <a href="#">系统设置</a>
 </li>

 <li class="soso">
 	
<p>   
	
	<select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
          <option value="b">全部</option>
          <option value="o">产品</option>
          <option value="o">会员</option>
          
        </select>

</p>

<p class="ycfg"><input type="text" class="am-form-field am-input-sm" placeholder="搜索" /></p>
<p><button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button></p>
 </li>




      <li class="am-hide-sm-only" style="float: right;"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main"> 

<div class="nav-navicon admin-main admin-sidebar">


    <div class="sideMenu am-icon-dashboard" style="color:#aeb2b7; margin: 10px 0 0 0;"> 欢迎系统管理员：admin</div>
    <div class="sideMenu">
        <h3 class="am-icon-flag"><em></em> <a href="#">房间管理</a></h3>
        <ul>
            <li><a href="${pageContext.servletContext.contextPath}/admin/index.jsp">首页</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/admin_findAllCategory">房间类别</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/adminRoom_findAllRooms">房间列表</a></li>
        </ul>
      <h3 class="am-icon-cart-plus"><em></em> <a href="#"> 订单管理</a></h3>
      <ul>
          <li><a href="${pageContext.servletContext.contextPath}/adminOrder_findAllOrders">所有订单</a></li>
        <li>订单打印</li>
      </ul>
        <h3 class="am-icon-users"><em></em> <a href="#">用户管理</a></h3>
        <ul>
            <li><a href="${pageContext.servletContext.contextPath}/adminUser_findAllUsers">所有用户</a></li>
        </ul>
      <h3 class="am-icon-volume-up"><em></em> <a href="#">信息通知</a></h3>
      <ul>
        <li>站内消息 /留言 </li>
        <li>短信</li>
        <li>邮件</li>
        <li>微信</li>
        <li>客服</li>
      </ul>
      <h3 class="am-icon-gears"><em></em> <a href="#">系统设置</a></h3>
      <ul>
        <li>数据备份</li>
        <li>邮件/短信管理</li>
        <li>上传/下载</li>
        <li>权限</li>
        <li>网站设置</li>
        <li>第三方支付</li>
        <li>提现 /转账 出入账汇率</li>
        <li>平台设置</li>
        <li>声音文件</li>
      </ul>
    </div>
    <!-- sideMenu End --> 
    
    <script type="text/javascript">
			jQuery(".sideMenu").slide({
				titCell:"h3", //鼠标触发对象
				targetCell:"ul", //与titCell一一对应，第n个titCell控制第n个targetCell的显示隐藏
				effect:"slideDown", //targetCell下拉效果
				delayTime:300 , //效果时间
				triggerTime:150, //鼠标延迟触发时间（默认150）
				defaultPlay:true,//默认是否执行效果（默认true）
				returnDefault:true //鼠标从.sideMen移走后返回默认状态（默认false）
				});
		</script>

    <div class="am-popup am-popup-inner" id="my-popup">
        <div class="am-popup-hd">
            <h4 class="am-popup-title">添加分类</h4>
            <span data-am-modal-close
                  class="am-close">&times;</span> </div>
        <div class="am-popup-bd">
            <form class="am-form tjlanmu" action="${pageContext.servletContext.contextPath}/admin_addCategory">
                <div class="am-form-group">
                    <div class="zuo">房间类别：</div>
                    <div class="you">
                        <input type="text" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入类别" name="cname">
                    </div>
                </div>
                <div class="am-form-group am-cf">
                    <div class="you" style="margin-top: 3px;">
                        状态：
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
                            <input type="submit" class="am-btn am-btn-success am-radius" value="提交">
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </div>
    
    
</div>

<div class=" admin-content">

<div class="admin-biaogelist">
	
    <div class="listbiaoti am-cf">
      <ul class="am-icon-flag on"> 栏目名称</ul>
      
      <dl class="am-icon-home" style="float: right;"> 当前位置： 首页 > <a href="#">订单</a></dl>
      
      <dl>
        <s:a cssClass="am-btn am-btn-danger am-round am-btn-xs am-icon-plus"> 订单列表</s:a>
      </dl>
    </div>
	
	<div class="am-btn-toolbars am-btn-toolbar am-kg am-cf">
  <ul>
    <li>
      <div class="am-btn-group am-btn-group-xs">
        <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
          <option value="b">产品分类</option>
          <option value="o">下架</option>
        </select>
      </div>
    </li>
    <li>
      <div class="am-btn-group am-btn-group-xs">
      <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
        <option value="b">产品分类</option>
        <option value="o">下架</option>
      </select>
      </div>
    </li>
    <li style="margin-right: 0;">
    	<span class="tubiao am-icon-calendar"></span>
      <input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/>
    </li>
       <li style="margin-left: -4px;">
    	<span class="tubiao am-icon-calendar"></span>
      <input type="text" class="am-form-field am-input-sm am-input-zm  am-icon-calendar" placeholder="开始日期" data-am-datepicker="{theme: 'success',}"  readonly/>
    </li>
    
        <li style="margin-left: -10px;">
      <div class="am-btn-group am-btn-group-xs">
      <select data-am-selected="{btnWidth: 90, btnSize: 'sm', btnStyle: 'default'}">
        <option value="b">产品分类</option>
        <option value="o">下架</option>
      </select>
      </div>
    </li>
    <li><input type="text" class="am-form-field am-input-sm am-input-xm" placeholder="关键词搜索" /></li>
    <li><button type="button" class="am-btn am-radius am-btn-xs am-btn-success" style="margin-top: -1px;">搜索</button></li>
  </ul>
</div>


    <form class="am-form am-g">
          <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped" style="text-align: center;" valign="bottom">
            <thead>
              <tr class="am-success" style="text-align: center">
                <th style="text-align: center">序号</th>
                <th style="text-align: center">房客</th>
                <th style="text-align: center">房间号</th>
                <th style="text-align: center">入住日期</th>
                <th style="text-align: center">离去日期</th>
                <th style="text-align: center">交易时间</th>
                <th style="text-align: center">金额</th>
                <th style="text-align: center">状态</th>
              </tr>
            </thead>
            <tbody>
            <s:iterator value="orderList" status="state">
              <tr>
                  <td style="vertical-align: center!important;width: 100px;height: 100px;line-height: 100px"><s:property value="#state.count"></s:property></td>
                  <td style="vertical-align: center!important;width: 100px;height: 100px;line-height: 100px"><s:property value="user.real_name"></s:property></td>
                <td style="vertical-align: center!important;width: 100px;height: 100px;line-height: 100px"><s:property value="room.rnum"></s:property></td>
                  <td style="vertical-align: center!important;width: 100px;height: 100px;line-height: 100px"><s:date name="%{beginDate}" format="yyyy-MM-dd" var="bd"></s:date><s:property value="#bd"></s:property></td>
                  <td style="vertical-align: center!important;width: 100px;height: 100px;line-height: 100px"><s:date name="%{endDate}" format="yyyy-MM-dd" var="ed"></s:date><s:property value="#ed"></s:property></td>
                  <td style="vertical-align: center!important;width: 100px;height: 100px;line-height: 100px"><s:date name="%{successTime}" format="yyyy-MM-dd" var="sd"></s:date><s:property value="#sd"></s:property></td>
                  <td style="vertical-align: center!important;width: 100px;height: 100px;line-height: 100px"><s:property value="subtotal"></s:property></td>
                  <td style="vertical-align: center!important;width: 100px;height: 100px;line-height: 100px">
                      <s:if test="%{status}">已付款</s:if>
                      <s:else>未付款</s:else>
                  </td>
              </tr>
            </s:iterator>
            </tbody>
          </table>
          

        <ul class="am-pagination am-fr">
            <s:if test="%{currentPageNum != totalPages}">
                <li>
                    <s:a namespace="/" action="adminOrder_findAllOrders">
                        »
                        <s:param name="currentPage" value="%{currentPageNum+1}"></s:param>
                    </s:a>
                </li>
            </s:if>
            <s:iterator begin="begin" end="end" var="num">
                <li class="am-active">
                    <s:a namespace="/" action="adminOrder_findAllOrders" style="cursor: pointer">
                        <s:property value="#num"></s:property>
                        <s:param name="currentPage" value="%{#num}"></s:param>
                    </s:a>
                </li>
            </s:iterator>
                <s:if test="%{currentPageNum != 1}">
                    <li>
                        <s:a namespace="/" action="adminOrder_findAllOrders">
                            «
                            <s:param name="currentPage" value="%{currentPageNum-1}"></s:param>
                        </s:a>
                    </li>
                </s:if>
        </ul>
          
          
          
      
          <hr />
        </form>
 
 



</div>

</div>




</div>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${pageContext.servletContext.contextPath}/admin/assets/js/polyfill/rem.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/admin/assets/js/polyfill/respond.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/admin/assets/js/amazeui.legacy.js"></script>
<![endif]--> 

<!--[if (gte IE 9)|!(IE)]><!--> 
<script src="${pageContext.servletContext.contextPath}/admin/assets/js/amazeui.min.js"></script>
<!--<![endif]-->



</body>
</html>