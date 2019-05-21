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
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link href="bootstrap3/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/bootstrap-datepicker.css" rel="stylesheet" />

    <script src="jquery/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="bootstrap3/js/bootstrap.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap-datepicker.js"></script>

    <style>
        .fcon{
            margin-top: 10px;
        }
        .fcon .p{
           border:0px;
            color: red;
        }
        .fcon .s{
            margin-top: 10px;
            margin-right: 10px;
            font-weight: bolder;
        }
        .fcon .b{
            background-color: transparent;
            color: black;
            background-image: url("images/p1.jpg");
            width: 100%;
            height: 34px;
        }
    </style>
</head>
<body>

<div class="team" id="team">
    <div class="container">
        <h3>所有房间</h3>
        <div class="row pt-md">
            <s:iterator value="roomList">
                <div class="col-md-3 w3ls_profile">
                    <button type="button" <%--class="btn btn-info btn-lg"--%> data-toggle="modal" data-target="#myModal" style="border:0;padding: 0" onclick="search(this)" value="${rid}"><div>
                        <img src="${pageContext.servletContext.contextPath}/${image}" class="img-responsive">
                    </div>
                    </button>
                    <h3 class="w3layouts_team">${rnum}</h3>
                        <h5 style="color: red;margin-left: 96px"><s:property value="price"></s:property>￥/晚</h5>
                    <s:if test="%{sell}">
                        <h5 style="color: red;margin-left: 96px">该房已定出</h5>
                    </s:if>
                    <s:else>
                        <h5 style="color: red;margin-left: 96px">
                            <s:a namespace="/" action="order_preOrder">
                                <s:param name="room.rid" value="%{rid}"></s:param>
                                去订购
                            </s:a>
                        </h5>
                    </s:else>
                </div>
            </s:iterator>
        </div>
    </div>
</div>

<div class="w3l_aboutinfo">
    <div class="container">
        <div class="col-md-5 w3l_aboutdown5">
            <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">房间详情</h4>
                        </div>
                        <div class="modal-body">
                            <img src="images/about1.jpg"  class="img-responsive" alt="tfg" id="img">
                            <form action="${pageContext.servletContext.contextPath}/order_preOrder" id="form" class="fcon">
                            <input type="hidden" name="room.rid" value="1" id="rid">
                                <span class="s">房间号:</span><input type="text" value="121" id="rnum" class="p" readonly="readonly"><br>
                                <span class="s">元/晚&nbsp;&nbsp;&nbsp;:</span><input type="text" value="121" id="price" class="p" readonly="readonly"><br>
                                <span class="s">描述:</span><textarea class="pdesc" id="rdesc" readonly="readonly"></textarea>
                            </form>
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

</body>
</html>
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
<%--<script type="text/javascript">
    $('.datepicker').datepicker({
        weekStart:1,
        color: 'red'
    });
</script>--%>
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
    function search(obj) {
        var v =obj.value;
        var image = document.getElementById("img");
        var roomid = document.getElementById("rid");
        var roomnum = document.getElementById("rnum");
        var roomprice = document.getElementById("price");
        var roomDesc = document.getElementById("rdesc");
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
                var jsonData = xmlhttp.responseText;
                var jsonObject = eval("("+jsonData+")");
                console.log(jsonObject);
                var img = jsonObject.image;
                var rid = jsonObject.rid;
                var rum = jsonObject.rnum;
                var price = jsonObject.price+"￥";
                var desc = jsonObject.rdesc;
                image.src=img;
                roomid.value=rid;
                roomprice.value=price;
                roomnum.value=rum;
                roomDesc.value=desc;
            }
        };
        var url = "${pageContext.servletContext.contextPath}/room_findById?rid="+v;
        xmlhttp.open("GET",url);
        xmlhttp.send(null);
    }
</script>