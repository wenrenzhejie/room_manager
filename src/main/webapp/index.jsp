<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="" />
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /> 
<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
</head>
<body>
<!-- header & Banner -->
<div class="header">
<nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <h1><a class="navbar-brand" href="#">HOTEL</a></h1>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
       <li><a href="#">首页</a></li>
        <li><a href="#aboutus" class="page-scroll">关于我们</a></li>
          <li><a href="#gallery" class="page-scroll">预定房间</a></li>
          <li><a href="#gallery" class="page-scroll">热门房间</a></li>
		<li><a href="#team" class="page-scroll">Team</a></li>
        <li><a href="#services" class="page-scroll">Services</a></li>
		<li><a href="#testimonials" class="page-scroll">Testimonials</a></li>
		<li><a href="#contactus" class="page-scroll">Contact Us</a></li>
          <s:if test="%{#attr.userName != null}">
              <li><a href="#contactus" class="page-scroll" id="user">欢迎<s:property value="#attr.userName"></s:property></a></li>
          </s:if>

      </ul>
      <ul class="nav navbar-nav navbar-right">
      <ul class="nav pull-right">
          <li class="dropdown" id="menuLogin">
              <s:if test="%{#attr.userName != null}">
                  <a class="dropdown-toggle" href="${pageContext.servletContext.contextPath}/user_quit" id="navLogin">退出</a>
              </s:if>
              <s:if test="%{#attr.userName == null}">
                  <a class="dropdown-toggle" href="${pageContext.servletContext.contextPath}/login.jsp" id="navLogin">登录</a>
              </s:if>

          </li>
        </ul>

      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</div>
    
        <div class="w3banner">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="images/2.jpg" class="img-responsive" alt="First slide">
                        
                    </div>
                    <div class="item">
                        <img src="images/1.jpg" class="img-responsive" alt="Second slide">
                       
                    </div>
                    <div class="item">
                        <img src="images/3.jpg" class="img-responsive" alt="Third slide">
                        
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                        href="#carousel-example-generic" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                        </span></a>
            </div>
            <div class="main-text">
                <div class="w3l_bannerinfo">
                    <h3>
                        Welcome to sunshine hotel!</h3>
                    <h3>
                        Have a good time!
                    </h3>
                    <div class="w3_bannerinfo">
                        
						<a class="btn btn-clear btn-sm btn-min-block" href="${pageContext.servletContext.contextPath}/regist.jsp">注册</a>
						</div>
                </div>
            </div>
        </div>
    

<!-- About Us -->
<div class="aboutus" id="aboutus">
<div class="w3l_flex">
<div class="container">
<div class="col-md-4 w3l_flex1">
<h3> 我们共同努力保障您的每一次住宿</h3>
</div>
<div class="col-md-6 w3l_flex2">
<p>你所做的将成为你将要做的事情的评判标准——尤其是在别人的心目中。当你住宿的时候，你就是你现在所在的地方。</p>
</div>
<div class="col-md-2 w3l_flex3">
<a href="#contactus" class="page-scroll">联系我们</a>
</div>
<div class="clearfix"></div>
</div>
</div>
</div>
<div class="w3l_aboutinfo">
<div class="container">
<div class="col-md-5 w3l_aboutdown5">
<h6>Welcome</h6>
<h3>About</h3>
<p>阳光酒店管理集团有限公司成立于2002年，是一家以酒店旅游为核心业务的专业公司，可提供各类会议、商务活动、留学、旅游、培训、疗养、度假等综合优质服务。</p>
 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Read More</button>
  <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
             <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">阳光酒店</h4>
        </div>
        <div class="modal-body">
		<img src="images/about1.jpg"  class="img-responsive" alt="tfg">
          <p>阳光酒店集团凭借专业的管理和优质的服务，自成立以来屡获殊荣。2009年度获得“星光奖-中国最佳酒店集团”、中国旅游饭店业协会颁发的“2009年中国饭店业最具规模的30家饭店管理公司（集团）”、“最佳民族酒店集团”；2010年获得“2010年酒店经理人国际精英论坛-最佳民族酒店”；2016年度，入围中国旅游饭店业协会评选的“中国饭店集团60强”。</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
