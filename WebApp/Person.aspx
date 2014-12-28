<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Person.aspx.cs" Inherits="WebApp.Person" %>
<%@ Import Namespace="WebApp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/person.css">
    <title>主页</title>
</head>
<body>
   <header>
       <strong><%=userinfo.name %>,欢迎</strong>
       <a href="./Login.aspx">退出登录</a>
   </header>
    
    <nav>
        <ul>
           <li><a href="./Person.aspx" >用户信息</a></li>
            <li><a href="./UploadFile.aspx">我的文件</a></li>
        </ul>
    </nav>
    
    <div class="content">
          <div class="left">
          <img src="./img/empty.jpg"/>
          <p>上次登陆时间：<%=userinfo.lastTime %></p>
          <p>上次登陆IP: <%=userinfo.lastIP %></p>
          <p>总计访问次数：1次</p>
          <p>当前时间：</p>
         
          <div id="clock"></div>
          </div>
        <div class="right">
          <form id="personInfo" action="./Person.aspx" method="get">
              <p>姓名</p><input name="name" value="<%=userinfo.name %>"/>
               <p>电子邮箱</p><input name="email"  value="<%=userinfo.email %>"/>
               <p>手机</p><input name="phone" value="<%=userinfo.phone %>"/>
               <p>常住地</p><input name="address" value="<%=userinfo.address %>"/>
              <input name="type" hidden="hidden" value="modified"/>
               <p><button>修改</button></p>
          </form>
        </div>
        
        <div class="clearfix"></div>
    </div>
    
    <script>
        var clock = new Clock();
        clock.display(document.getElementById("clock"));
        function Clock() {
            var date = new Date();
            this.year = date.getFullYear();
            this.month = date.getMonth() + 1;
            this.date = date.getDate();
            this.day = new Array("星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六")[date.getDay()];
            this.hour = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
            this.minute = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
            this.second = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();

            this.toString = function () {
                return "现在是:" + this.year + "年" + this.month + "月" + this.date + "日 " + this.hour + ":" + this.minute + ":" + this.second + " " + this.day;
            };
            this.toSimpleDate = function () {
                return this.year + "-" + this.month + "-" + this.date;
            };
            this.toDetailDate = function () {
                return this.year + "-" + this.month + "-" + this.date + " " + this.hour + ":" + this.minute + ":" + this.second;
            };
            this.display = function (ele) {
                var clock = new Clock();
                ele.innerHTML = clock.toString();
                window.setTimeout(function () { clock.display(ele); }, 1000);//没秒刷新一次
            };
        }
</script>

</body>
</html>
