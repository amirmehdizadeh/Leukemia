<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ورود به سیستم</title>
    <link rel="icon" href="images/icon.ico" />
    <link type="text/css" rel="stylesheet" href="css/login.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="login">
            <img src="images/leukemia.png" style="margin-bottom: 20px;" />
            <asp:Label ID="Label1" runat="server" Text="" CssClass="notification"></asp:Label>
            <asp:TextBox CssClass="input" runat="server"/>
            <asp:TextBox TextMode="Password" runat="server" CssClass="input"/>
            <asp:CheckBox Text="مرا به خاطر بسپار" runat="server" CssClass="checkbox"/>            
            <asp:Button Text="ورود" runat="server" CssClass="button" />
            

        </div>
    
    </div>
    </form>
</body>
</html>
