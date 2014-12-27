<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="WebApp.UploadFile" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/uploadfile.css">
    <title>主页</title>
</head>
<body>
    <form id="form1" runat="server">
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
      所有文件记录：
        <ul>
            <li><a href="#">已经上传过的文件1</a>
                <a href="#">下载</a>
                <a href="#">删除</a>
            </li>
            
            <li><a href="#">文件1</a>
                <a href="#">下载</a>
                <a href="#">删除</a>
            </li>
            
            <li><a href="#">文件1</a>
                <a href="#">下载</a>
                <a href="#">删除</a>
            </li>
            
            <li><a href="#">文件1</a>
                <a href="#">下载</a>
                <a href="#">删除</a>
            </li>
        </ul>
        <div class="clearfix"/>
         <asp:FileUpload ID="FileUpload1" runat="server" />
         <button runat="server">上传</button>
    </div>
       
    </form>

</body>
</html>
