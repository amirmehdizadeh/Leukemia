<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Analysis.aspx.cs" Inherits="Analysis" %>

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
            height: 361px;
        }
        .auto-style3
        {
            width: 5px;
        }
    </style>
    <script type="text/javascript" src="Scripts/JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
            </tr>
            <tr>
                <td dir="rtl" align="center">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                   
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Sh_Bimar" HeaderText="Sh_Bimar" ReadOnly="True" SortExpression="Sh_Bimar" />
                            <asp:BoundField DataField="HB" HeaderText="HB" SortExpression="HB" />
                            <asp:BoundField DataField="WBC" HeaderText="WBC" SortExpression="WBC" />
                            <asp:BoundField DataField="PLT" HeaderText="PLT" SortExpression="PLT" />
                            <asp:BoundField DataField="CR" HeaderText="CR" SortExpression="CR" />
                            <asp:BoundField DataField="LFT" HeaderText="LFT" SortExpression="LFT" />
                            <asp:BoundField DataField="AnalysisDate_SH" HeaderText="AnalysisDate_SH" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="delete" Height="35px" ImageUrl="~/App_Themes/Theme1/Images/DELETE.png" OnClientClick="javascript:Del_Confirm('HDel')" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Upd" Height="37px" ImageUrl="~/App_Themes/Theme1/Images/36.png" CommandArgument='<%# Eval("Sh_Bimar") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />

                        </asp:GridView>
                         </ContentTemplate>
                         </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="center" class="auto-style2">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource2" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated" Height="287px">
                        <EditItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_wbc" runat="server" Text='<%# Bind("WBC") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text="WBC"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_hb" runat="server" Text='<%# Bind("HB") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="HB"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_cr" runat="server" Text='<%# Bind("CR") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text="CR"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_plt" runat="server" Text='<%# Bind("PLT") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="PLT"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_analysisdate" runat="server" Text='<%# Bind("AnalysisDate_SH") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="تاریخ آنالیز"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_lft" runat="server" Text='<%# Bind("LFT") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="LFT"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton4" runat="server" CommandName="update" Height="37px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:HiddenField ID="HShBimar" runat="server" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            &nbsp;<table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_hb0" runat="server" Text='<%# Bind("HB") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="HB"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_shbimar" runat="server" Text='<%# Bind("Sh_Bimar") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="شماره پرونده"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_plt0" runat="server" Text='<%# Bind("PLT") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" Text="PLT"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_wbc0" runat="server" Text='<%# Bind("WBC") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="WBC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_lft0" runat="server" Text='<%# Bind("LFT") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="LFT"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_cr0" runat="server" Text='<%# Bind("CR") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="CR"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_analysisdate0" runat="server" Text='<%# Bind("Analysis_Date") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="تاریخ آنالیز"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="insert" Height="38px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Sh_Bimar:
                            <asp:Label ID="Sh_BimarLabel" runat="server" Text='<%# Eval("Sh_Bimar") %>' />
                            <br />
                            HB:
                            <asp:Label ID="HBLabel" runat="server" Text='<%# Bind("HB") %>' />
                            <br />
                            WBC:
                            <asp:Label ID="WBCLabel" runat="server" Text='<%# Bind("WBC") %>' />
                            <br />
                            PLT:
                            <asp:Label ID="PLTLabel" runat="server" Text='<%# Bind("PLT") %>' />
                            <br />
                            CR:
                            <asp:Label ID="CRLabel" runat="server" Text='<%# Bind("CR") %>' />
                            <br />
                            LFT:
                            <asp:Label ID="LFTLabel" runat="server" Text='<%# Bind("LFT") %>' />
                            <br />
                            Analysis_Date:
                            <asp:Label ID="Analysis_DateLabel" runat="server" Text='<%# Bind("Analysis_Date") %>' />
                            <br />
                            AnalysisDate_SH:
                            <asp:Label ID="AnalysisDate_SHLabel" runat="server" Text='<%# Bind("AnalysisDate_SH") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                        </asp:FormView>
                        </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="center" dir="rtl">
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                     <ContentTemplate>                    
                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView2_RowDeleting" OnRowCommand="GridView2_RowCommand" AllowPaging="True" PageSize="3">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Sh_Bimar" HeaderText="Sh_Bimar" ReadOnly="True" SortExpression="Sh_Bimar" />
                            <asp:BoundField DataField="US" HeaderText="US" SortExpression="US" />
                            <asp:BoundField DataField="CT" HeaderText="CT" SortExpression="CT" />
                            <asp:BoundField DataField="ImgDate_SH" HeaderText="ImgDate_SH" SortExpression="ImgDate_SH" />
                            <asp:BoundField DataField="Tozihat" HeaderText="Tozihat" SortExpression="Tozihat" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton6" runat="server" CommandName="delete" Height="35px" ImageUrl="~/App_Themes/Theme1/Images/DELETE.png" OnClientClick="javascript:Del_Confirm('HDel');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton7" runat="server" CommandName="Upd" Height="36px" ImageUrl="~/App_Themes/Theme1/Images/36.png" CommandArgument='<%# Eval("Sh_Bimar") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                         </ContentTemplate>
                        </asp:UpdatePanel>
                   
                    
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                   
                            <asp:FormView ID="FormView2" runat="server" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource4" DefaultMode="Insert" OnItemInserted="FormView2_ItemInserted" OnItemUpdated="FormView2_ItemUpdated">
                        <EditItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_ct" runat="server" Text='<%# Bind("CT") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text="CT"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_us" runat="server" Text='<%# Bind("US") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Text="US"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_tozihat" runat="server" Text='<%# Bind("Tozihat") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Text="Tozihat"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_imgdate" runat="server" Text='<%# Bind("ImgDate_SH") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="Img_Date"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton8" runat="server" CommandName="update" Height="42px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_us" runat="server" Text='<%# Bind("US") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text="US"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_shbimar" runat="server" Text='<%# Bind("Sh_Bimar") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text="شماره پرونده"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_imgdate" runat="server" Text='<%# Bind("Img_Date") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Text="Img_date"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_ct" runat="server" Text='<%# Bind("CT") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text="CT"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_tozihat" runat="server" Text='<%# Bind("Tozihat") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Text="Tozihat"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton5" runat="server" CommandName="insert" Height="39px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Sh_Bimar:
                            <asp:Label ID="Sh_BimarLabel" runat="server" Text='<%# Eval("Sh_Bimar") %>' />
                            <br />
                            US:
                            <asp:Label ID="USLabel" runat="server" Text='<%# Bind("US") %>' />
                            <br />
                            CT:
                            <asp:Label ID="CTLabel" runat="server" Text='<%# Bind("CT") %>' />
                            <br />
                            Img_Date:
                            <asp:Label ID="Img_DateLabel" runat="server" Text='<%# Bind("Img_Date") %>' />
                            <br />
                            Tozihat:
                            <asp:Label ID="TozihatLabel" runat="server" Text='<%# Bind("Tozihat") %>' />
                            <br />
                            ImgDate_SH:
                            <asp:Label ID="ImgDate_SHLabel" runat="server" Text='<%# Bind("ImgDate_SH") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                            </ContentTemplate>
                        </asp:UpdatePanel>

                    
                </td>
            </tr>
            <tr>
                <td align="center" dir="rtl">
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                        <ContentTemplate>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource5" ForeColor="Black" GridLines="Vertical" OnRowCommand="GridView3_RowCommand" OnRowDeleting="GridView3_RowDeleting">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Sh_Bimar" HeaderText="Sh_Bimar" ReadOnly="True" SortExpression="Sh_Bimar" />
                            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                            <asp:BoundField DataField="T" HeaderText="T" SortExpression="T" />
                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                            <asp:BoundField DataField="N" HeaderText="N" SortExpression="N" />
                            <asp:BoundField DataField="Stage" HeaderText="Stage" SortExpression="Stage" />
                            <asp:BoundField DataField="Nemone_Place" HeaderText="Nemone_Place" SortExpression="Nemone_Place" />
                            <asp:BoundField DataField="PathalogyDate_SH" HeaderText="PathalogyDate_SH" SortExpression="PathalogyDate_SH" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton10" runat="server" CommandName="delete" Height="39px" ImageUrl="~/App_Themes/Theme1/Images/DELETE.png" OnClientClick="javascript:Del_Confirm('HDel');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton11" runat="server" CommandName="Upd" Height="37px" ImageUrl="~/App_Themes/Theme1/Images/36.png" CommandArgument='<%# Eval("Sh_Bimar") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                        <ContentTemplate>
                    <asp:FormView ID="FormView3" runat="server" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource6" DefaultMode="Insert" OnItemInserted="FormView3_ItemInserted" OnItemUpdated="FormView3_ItemUpdated">
                        <EditItemTemplate>
                            &nbsp;<table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("M") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label33" runat="server" Text="M"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("T") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label32" runat="server" Text="T"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label31" runat="server" Text="Type"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Nemone_Place") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label36" runat="server" Text="محل نمونه برداری"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Stage") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label35" runat="server" Text="Stage"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("N") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label34" runat="server" Text="N"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PathalogyDate_SH") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label37" runat="server" Text="Pathalogy_Date"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton12" runat="server" CommandName="Update" Height="39px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="txt_t" runat="server" Text='<%# Bind("T") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label25" runat="server" Text="T"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_type" runat="server" Text='<%# Bind("Type") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label24" runat="server" Text="Type"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_shbimar" runat="server" Text='<%# Bind("Sh_Bimar") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label23" runat="server" Text="شماره پرونده"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">
                                        <asp:TextBox ID="txt_stage" runat="server" Text='<%# Bind("Stage") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label28" runat="server" Text="Stage"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_n" runat="server" Text='<%# Bind("N") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label27" runat="server" Text="N"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_m" runat="server" Text='<%# Bind("M") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label26" runat="server" Text="M"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_ndate" runat="server" Text='<%# Bind("Pathalogy_Date") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label30" runat="server" Text="تاریخ نمونه"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_nplace" runat="server" Text='<%# Bind("Nemone_Place") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label29" runat="server" Text="محل نمونه برداری"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton9" runat="server" CommandName="insert" Height="38px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Sh_Bimar:
                            <asp:Label ID="Sh_BimarLabel" runat="server" Text='<%# Eval("Sh_Bimar") %>' />
                            <br />
                            Type:
                            <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
                            <br />
                            T:
                            <asp:Label ID="TLabel" runat="server" Text='<%# Bind("T") %>' />
                            <br />
                            M:
                            <asp:Label ID="MLabel" runat="server" Text='<%# Bind("M") %>' />
                            <br />
                            N:
                            <asp:Label ID="NLabel" runat="server" Text='<%# Bind("N") %>' />
                            <br />
                            Stage:
                            <asp:Label ID="StageLabel" runat="server" Text='<%# Bind("Stage") %>' />
                            <br />
                            Nemone_Place:
                            <asp:Label ID="Nemone_PlaceLabel" runat="server" Text='<%# Bind("Nemone_Place") %>' />
                            <br />
                            Pathalogy_Date:
                            <asp:Label ID="Pathalogy_DateLabel" runat="server" Text='<%# Bind("Pathalogy_Date") %>' />
                            <br />
                            PathalogyDate_SH:
                            <asp:Label ID="PathalogyDate_SHLabel" runat="server" Text='<%# Bind("PathalogyDate_SH") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:HiddenField ID="HDel" runat="server" />
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_ByShBimar" TypeName="BLLAnalysis" UpdateMethod="Update_Record">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                            <asp:Parameter Name="HB" Type="String" />
                            <asp:Parameter Name="WBC" Type="String" />
                            <asp:Parameter Name="PLT" Type="String" />
                            <asp:Parameter Name="CR" Type="String" />
                            <asp:Parameter Name="LFT" Type="String" />
                            <asp:Parameter Name="Analysis_Date" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="HEdit" Name="sh_bimar" PropertyName="Value" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="hb" Type="String" />
                            <asp:Parameter Name="wbc" Type="String" />
                            <asp:Parameter Name="plt" Type="String" />
                            <asp:Parameter Name="cr" Type="String" />
                            <asp:Parameter Name="lft" Type="String" />
                            <asp:Parameter Name="AnalysisDate_SH" Type="String" />
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_Record" TypeName="BLLAnalysis" UpdateMethod="Update_Record">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                            <asp:Parameter Name="HB" Type="String" />
                            <asp:Parameter Name="WBC" Type="String" />
                            <asp:Parameter Name="PLT" Type="String" />
                            <asp:Parameter Name="CR" Type="String" />
                            <asp:Parameter Name="LFT" Type="String" />
                            <asp:Parameter Name="Analysis_Date" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="hb" Type="String" />
                            <asp:Parameter Name="wbc" Type="String" />
                            <asp:Parameter Name="plt" Type="String" />
                            <asp:Parameter Name="cr" Type="String" />
                            <asp:Parameter Name="lft" Type="String" />
                            <asp:Parameter Name="AnalysisDate_SH" Type="String" />
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_ByShBimar" TypeName="BLLPathalogy" UpdateMethod="Update_Record">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="T" Type="String" />
                            <asp:Parameter Name="M" Type="String" />
                            <asp:Parameter Name="N" Type="String" />
                            <asp:Parameter Name="Stage" Type="String" />
                            <asp:Parameter Name="Nemone_Place" Type="String" />
                            <asp:Parameter Name="pathalogy_Date" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="HEdit" Name="sh_bimar" PropertyName="Value" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="type" Type="String" />
                            <asp:Parameter Name="t" Type="String" />
                            <asp:Parameter Name="m" Type="String" />
                            <asp:Parameter Name="n" Type="String" />
                            <asp:Parameter Name="stage" Type="String" />
                            <asp:Parameter Name="nemone_place" Type="String" />
                            <asp:Parameter Name="PathalogyDate_SH" Type="String" />
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_ByShBimar" TypeName="BLLImaging" UpdateMethod="Update_Record">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                            <asp:Parameter Name="US" Type="String" />
                            <asp:Parameter Name="CT" Type="String" />
                            <asp:Parameter Name="Img_Date" Type="String" />
                            <asp:Parameter Name="Tozihat" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="HEdit" Name="sh_Bimar" PropertyName="Value" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="us" Type="String" />
                            <asp:Parameter Name="ct" Type="String" />
                            <asp:Parameter Name="ImgDate_SH" Type="String" />
                            <asp:Parameter Name="tozihat" Type="String" />
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_Record" TypeName="BLLImaging" UpdateMethod="Update_Record">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                            <asp:Parameter Name="US" Type="String" />
                            <asp:Parameter Name="CT" Type="String" />
                            <asp:Parameter Name="Img_Date" Type="String" />
                            <asp:Parameter Name="Tozihat" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="us" Type="String" />
                            <asp:Parameter Name="ct" Type="String" />
                            <asp:Parameter Name="ImgDate_SH" Type="String" />
                            <asp:Parameter Name="tozihat" Type="String" />
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:HiddenField ID="HEdit" runat="server" />
                    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_Record" TypeName="BLLPathalogy" UpdateMethod="Update_Record">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                            <asp:Parameter Name="Type" Type="String" />
                            <asp:Parameter Name="T" Type="String" />
                            <asp:Parameter Name="M" Type="String" />
                            <asp:Parameter Name="N" Type="String" />
                            <asp:Parameter Name="Stage" Type="String" />
                            <asp:Parameter Name="Nemone_Place" Type="String" />
                            <asp:Parameter Name="pathalogy_Date" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="type" Type="String" />
                            <asp:Parameter Name="t" Type="String" />
                            <asp:Parameter Name="m" Type="String" />
                            <asp:Parameter Name="n" Type="String" />
                            <asp:Parameter Name="stage" Type="String" />
                            <asp:Parameter Name="nemone_place" Type="String" />
                            <asp:Parameter Name="PathalogyDate_SH" Type="String" />
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
