<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rpt_EmployeeComs.aspx.cs" Inherits="WebApplication1.rpt_EmployeeComs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 160px;
        }
        .auto-style2 {
            width: 373px;
        }
        .auto-style3 {
            width: 373px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            width: 373px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <h1 class="auto-style7">Bölümlere Göre Personel Raporu</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Bölüm Seçiniz: </td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Empl_Name" DataValueField="Empl_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Empl_ID, Empl_Name, [Empl_Start_Date ] AS Empl_Start_Date_, [Empl_City ] AS Empl_City_, [Empl_Province ] AS Empl_Province_, [Empl_Phone ] AS Empl_Phone_, [Empl_Cell ] AS Empl_Cell_, [Title_ID ] AS Title_ID_, Dept_ID FROM tbl_Employees WHERE (Dept_ID = @Dept_ID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Empl_ID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" ReadOnly="True" SortExpression="Empl_ID" />
                                <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" SortExpression="Empl_Name" ReadOnly="True" />
                                <asp:BoundField DataField="Empl_Start_Date_" HeaderText="Empl_Start_Date_" SortExpression="Empl_Start_Date_" />
                                <asp:BoundField DataField="Empl_City_" HeaderText="Empl_City_" SortExpression="Empl_City_" />
                                <asp:BoundField DataField="Empl_Province_" HeaderText="Empl_Province_" SortExpression="Empl_Province_" />
                                <asp:BoundField DataField="Empl_Phone_" HeaderText="Empl_Phone_" SortExpression="Empl_Phone_" />
                                <asp:BoundField DataField="Empl_Cell_" HeaderText="Empl_Cell_" SortExpression="Empl_Cell_" />
                                <asp:BoundField DataField="Title_ID_" HeaderText="Title_ID_" SortExpression="Title_ID_" />
                                <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
