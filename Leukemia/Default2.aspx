<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td dir="rtl">
                <asp:TreeView ID="TreeView1" runat="server">
                    <Nodes>
                        <asp:TreeNode Text="سایت بیماران" Value="سایت بیماران">
                            <asp:TreeNode NavigateUrl="~/Default.aspx" Text="Default" Value="Default"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Morajeat.aspx" Text="Morajeat" Value="Morajeat"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Analysis.aspx" Text="Analysis" Value="Analysis"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/CreateUser.aspx" Text="CreateUser" Value="CreateUser"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Report.aspx" Text="Report" Value="Report"></asp:TreeNode>
                        </asp:TreeNode>
                    </Nodes>
                </asp:TreeView>
            </td>
        </tr>
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
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

