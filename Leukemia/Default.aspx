<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
            height: 32px;
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
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td aria-haspopup="False">&nbsp;</td>
            </tr>
            <tr>
                <td align="center" dir="rtl">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sh_Bimar" DataSourceID="ObjectDataSource1" ForeColor="Black" GridLines="Vertical" AllowPaging="True" PageSize="3" OnRowDeleting="GridView1_RowDeleting">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Sh_Bimar" HeaderText="Sh_Bimar" ReadOnly="True" SortExpression="Sh_Bimar" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Family" HeaderText="Family" SortExpression="Family" />
                            <asp:BoundField DataField="Ghad" HeaderText="Ghad" SortExpression="Ghad" />
                            <asp:BoundField DataField="Vazn" HeaderText="Vazn" SortExpression="Vazn" />
                            <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                            <asp:BoundField DataField="BirthDate_SH" HeaderText="BirthDate_SH" SortExpression="BirthDate_SH" />
                            <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                            <asp:BoundField DataField="Tashkhis" HeaderText="Tashkhis" SortExpression="Tashkhis" />
                            <asp:BoundField DataField="Barnam_Darmani" HeaderText="Barnam_Darmani" SortExpression="Barnam_Darmani" />
                            <asp:BoundField DataField="MorajeeDate_SH" HeaderText="MorajeeDate_SH" SortExpression="MorajeeDate_SH" />
                        </Columns>
                        <EmptyDataTemplate>
                            
                        </EmptyDataTemplate>
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
                <td align="center" dir="rtl">
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Radif" DataSourceID="ObjectDataSource1" DefaultMode="Insert">
                        <EditItemTemplate>
                            Radif:
                            <asp:Label ID="RadifLabel1" runat="server" Text='<%# Eval("Radif") %>' />
                            <br />
                            Sh_Bimar:
                            <asp:TextBox ID="Sh_BimarTextBox" runat="server" Text='<%# Bind("Sh_Bimar") %>' />
                            <br />
                            Name:
                            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Family:
                            <asp:TextBox ID="FamilyTextBox" runat="server" Text='<%# Bind("Family") %>' />
                            <br />
                            Birth_Date:
                            <asp:TextBox ID="Birth_DateTextBox" runat="server" Text='<%# Bind("Birth_Date") %>' />
                            <br />
                            Ghad:
                            <asp:TextBox ID="GhadTextBox" runat="server" Text='<%# Bind("Ghad") %>' />
                            <br />
                            Vazn:
                            <asp:TextBox ID="VaznTextBox" runat="server" Text='<%# Bind("Vazn") %>' />
                            <br />
                            Sex:
                            <asp:TextBox ID="SexTextBox" runat="server" Text='<%# Bind("Sex") %>' />
                            <br />
                            Phone_Number:
                            <asp:TextBox ID="Phone_NumberTextBox" runat="server" Text='<%# Bind("Phone_Number") %>' />
                            <br />
                            Tashkhis:
                            <asp:TextBox ID="TashkhisTextBox" runat="server" Text='<%# Bind("Tashkhis") %>' />
                            <br />
                            Barnam_Darmani:
                            <asp:TextBox ID="Barnam_DarmaniTextBox" runat="server" Text='<%# Bind("Barnam_Darmani") %>' />
                            <br />
                            morajee_Date:
                            <asp:TextBox ID="morajee_DateTextBox" runat="server" Text='<%# Bind("morajee_Date") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="شماره پرونده"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_shbimar" runat="server" Text='<%# Bind("Sh_Bimar") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label2" runat="server" Text="نام"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_name" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="نام خانوادگی"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_family" runat="server" Text='<%# Bind("Family") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label4" runat="server" Text="تاریخ تولد"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_birthdate" runat="server" Text='<%# Bind("Birth_Date") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" Text="قد"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_ghad" runat="server" Text='<%# Bind("Ghad") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="وزن"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_vazn" runat="server" Text='<%# Bind("Vazn") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label7" runat="server" Text="جنسیت"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txt_sex" runat="server" Text='<%# Bind("Sex") %>'></asp:TextBox>
                                    </td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label8" runat="server" Text="شماره تلفن"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txt_phonenumber" runat="server" Text='<%# Bind("Phone_Number") %>'></asp:TextBox>
                                    </td>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2">
                                        <asp:Label ID="Label9" runat="server" Text="تشخیص"></asp:Label>
                                    </td>
                                    <td class="auto-style2">
                                        <asp:TextBox ID="txt_tashkhis" runat="server" Text='<%# Bind("Tashkhis") %>'></asp:TextBox>
                                    </td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="برنامه درمانی"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_bdarmani" runat="server" Text='<%# Bind("Barnam_Darmani") %>'></asp:TextBox>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text="تاریخ مراجعه"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txt_mdate" runat="server" Text='<%# Bind("morajee_Date") %>'></asp:TextBox>
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
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" CommandName="insert" Height="43px" ImageUrl="~/App_Themes/Theme1/Images/ADD.png" />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Radif:
                            <asp:Label ID="RadifLabel" runat="server" Text='<%# Eval("Radif") %>' />
                            <br />
                            Sh_Bimar:
                            <asp:Label ID="Sh_BimarLabel" runat="server" Text='<%# Bind("Sh_Bimar") %>' />
                            <br />
                            Name:
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                            <br />
                            Family:
                            <asp:Label ID="FamilyLabel" runat="server" Text='<%# Bind("Family") %>' />
                            <br />
                            Birth_Date:
                            <asp:Label ID="Birth_DateLabel" runat="server" Text='<%# Bind("Birth_Date") %>' />
                            <br />
                            Ghad:
                            <asp:Label ID="GhadLabel" runat="server" Text='<%# Bind("Ghad") %>' />
                            <br />
                            Vazn:
                            <asp:Label ID="VaznLabel" runat="server" Text='<%# Bind("Vazn") %>' />
                            <br />
                            Sex:
                            <asp:Label ID="SexLabel" runat="server" Text='<%# Bind("Sex") %>' />
                            <br />
                            Phone_Number:
                            <asp:Label ID="Phone_NumberLabel" runat="server" Text='<%# Bind("Phone_Number") %>' />
                            <br />
                            Tashkhis:
                            <asp:Label ID="TashkhisLabel" runat="server" Text='<%# Bind("Tashkhis") %>' />
                            <br />
                            Barnam_Darmani:
                            <asp:Label ID="Barnam_DarmaniLabel" runat="server" Text='<%# Bind("Barnam_Darmani") %>' />
                            <br />
                            morajee_Date:
                            <asp:Label ID="morajee_DateLabel" runat="server" Text='<%# Bind("morajee_Date") %>' />
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
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete_Record" InsertMethod="Insert_Record" OldValuesParameterFormatString="original_{0}" SelectMethod="Select_Record" TypeName="BLLBimar" UpdateMethod="Update_Record">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Family" Type="String" />
                            <asp:Parameter Name="Birth_Date" Type="String" />
                            <asp:Parameter Name="Ghad" Type="Int32" />
                            <asp:Parameter Name="Vazn" Type="Int32" />
                            <asp:Parameter Name="Sex" Type="String" />
                            <asp:Parameter Name="Phone_Number" Type="String" />
                            <asp:Parameter Name="Tashkhis" Type="String" />
                            <asp:Parameter Name="Barnam_Darmani" Type="String" />
                            <asp:Parameter Name="morajee_Date" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Sh_Bimar" Type="Int32" />
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="family" Type="String" />
                            <asp:Parameter Name="birth_date" Type="String" />
                            <asp:Parameter Name="ghad" Type="Int32" />
                            <asp:Parameter Name="vazn" Type="Int32" />
                            <asp:Parameter Name="sex" Type="String" />
                            <asp:Parameter Name="phone_number" Type="String" />
                            <asp:Parameter Name="tashkhis" Type="String" />
                            <asp:Parameter Name="barnam_darmani" Type="String" />
                            <asp:Parameter Name="morajee_date" Type="String" />
                            <asp:Parameter Name="Original_Sh_Bimar" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:HiddenField ID="HDel" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
