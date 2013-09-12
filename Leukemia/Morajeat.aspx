<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Morajeat.aspx.cs" Inherits="Morajeat" %>

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
            width: 5px;
        }
    </style>
    <script src="Scripts/JavaScript.js"></script>
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
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="center" dir="rtl">
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                        <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Sh_Bimar" HeaderText="Sh_Bimar" ReadOnly="True" SortExpression="Sh_Bimar" />
                            <asp:BoundField DataField="Bime" HeaderText="Bime" SortExpression="Bime" />
                            <asp:BoundField DataField="Hazine" HeaderText="Hazine" SortExpression="Hazine" />
                            <asp:BoundField DataField="Sh_Nobat" HeaderText="Sh_Nobat" SortExpression="Sh_Nobat" />
                            <asp:BoundField DataField="Vazn" HeaderText="Vazn" SortExpression="Vazn" />
                            <asp:BoundField DataField="NextMorajee_SH" HeaderText="NextMorajee_SH" SortExpression="NextMorajee_SH" />
                            <asp:BoundField DataField="MorajeeDate_SH" HeaderText="MorajeeDate_SH" SortExpression="MorajeeDate_SH" />
                            <asp:BoundField DataField="Tozihat" HeaderText="Tozihat" SortExpression="Tozihat" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton2" runat="server" CommandName="delete" Height="33px" ImageUrl="~/App_Themes/Theme1/Images/DELETE.png" OnClientClick="javascript:Del_Confirm('HDel');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Upd" Height="38px" ImageUrl="~/App_Themes/Theme1/Images/36.png" CommandArgument='<%# Eval("Sh_Bimar") %>' />
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
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource2" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
                        <EditItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_shnobat" runat="server" Text='<%# Bind("Sh_Nobat") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text="شماره نوبت"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_hazine" runat="server" Text='<%# Bind("Hazine") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="هزینه"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_bime" runat="server" Text='<%# Bind("Bime") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="بیمه"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_mdate" runat="server" Text='<%# Bind("MorajeeDate_SH") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text="تاریخ مراجعه"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_ndate" runat="server" Text='<%# Bind("NextMorajee_SH") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text="مراجعه بعدی"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_vazn" runat="server" Text='<%# Bind("Vazn") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text="وزن"></asp:Label>
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
                                        <asp:TextBox ID="txt_tozihat" runat="server" Text='<%# Bind("Tozihat") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="توضیحات"></asp:Label>
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
                                        <asp:ImageButton ID="ImageButton4" runat="server" CommandName="update" Height="41px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" OnClick="ImageButton4_Click" />
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
                                    <td class="auto-style2">&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_hazine" runat="server" Text='<%# Bind("Hazine") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="هزینه"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_bime" runat="server" Text='<%# Bind("Bime") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="بیمه"></asp:Label>
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
                                    <td class="auto-style2">&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_ndate" runat="server" Text='<%# Bind("Next_Morajee") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="مراجعه بعدی"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_vazn" runat="server" Text='<%# Bind("Vazn") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="وزن"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_shnobat" runat="server" Text='<%# Bind("Sh_Nobat") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="شماره نوبت"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_tozihat" runat="server" Text='<%# Bind("Tozihat") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="توضیحات"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_mdate" runat="server" Text='<%# Bind("Morajee_Date") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="تاریخ مراجعه"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">&nbsp;</td>
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
                                    <td class="auto-style2">&nbsp;</td>
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
                                    <td class="auto-style2">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="insert" Height="39px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">&nbsp;</td>
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
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Sh_Bimar:
                            <asp:Label ID="Sh_BimarLabel" runat="server" Text='<%# Eval("Sh_Bimar") %>' />
                            <br />
                            Bime:
                            <asp:Label ID="BimeLabel" runat="server" Text='<%# Bind("Bime") %>' />
                            <br />
                            Hazine:
                            <asp:Label ID="HazineLabel" runat="server" Text='<%# Bind("Hazine") %>' />
                            <br />
                            Sh_Nobat:
                            <asp:Label ID="Sh_NobatLabel" runat="server" Text='<%# Bind("Sh_Nobat") %>' />
                            <br />
                            Vazn:
                            <asp:Label ID="VaznLabel" runat="server" Text='<%# Bind("Vazn") %>' />
                            <br />
                            Next_Morajee:
                            <asp:Label ID="Next_MorajeeLabel" runat="server" Text='<%# Bind("Next_Morajee") %>' />
                            <br />
                            Morajee_Date:
                            <asp:Label ID="Morajee_DateLabel" runat="server" Text='<%# Bind("Morajee_Date") %>' />
                            <br />
                            Tozihat:
                            <asp:Label ID="TozihatLabel" runat="server" Text='<%# Bind("Tozihat") %>' />
                            <br />
                            NextMorajee_SH:
                            <asp:Label ID="NextMorajee_SHLabel" runat="server" Text='<%# Bind("NextMorajee_SH") %>' />
                            <br />
                            MorajeeDate_SH:
                            <asp:Label ID="MorajeeDate_SHLabel" runat="server" Text='<%# Bind("MorajeeDate_SH") %>' />
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
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView2_RowDeleting" OnRowCommand="GridView2_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Sh_Bimar" HeaderText="Sh_Bimar" ReadOnly="True" SortExpression="Sh_Bimar" />
                            <asp:BoundField DataField="Pezeshk_Number" HeaderText="Pezeshk_Number" SortExpression="Pezeshk_Number" />
                            <asp:BoundField DataField="HozorDate_SH" HeaderText="HozorDate_SH" SortExpression="HozorDate_SH" />
                            <asp:BoundField DataField="Tozihat" HeaderText="Tozihat" SortExpression="Tozihat" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton7" runat="server" CommandName="delete" Height="35px" ImageUrl="~/App_Themes/Theme1/Images/DELETE.png" OnClientClick="javascript:Del_Confirm('HDel');" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton8" runat="server" CommandName="Upd" Height="38px" ImageUrl="~/App_Themes/Theme1/Images/36.png" CommandArgument='<%# Eval("Sh_Bimar") %>' />
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
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource4" DefaultMode="Insert" OnItemInserted="FormView2_ItemInserted" OnItemUpdated="FormView2_ItemUpdated">
                        <EditItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Tozihat") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Text="توضیحات"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("HozorDate_SH") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="تاریخ حضور"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Pezeshk_Number") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text="شماره نظام پزشکی"></asp:Label>
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
                                        <asp:ImageButton ID="ImageButton6" runat="server" CommandName="update" Height="35px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
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
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Pezeshk_Number") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Text="شماره نظام پزشکی"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Sh_Bimar") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text="شماره پرونده"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Tozihat") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Text="توضیحات"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Hozor_Date") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Text="تاریخ حضور"></asp:Label>
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
                                        <asp:ImageButton ID="ImageButton5" runat="server" CommandName="insert" Height="40px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
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
                            Pezeshk_Number:
                            <asp:Label ID="Pezeshk_NumberLabel" runat="server" Text='<%# Bind("Pezeshk_Number") %>' />
                            <br />
                            Hozor_Date:
                            <asp:Label ID="Hozor_DateLabel" runat="server" Text='<%# Bind("Hozor_Date") %>' />
                            <br />
                            Tozihat:
                            <asp:Label ID="TozihatLabel" runat="server" Text='<%# Bind("Tozihat") %>' />
                            <br />
                            HozorDate_SH:
                            <asp:Label ID="HozorDate_SHLabel" runat="server" Text='<%# Bind("HozorDate_SH") %>' />
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
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_ByShBimar" TypeName="BLLMorajeat" UpdateMethod="Update_Record">
            <DeleteParameters>
                <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                <asp:Parameter Name="Bime" Type="String" />
                <asp:Parameter Name="Hazine" Type="Int32" />
                <asp:Parameter Name="Sh_Nobat" Type="Int32" />
                <asp:Parameter Name="Vazn" Type="Int32" />
                <asp:Parameter Name="Next_Morajee" Type="String" />
                <asp:Parameter Name="Morajee_Date" Type="String" />
                <asp:Parameter Name="Tozihat" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="HEdit" Name="sh_bimar" PropertyName="Value" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="bime" Type="String" />
                <asp:Parameter Name="hazine" Type="Int32" />
                <asp:Parameter Name="sh_nobat" Type="Int32" />
                <asp:Parameter Name="vazn" Type="Int32" />
                <asp:Parameter Name="NextMorajee_SH" Type="String" />
                <asp:Parameter Name="MorajeeDate_SH" Type="String" />
                <asp:Parameter Name="tozihat" Type="String" />
                <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:HiddenField ID="HDel" runat="server" />
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_Record" TypeName="BLLMorajeat" UpdateMethod="Update_Record">
            <DeleteParameters>
                <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                <asp:Parameter Name="Bime" Type="String" />
                <asp:Parameter Name="Hazine" Type="Int32" />
                <asp:Parameter Name="Sh_Nobat" Type="Int32" />
                <asp:Parameter Name="Vazn" Type="Int32" />
                <asp:Parameter Name="Next_Morajee" Type="String" />
                <asp:Parameter Name="Morajee_Date" Type="String" />
                <asp:Parameter Name="Tozihat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="bime" Type="String" />
                <asp:Parameter Name="hazine" Type="Int32" />
                <asp:Parameter Name="sh_nobat" Type="Int32" />
                <asp:Parameter Name="vazn" Type="Int32" />
                <asp:Parameter Name="NextMorajee_SH" Type="String" />
                <asp:Parameter Name="MorajeeDate_SH" Type="String" />
                <asp:Parameter Name="tozihat" Type="String" />
                <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_ByShBimar" TypeName="BLLNobatDehi" UpdateMethod="Update_Record">
            <DeleteParameters>
                <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                <asp:Parameter Name="Pezeshk_Number" Type="Int32" />
                <asp:Parameter Name="Hozor_Date" Type="String" />
                <asp:Parameter Name="Tozihat" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="HEdit" Name="sh_bimar" PropertyName="Value" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pezeshk_Number" Type="Int32" />
                <asp:Parameter Name="HozorDate_SH" Type="String" />
                <asp:Parameter Name="Tozihat" Type="String" />
                <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_Record" TypeName="BLLNobatDehi" UpdateMethod="Update_Record">
            <DeleteParameters>
                <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                <asp:Parameter Name="Pezeshk_Number" Type="Int32" />
                <asp:Parameter Name="Hozor_Date" Type="String" />
                <asp:Parameter Name="Tozihat" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Pezeshk_Number" Type="Int32" />
                <asp:Parameter Name="HozorDate_SH" Type="String" />
                <asp:Parameter Name="Tozihat" Type="String" />
                <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:HiddenField ID="HEdit" runat="server" />
    </form>
</body>
</html>