</div>
<div class="col-md-7 w3l_aboutside">
<div class="w3l_aboutdown">
<div class="w3l_aboutdown1">
<img src="images/sun1.jpg" class="img-responsive" style="width: 550px;height:250px">
<div class="w3l_aboutimgflex">
<div class="col-md-5 w3l_imgflex">
<img src="images/sun22.jpg" class="img-responsive" style="width: 630px;height:218px">
</div>
<div class="col-md-7 w3l_imgflex1">
<img src="images/sun3.jpg" class="img-responsive" style="width: 600px;height:218px">
</div>
<div class="clearfix"></div>
</div>
</div>
</div>
</div>
</div>
</div>
<!--/About Us -->

<!--/Testimonials-->
<!--/gallery-->
<div class="gallery" id="gallery">
    <div class="container">
        <%--<div class="tittle-w3">
            <h3>及时预订</h3>
        </div>--%>
        <div class="tittle-w3" style="position: relative">
            <h3>热门房间</h3>
         </div>
        <div class="agile_gallery_grids w3-agile">

            <ul class="clearfix demo">
                <s:iterator value="categoryList">
                    <li>
                        <div class="gallery-grid1">
                            <s:a namespace="/" action="room_findByCategoryId">
                                <s:param name="category.cid" value="%{cid}"></s:param>
                                <img src="images/r.jpg" alt=" " class="img-responsive" />
                                <div class="p-mask">
                                    <h4 style="text-align: center"><s:property value="cname"></s:property></h4>
                                </div>
                            </s:a>
                        </div>
                    </li>
                </s:iterator>
            </ul>
        </div>
    </div>
</div>
<!--//gallery-->

<!--Team -->
<div class="team" id="team">
  <div class="container">
          <h3>OUR GUIDES</h3>
          <div class="row pt-md">
            <div class="col-md-3 w3ls_profile">
              <div class="img-box">
                <img src="images/fashion-2940243_640.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="#"><li><i class="fa fa-facebook"></i></li></a>
                  <a href="#"><li><i class="fa fa-twitter"></i></li></a>
                  <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
                </ul>
              </div>
              <h3>Marrie Doi</h3> 
              <h3 class="w3layouts_team"> Operations</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
            <div class="col-md-3 w3ls_profile">
              <div class="img-box">
                <img src="images/portrait-1961529_640.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="#"><li><i class="fa fa-facebook"></i></li></a>
                  <a href="#"><li><i class="fa fa-twitter"></i></li></a>
                  <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
                </ul>
              </div>
              <h3>Christopher Di</h3> 
              <h3 class="w3layouts_team">Projects</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
            <div class="col-md-3 w3ls_profile">
              <div class="img-box">
                <img src="images/portrait-2917643_640.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="#"><li><i class="fa fa-facebook"></i></li></a>
                  <a href="#"><li><i class="fa fa-twitter"></i></li></a>
                  <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
                </ul>
              </div>
              <h3>Heather H</h3> 
              <h3 class="w3layouts_team">Marketing</h3> 
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
            <div class="col-md-3 w3ls_profile">
              <div class="img-box">
                <img src="images/people-2590560_640.jpg" class="img-responsive">
                <ul class="text-center">
                  <a href="#"><li><i class="fa fa-facebook"></i></li></a>
                  <a href="#"><li><i class="fa fa-twitter"></i></li></a>
                  <a href="#"><li><i class="fa fa-linkedin"></i></li></a>
                </ul>
              </div>
              <h3>John Doe</h3> 
              <h3 class="w3layouts_team">Guide</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
            </div>
           </div>
		   </div>
		   </div>
<!--/Team -->
		   
<!--Services-->
<div class="services" id="services">
<h3>Services</h3>
<div class="container">
              <div class="col-md-4 wthree_service">
                <figure class="services-icon">
                  <i class="fa fa-paint-brush" aria-hidden="true"></i>
                </figure>
                <div class="title-services"> Accomidations </div>
                <div class="content-services"> Create a beautiful, functional site that speaks to your clients. From scratch. </div>
