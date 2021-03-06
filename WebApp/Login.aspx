﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApp.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>登录界面</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="../css/master.css">
    <link rel="stylesheet" href="../css/register.css">
</head>
<body>
    <div class="wrapper">
        <div class="head_logo">请 登 录</div>
        <div class="main_box2395">
            <div class="main_box2395_head">
                <a href="./Register.aspx">注册账号</a>
            </div>
            <div class="clearfix"></div>
            <div class="line"></div>
             <form id="login" action="./Valid.aspx" method="get">
                 <p>用户名</p><input id="user" name="user"/>
                 <br/>
                <p>密码</p><input type="password" id="psw" name="psw"/>
                 <div class="clearfix"></div>
                 <div class="line"></div>
                <button class="bt">确定</button>
             </form>
         </div>
    </div>
</body>
</html>
