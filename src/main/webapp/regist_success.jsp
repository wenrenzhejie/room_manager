<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My JSP 'msg.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        div{
            height: 100px;
            margin-top: 500px;
            text-align: center;
            line-height: 100px;
        }
        div span{
            font:italic bolder 30px "微软雅黑";
            color:#888;
            transition: margin 3s;
        }
        div:hover{
            cursor: pointer;
        }
        div:hover span{
            margin: 0 20px;
            color: blue;
        }
        body{
            background-image: url("/room_manager/images/lbg.jpg");
            background-size: cover;
        }

        ul{
            width: 200px;
            height: 200px;
            /*background-color: red;*/
            position: absolute;
            top: 200px;
            left: 50%;

            margin-left:-100px;
            transform-style: preserve-3d;
            /*transform: rotateX(-10deg);*/
            animation: sport 6s linear 0s infinite normal;
        }
        ul li{
            list-style: none;
            width: 200px;
            height: 200px;
            font-size: 60px;
            text-align: center;
            line-height: 200px;
            position: absolute;
            left: 0;
            top: 0;
            background-color: black;
        }
        ul li:nth-child(1){
            transform: rotateY(60deg) translateZ(200px);
        }
        ul li:nth-child(2){
            transform: rotateY(120deg) translateZ(200px);
        }
        ul li:nth-child(3){
            transform: rotateY(180deg) translateZ(200px);
        }
        ul li:nth-child(4){
            transform: rotateY(240deg) translateZ(200px);
        }
        ul li:nth-child(5){
            transform: rotateY(300deg) translateZ(200px);
        }
        ul li:nth-child(6){
            transform: rotateY(360deg) translateZ(200px);
        }
        ul li img{
            width: 200px;
            height: 200px;
            border: 5px solid skyblue;
            box-sizing: border-box;
        }
        ul:hover{
            animation-play-state: paused;
        }
        ul:hover li img{
            opacity: 0.5;
        }
        ul li:hover img{
            opacity: 1;
        }
        @keyframes sport {
            from{
                transform: rotateX(-10deg) rotateY(0deg);
            }
            to{
                transform: rotateX(-10deg) rotateY(360deg);
            }
        }
    </style>
</head>

<body>


<ul>
    <li><img src="/room_manager/images/yu1.jpg" alt=""></li>
    <li><img src="/room_manager/images/yu2.jpg" alt=""></li>
    <li><img src="/room_manager/images/yu3.jpg" alt=""></li>
    <li><img src="/room_manager/images/yu4.jpg" alt=""></li>
    <li><img src="/room_manager/images/yu5.jpg" alt=""></li>
    <li><img src="/room_manager/images/yu6.jpg" alt=""></li>
</ul>

<div id="box">
    <span>注</span>
    <span>册</span>
    <span>后</span>
    <span>点</span>
    <span>击</span>
    <span>此</span>
    <span>处</span>
    <span>激</span>
    <span>活</span>
</div>
<p>${web}</p>
<input type="hidden" name="web" value="${web}">

<script type="text/javascript">
    var box = document.getElementById("box");
    box.onclick = function(){
        window.open('${web}');
    }
</script>
</body>
</html>
