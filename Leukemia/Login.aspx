<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>



<!DOCTYPE html>
<script runat="server">
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ورود به سیستم</title>
    <link rel="icon" href="images/icon.ico" />
    <link type="text/css" rel="stylesheet" href="css/login.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="js/login.js" type="text/javascript"></script>


    <style type="text/css">
        .auto-style1
        {
            width: 300px;
            height: 400px;
            margin-top: 100px;
            position: relative;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
	/*background-color: white;*/
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="auto-style1">
            <img src="images/leukemia.png" style="margin-bottom: 20px;" />
                <asp:Login  ID="Login1" runat="server" OnLoggedIn="Login1_LoggedIn" OnLoginError="Login1_LoginError">
                    <LayoutTemplate>
                        <asp:TextBox ID="UserName" CssClass="input" runat="server" title="یوزر را وارد کنید"/>
                        <asp:TextBox TextMode="Password" runat="server" CssClass="input" ID="Password" title="رمز عبور را وارد کنید"/>
                        <asp:CheckBox Text="مرا به خاطر بسپار" runat="server" CssClass="checkbox" ID="RememberMe"/>  
                        <asp:Label ID="lblmessage" runat="server" CssClass="notification" ForeColor="Red"></asp:Label>          
                        <asp:Button Text="ورود" runat="server" CssClass="button" ID="LoginButton" CommandName="Login" ValidationGroup="Login1"/>    
                    </LayoutTemplate>
                </asp:Login>
        </div>   
    </div>
    </form>
</body>
</html>
