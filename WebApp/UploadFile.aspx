<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UploadFile.aspx.cs" Inherits="WebApp.UploadFile" %>
<%@ Import Namespace="WebApp" %>


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
       <strong><%=userinfo.name%>,欢迎</strong>
       <a href="./Login.aspx">退出登录</a>
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
            <%=fileList %>
        </ul>
        <div class="clearfix"/>
         <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" />
    </div>
       
    </form>

</body>
</html>
