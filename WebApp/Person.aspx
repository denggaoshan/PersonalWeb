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
   </header>
    
    <nav>
        <ul>
           <li><a href="./Person.aspx">用户信息</a></li>
            <li><a href="./UploadFile.aspx">我的文件</a></li>
        </ul>
    </nav>
    
    <div class="content">
        <div class="left">
          <img src="./img/empty.jpg"/>
          <p>上次登陆时间：<%=userinfo.lastTime %></p>
          <p>上次登陆IP: <%=userinfo.lastIP %></p>
          <p>总计访问次数：1次</p>
          <p>当前停留时间：10s</p>
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

</body>
</html>
