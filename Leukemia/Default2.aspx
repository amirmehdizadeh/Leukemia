<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TreeView ID="TreeView1" runat="server" Width="971px">
                            <Nodes>
                                <asp:TreeNode Text="سایت بیماران خون" Value="سایت بیماران خون">
                                    <asp:TreeNode NavigateUrl="~/Default.aspx" Text="Bimar" Value="Bimar"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Morajeat.aspx" Text="Morajeat" Value="Morajeat"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/CreateUser.aspx" Text="CreateUser" Value="CreateUser"></asp:TreeNode>
                                    <asp:TreeNode NavigateUrl="~/Analysis.aspx" Text="Analysis" Value="Analysis"></asp:TreeNode>
                                </asp:TreeNode>
                            </Nodes>
                        </asp:TreeView>
</asp:Content>

