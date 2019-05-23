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
<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
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
      <li class="kuanjie"> <a href="#">会员管理</a> <a href="#">奖金管理</a> <a href="#">订单管理</a> <a href="#">产品管理</a> <a href="#">个人中心</a> <a href="#">系统设置</a> </li>
      <li class="soso">
        <p>
          <select data-am-selected="{btnWidth: 70, btnSize: 'sm', btnStyle: 'default'}">
            <option value="b">全部</option>
            <option value="o">产品</option>
            <option value="o">会员</option>
          </select>
        </p>
        <p class="ycfg">
          <input type="text" class="am-form-field am-input-sm" placeholder="搜索" />
        </p>
        <p>
          <button class="am-btn am-btn-xs am-btn-default am-xiao"><i class="am-icon-search"></i></button>
        </p>
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
        <li>订单列表</li>
        <li>合并订单</li>
        <li>订单打印</li>
        <li>添加订单</li>
        <li>发货单列表</li>
        <li>换货单列表</li>
      </ul>
      <h3 class="am-icon-users"><em></em> <a href="#">会员管理</a></h3>
      <ul>
        <li>会员列表 </li>
        <li>未激活会员</li>
        <li>团队系谱图</li>
        <li>会员推荐图</li>
        <li>推荐列表</li>
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
  </div>
  <div class=" admin-content">
    <div class="daohang">
      <ul>
        <li>
        <button type="button" class="am-btn am-btn-default am-radius am-btn-xs">
        房间分类
        </button>
        </li>
      </ul>
    </div>
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
    
          <div class="am-popup am-popup-inner" id="my-popups">
        <div class="am-popup-hd">
          <h4 class="am-popup-title">修改栏目名称</h4>
          <span data-am-modal-close class="am-close">&times;</span> </div>
        <div class="am-popup-bd">
          <form class="am-form tjlanmu">
            <div class="am-form-group">
              <div class="zuo">栏目名称：</div>
              <div class="you">
                <input type="email" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入标题">
              </div>
            </div>
            <div class="am-form-group">
              <div class="zuo">栏目关键词：</div>
              <div class="you">
                <input type="password" class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入关键词">
              </div>
            </div>
            <div class="am-form-group am-cf">
              <div class="zuo">栏目描述：</div>
              <div class="you">
                <textarea class="" rows="2" id="doc-ta-1"></textarea>
              </div>
            </div>
            <div class="am-form-group am-cf">
              <div class="zuo">栏目图片：</div>
              <div class="you" style="height: 45px;">
                <input type="file" id="doc-ipt-file-1">
                <p class="am-form-help">请选择要上传的文件...</p>
              </div>
            </div>
            <div class="am-form-group am-cf">
              <div class="zuo">简介：</div>
              <div class="you">
                <textarea class="" rows="2" id="doc-ta-1"></textarea>
              </div>
            </div>
            <div class="am-form-group am-cf">
              <div class="zuo">状态：</div>
              <div class="you" style="margin-top: 3px;">
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
                  <button type="submit" class="am-btn am-btn-success am-radius">提交</button>
                </p>
              </div>
            </div>
          </form>
        </div>
      </div>
    
    
    
    
    
    
    <div class="am-popup am-popup-inner" id="my-popupss">
        <div class="am-popup-hd">
          <h4 class="am-popup-title">复制栏目</h4>
          <span data-am-modal-close class="am-close">&times;</span> </div>
        <div class="am-popup-bd">
          <form class="am-form tjlanmu">
          
          
          <div class="am-form-group">
              <div class="zuo">复制到：</div>
              <div class="you">
              
  <select data-am-selected="{btnWidth: 200, btnSize: 'sm', btnStyle: 'danger'}">
  <option value="a">Apple</option>
  <option value="b">Banana</option>
  <option value="o">Orange</option>
  <option value="m">Mango</option>
