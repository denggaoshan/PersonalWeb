<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../css/master.css">
    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../css/register.css">
    <title>注册</title>
</head>
<body>
    <div class="wrapper">
        <div class="head_logo">用户注册</div>

        <div class="main_box2395">
            <form id="login" action="./Register.aspx" method="get">
                 <p>用户名</p><input id="user" name="user"/>
                <p>密码</p><input type="password" id="psw" name="psw"/>
                 <div class="clearfix"></div>
                 <div class="line"></div>
                <button class="bt">确定</button>
             </form>
            <br/>
                    <a href="Login.aspx">返回登陆界面</a>
        </div>
    </div>
  
    
</body>
</html>