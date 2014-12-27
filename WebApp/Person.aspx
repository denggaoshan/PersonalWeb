<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Person.aspx.cs" Inherits="WebApp.Person" %>

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
       <strong>XXX,欢迎</strong>
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
          <p>上次登陆时间：2014/12/27</p>
          <p>上次登陆IP: 127.0.0.1</p>
        </div>
        
        <div class="right">
          <form id="personInfo" action="#" method="get">
              <p>姓名</p><input name="name" value="邓高山"/>
               <p>电子邮箱</p><input name="email"  value="475665610@qq.com"/>
               <p>手机</p><input name="phone" value="18120777275"/>
               <p>常住地</p><input name="address" value="厦大学生公寓"/>
               <p><button>修改</button></p>
          </form>
        </div>
        
        <div class="clearfix"></div>
    </div>

</body>
</html>
