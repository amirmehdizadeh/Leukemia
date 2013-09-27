<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ورود به سیستم</title>
    <link rel="icon" href="images/icon.ico" />
    <link type="text/css" rel="stylesheet" href="css/login.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="js/login.js" type="text/javascript"></script>


</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="login">
            <img src="images/leukemia.png" style="margin-bottom: 20px;" />
                <asp:Login  ID="Login1" runat="server" OnLoggedIn="Login1_LoggedIn" OnLoginError="Login1_LoginError">
                    <LayoutTemplate>
                        <asp:TextBox ID="UserName" CssClass="input" runat="server" title="یوزر را وارد کنید."/>
                        <asp:TextBox TextMode="Password" runat="server" CssClass="input" ID="Password" title="رمز عبور را وارد کنید."/>
                        <asp:CheckBox Text="مرا به خاطر بسپار" runat="server" CssClass="checkbox" ID="RememberMe"/>  
                        <asp:Label ID="Label1" runat="server" Text="" CssClass="notification"></asp:Label>          
                        <asp:Button Text="ورود" runat="server" CssClass="button" ID="LoginButton" CommandName="Login" ValidationGroup="Login1"/>    
                    </LayoutTemplate>
                </asp:Login>
        </div>   
    </div>
    </form>
</body>
</html>