<a href="#" data-toggle="modal" data-target="#myModal1">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
  <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
             <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ROVE</h4>
        </div>
        <div class="modal-body">
		<img src="images/accomidation.jpg"  class="img-responsive" alt="tfg">
          <p>We specialise in Code of Conduct.A code of conduct is a set of rules outlining the social norms and religious rules and responsibilities of, or proper practices for, an individual, party or organization. Related concepts include ethical, honor, moral codes and religious laws.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
              </div>
              <div class="col-md-4 wthree_service">
                <figure class="services-icon">
                  <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                </figure>
                <div class="title-services"> Agents </div>
                <div class="content-services"> Create a beautiful, functional site that speaks to your clients. From scratch. </div>
				<a href="#" data-toggle="modal" data-target="#myModal1">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
  <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
             <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ROVE</h4>
        </div>
        <div class="modal-body">
		<img src="images/accomidation.jpg"  class="img-responsive" alt="tfg">
          <p>We specialise in Code of Conduct.A code of conduct is a set of rules outlining the social norms and religious rules and responsibilities of, or proper practices for, an individual, party or organization. Related concepts include ethical, honor, moral codes and religious laws.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>  
              </div>
              <div class="col-md-4 wthree_service">
                <figure class="services-icon">
                  <i class="fa fa-line-chart" aria-hidden="true"></i>
                </figure>
                <div class="title-services"> Charter </div>
                <div class="content-services"> Create a beautiful, functional site that speaks to your clients. From scratch.</div>
				<a href="#" data-toggle="modal" data-target="#myModal1">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
  <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
             <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ROVE</h4>
        </div>
        <div class="modal-body">
		<img src="images/accomidation.jpg"  class="img-responsive" alt="tfg">
          <p>We specialise in Code of Conduct.A code of conduct is a set of rules outlining the social norms and religious rules and responsibilities of, or proper practices for, an individual, party or organization. Related concepts include ethical, honor, moral codes and religious laws.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
             <div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >自助建站</a></div>
              </div>
                <div class="col-md-4 wthree_service">
                <figure class="services-icon">
                  <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                </figure>
                <div class="title-services">Guide </div>
                <div class="content-services"> Create a beautiful, functional site that speaks to your clients. From scratch. </div>
				<a href="#" data-toggle="modal" data-target="#myModal1">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
  <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
             <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ROVE</h4>
        </div>
        <div class="modal-body">
		<img src="images/accomidation.jpg"  class="img-responsive" alt="tfg">
          <p>We specialise in Code of Conduct.A code of conduct is a set of rules outlining the social norms and religious rules and responsibilities of, or proper practices for, an individual, party or organization. Related concepts include ethical, honor, moral codes and religious laws.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>  
              </div>
              <div class="col-md-4 wthree_service">
                <figure class="services-icon">
                  <i class="fa fa-comments" aria-hidden="true"></i>
                </figure>
                <div class="title-services">Locations </div>
                <div class="content-services"> Create a beautiful, functional site that speaks to your clients. From scratch.  </div>
				<a href="#" data-toggle="modal" data-target="#myModal1">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
  <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
             <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ROVE</h4>
        </div>
        <div class="modal-body">
		<img src="images/accomidation.jpg"  class="img-responsive" alt="tfg">
          <p>We specialise in Code of Conduct.A code of conduct is a set of rules outlining the social norms and religious rules and responsibilities of, or proper practices for, an individual, party or organization. Related concepts include ethical, honor, moral codes and religious laws.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div> 
              </div>
              <div class="col-md-4 wthree_service">
                <figure class="services-icon">
                  <i class="fa fa fa-puzzle-piece" aria-hidden="true"></i>
                </figure>
                <div class="title-services">Things to do </div>
                <div class="content-services"> Create a beautiful, functional site that speaks to your clients. From scratch. </div>
				<a href="#" data-toggle="modal" data-target="#myModal1">Read More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
  <div class="modal video-modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModal1">
		<div class="modal-dialog" role="document">
             <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">ROVE</h4>
        </div>
        <div class="modal-body">
		<img src="images/accomidation.jpg"  class="img-responsive" alt="tfg">
          <p>We specialise in Code of Conduct.A code of conduct is a set of rules outlining the social norms and religious rules and responsibilities of, or proper practices for, an individual, party or organization. Related concepts include ethical, honor, moral codes and religious laws.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>  
              </div>
            </div>
</div>

<!--/Services-->

<!--Testimonials-->
<div class="testimonials" id="testimonials">
<div class="container">
<h3>What Client say</h3>
<div class="w3l_quote">
<i class="fa fa-quote-left" aria-hidden="true"></i>

