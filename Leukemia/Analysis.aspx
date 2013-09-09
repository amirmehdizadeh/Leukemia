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
    </style>
    <script src="Scripts/JavaScript.js"></script>
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
                <td dir="rtl" align="center">
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
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource2" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
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
                                        <asp:TextBox ID="txt_hb" runat="server" Text='<%# Bind("HB") %>'></asp:TextBox>
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
                                        <asp:TextBox ID="txt_plt" runat="server" Text='<%# Bind("PLT") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label runat="server" Text="PLT"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_wbc" runat="server" Text='<%# Bind("WBC") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="WBC"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_lft" runat="server" Text='<%# Bind("LFT") %>'></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="LFT"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:TextBox ID="txt_cr" runat="server" Text='<%# Bind("CR") %>'></asp:TextBox>
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
                                        <asp:TextBox ID="txt_analysisdate" runat="server" Text='<%# Bind("Analysis_Date") %>'></asp:TextBox>
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
                    <asp:HiddenField ID="HEdit" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