</select>
 顶级栏目选默认

              </div>
            </div>
          
          
            <div class="am-form-group">
              <div class="zuo">新栏目名称：</div>
              <div class="you">
                <input type="email" class="am-input-sm" id="doc-ipt-email-1" placeholder="请输入标题">
              </div>
            </div>
            <div class="am-form-group">
              <div class="zuo">栏目关键词：</div>
              <div class="you">
                <input type="password" class="am-input-sm" id="doc-ipt-pwd-1" placeholder="请输入关键词">
              </div>
            </div>
            <div class="am-form-group am-cf">
              <div class="zuo">栏目描述：</div>
              <div class="you">
                <textarea class="" rows="2" id="doc-ta-1"></textarea>
              </div>
            </div>
            <div class="am-form-group am-cf">
              <div class="zuo">栏目图片：</div>
              <div class="you" style="height: 45px;">
                <input type="file" id="doc-ipt-file-1">
                <p class="am-form-help">请选择要上传的文件...</p>
              </div>
            </div>
            <div class="am-form-group am-cf">
              <div class="zuo">简介：</div>
              <div class="you">
                <textarea class="" rows="2" id="doc-ta-1"></textarea>
              </div>
            </div>
            <div class="am-form-group am-cf">
              <div class="zuo">状态：</div>
              <div class="you" style="margin-top: 3px;">
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
                  <button type="submit" class="am-btn am-btn-success am-radius">提交</button>
                </p>
              </div>
            </div>
          </form>
        </div>
      </div>
    
    
    
    
    
    
    
    
    
    
    <div class="admin-biaogelist">
      <div class="listbiaoti am-cf">
        <ul class="am-icon-flag on">
          房间分类管理
        </ul>
        <dl class="am-icon-home" style="float: right;">
          当前位置： 首页 > <a href="#">房间分类</a>
        </dl>
        <dl>
          <button type="button" class="am-btn am-btn-danger am-round am-btn-xs am-icon-plus" data-am-modal="{target: '#my-popup'}">添加房间分类</button>
        </dl>
        <!--data-am-modal="{target: '#my-popup'}" 弹出层 ID  弹出层 190行 开始  271行结束--> 
        
      </div>
      <form class="am-form am-g">
        <table width="100%" class="am-table am-table-bordered am-table-radius am-table-striped am-table-hover">
          <thead>
            <tr class="am-success">
              <th></th>
              <th style="text-align: center">序号</th>
              <th style="text-align: center">房间类型</th>
              <th width="163px" style="text-align: center">操作</th>
            </tr>
          </thead>
          <s:iterator value="categoryList" status="state">
          <tbody>
            <tr>
              <td><input type="checkbox" /></td>
              <td><s:property value="#state.count"></s:property></td>
              <td style="text-align: center"><s:property value="cname"></s:property></td>
              <td style="text-align: center"><div class="am-btn-toolbar" style="text-align: center">
                  <div style="text-align: center">
                    <s:a namespace="/" action="admin_editCategory" cssClass="am-btn am-btn-default am-btn-xs am-text-secondary am-round">
                      <span class="am-icon-pencil-square-o" ></span>
                      <s:param name="cid" value="%{cid}"></s:param>
                    </s:a>
                    <s:a namespace="/" action="admin_deleteCategory" cssClass="am-btn am-btn-default am-btn-xs am-text-danger am-round">
                      <span class="am-icon-trash-o"></span>
                      <s:param name="cid" value="%{cid}"></s:param>
                    </s:a>
                  </div>
                </div></td>
            </tr>
          </tbody>
          </s:iterator>
        </table>

        <div class="am-btn-group am-btn-group-xs">
          <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 删除</button>
          <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 上架</button>
          <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 下架</button>
          <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 移动</button>
          <button type="button" class="am-btn am-btn-default"><span class="am-icon-plus"></span> 新增</button>
          <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
          <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 移动</button>
          <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
        </div>
        <ul class="am-pagination am-fr">
           <%-- <li>
              <s:a namespace="/" action="admin_findAllCategory">
                »
                <s:param name="currentPage" value="%{currentPage+1}"></s:param>
              </s:a>
            </li>--%>
          <s:iterator begin="begin" end="end" var="num">
          <li class="am-active">
            <s:a namespace="/" action="admin_findAllCategory" style="cursor: pointer">
              <s:property value="#num"></s:property>
              <s:param name="currentPage" value="%{#num}"></s:param>
            </s:a>
          </li>
          </s:iterator>
            <%--<li>
              <s:a namespace="/" action="aidmn_findAllCategory">
                «
                <s:param name="currentPage" value="%{currentPage-1}"></s:param>
              </s:a>
            </li>--%>
        </ul>
        <hr />
        <p>
        备注：操作图标含义
         <a class="am-icon-pencil-square-o am-text-secondary" title="修改"> 修改</a>
         <a class="am-icon-trash-o am-text-danger" title="删除"> 删除</a>
        </p>
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