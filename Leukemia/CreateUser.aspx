<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            width: 100%;
        }
        .auto-style2
        {
            width: 782px;
        }
        .auto-style3
        {
            width: 784px;
        }
        .auto-style4
        {
            width: 786px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txt_shbimar" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_shbimar" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="شماره پرونده"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" align="right">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txt_password" ValidationGroup="g1"></asp:RequiredFieldValidator>
                            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="رمز عبور"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4" align="right">
                            <asp:TextBox ID="txt_password2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="تکرار رمز عبور"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="رمز عبور با تکرار آن برابر نیست" ControlToCompare="txt_password" ControlToValidate="txt_password2" ForeColor="#CC0000" ValidationGroup="g1"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="ایجاد کاربر" Height="36px" OnClick="Button1_Click" Width="112px" ValidationGroup="g1" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
