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
                <td><input type="date" name="beginDate1" id="beginDate" onchange="choose(this)"></td>
            </tr>
            <tr>
                <td>离去日期:</td>
                <td><input type="date" name="endDate1" id="endDate" onchange="choose(this)"></td>
            </tr>
            <tr>
                <td align="center" colspan="2"><input type="submit" value="提交"></td>
            </tr>
        </table>

    </form>
</body>
</html>

<script type="text/javascript">
    function choose(obj) {
        Date.prototype.format = function(fmt) {
            var o = {
                "M+" : this.getMonth()+1,                 //月份
                "d+" : this.getDate(),                    //日
                "h+" : this.getHours(),                   //小时
                "m+" : this.getMinutes(),                 //分
                "s+" : this.getSeconds(),                 //秒
                "q+" : Math.floor((this.getMonth()+3)/3), //季度
                "S"  : this.getMilliseconds()             //毫秒
            };
            if(/(y+)/.test(fmt)) {
                fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
            }
            for(var k in o) {
                if(new RegExp("("+ k +")").test(fmt)){
                    fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
                }
            }
            return fmt;
        };

        var begin = document.getElementById("beginDate");
        var end = document.getElementById("endDate");
        var beginDate = begin.value;
        var endDate = end.value;
        var objValue = obj.value;
        var bd = new Date(beginDate);
        var nds = new Date().format("yyyy-MM-dd");
        var nd = new Date(nds);
        var ed1 = new Date(endDate);
        var eds = ed1.format("yyyy-MM-dd");
        var ed = new Date(eds);
        if(obj == begin){
            if(bd.getTime() < nd.getTime()){
                alert("您输入的日期不合规范");
                var s = begin.value= nd.toString();
                begin.value = new Date(s).format("yyyy-MM-dd");

            }
        }else{
            if(ed.getTime() < nd.getTime() || ed.getTime() <= bd.getTime()){
                alert("您输入的日期不合规范");
                var s1 = bd.getTime()+60*60*1000*24;
                end.value = new Date(s1).format("yyyy-MM-dd");
            }
        }

    }
</script>