<div class="flexslider-info">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="testmonial_info"> 
									<img src="images/portrait-2163997_640.jpg" class="img-responsive"> 
										<div class="caption">
											<p>Lorem Ipsum is simply dummy text of the printing and 	typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
											<h3>Lina</h3>
										</div> 

								</div> 
							</li>
							<li>
								<div class="testmonial_info"> 
									 <img src="images/man-2933801_640.jpg" class="img-responsive">  
										<div class="caption">
											<p>Lorem Ipsum is simply dummy text of the printing and 	typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
											<h3>Adrien</h3>
										</div> 

								</div> 
							</li>
							<li>
								<div class="testmonial_info"> 
									 <img src="images/man-2933801_640.jpg" class="img-responsive">  
										<div class="caption">
											<p>Lorem Ipsum is simply dummy text of the printing and 	typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
											<h3>Adrien</h3>
										</div> 

								</div> 
							</li>
							<div class="clearfix"> </div>
						</ul>
					</div><div class="clearfix"> </div>
				</section>
		    </div>
</div>
 </div>
</div>

<!--Contact-->
<div class="contactUs" id="contactus">
<h3>Contact Form</h3>
<section id="contact">
			
			
			<div class="container">
				
					<div class="col-md-6 agile_contact">
					  <form action="#" method="post">
			  			<div class="form-group">
			  				<label>Your name</label>
					    	<input type="text" class="form-control" name="name" id="name" placeholder=" " required="">
				  		</div>
				  		<div class="form-group">
					    	<label>Email Address</label>
					    	<input type="email" class="form-control" name="email" id="email" placeholder=" " required="">

					  	</div>	
					  	<div class="form-group">
					    	<label>Mobile No.</label>
					    	<input type="text" name="text"  placeholder=" " required="">
			  			</div>
			  		</div>
			  		<div class="col-md-6 agile_contact">
			  			<div class="form-group">
			  				<label> Message</label>
			  			 	<textarea name="text" placeholder="" required></textarea>
			  			</div>
			  			<div>

			  				<button type="submit" class="btn btn-default submit"><i class="fa fa-paper-plane" aria-hidden="true"></i>  Send Message</button>
			  			</div>
			  			
					</div>
					<div class="clearfix"></div>
				</form>
			</div>
		

</section>
</div>
<!--/Contact-->
<!---<div class="map">
 <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6509915.939484077!2d-123.79728565006775!3d37.1843152587944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x808fb9fe5f285e3d%3A0x8b5109a227086f55!2sCalifornia%2C+USA!5e0!3m2!1sen!2sin!4v1509946591019" style="border:0" allowfullscreen></iframe>
 </div>--->
<div class="footer">
<div class="container">
 <%--<p>Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>--%>
 </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.easing.min.js"></script>
<script src="js/move-top.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/grayscale.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/jquery.flexslider.js"></script>
	
	<!--Start-slider-script-->
	<script type="text/javascript">

	$(window).load(function(){
		$('.flexslider').flexslider({
		animation: "slide",
		start: function(slider){
			$('body').removeClass('loading');
		}
		});
	});
	</script>
	<script type="text/javascript">
$(document).ready(function() {
var defaults = {
containerID: 'toTop', // fading element id
containerHoverID: 'toTopHover', // fading element hover id
scrollSpeed: 1200,
easingType: 'linear' 
};
$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>

<!--gallery-js -->
<script src="js/jquery.picEyes.js"></script>
				<script>
					$(function(){
						//picturesEyes($('.demo li'));
						$('.demo li').picEyes();
					});
				</script>
<!--//gallery-js -->

<script type="text/javascript">
    function search() {
        alert("aaaaaaaaaaaa");
        var begin = document.getElementById("beginDate");
        var beginDate = begin.value;
        var end = document.getElementById("endDate");
        var endDate = end.value;
        var xmlhttp;
        if (window.XMLHttpRequest)
        {
            // IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            // IE6, IE5 浏览器执行代码
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function () {
            if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
                post.innerHTML = "";
                var jsonData = xmlhttp.responseText;
                var jsonObject = eval("("+jsonData+")");
                for(var i = 0;i<jsonObject.length;i++){
                    post.innerHTML += "<option value="+jsonObject[i].postId+">"+jsonObject[i].postName+"</option>";
                }
            }
        };
        var url = "${pageContext.servletContext.contextPath}/post_myAjax?crmDepartment.depId="+dep;
        xmlhttp.open("GET",url);
        xmlhttp.send(null);
    }
</script>


</body>
</html>