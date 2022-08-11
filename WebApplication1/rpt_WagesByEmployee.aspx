<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_WagesByEmployee.aspx.cs" Inherits="WebApplication1.WagesByEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <h1 class="auto-style2">Personele Göre Maaşlar Listesi</h1>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Wage_ID">
                        <Columns>
                            <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" SortExpression="Empl_ID" />
                            <asp:BoundField DataField="Wage_Paid_Date" HeaderText="Wage_Paid_Date" SortExpression="Wage_Paid_Date" />
                            <asp:BoundField DataField="Wage_Amount" HeaderText="Wage_Amount" SortExpression="Wage_Amount" />
                            <asp:BoundField DataField="Wage_Commission" HeaderText="Wage_Commission" SortExpression="Wage_Commission" />
                            <asp:BoundField DataField="Wage_Total" HeaderText="Wage_Total" SortExpression="Wage_Total" ReadOnly="True" />
                            <asp:BoundField DataField="Month" HeaderText="Month" SortExpression="Month" />
                            <asp:BoundField DataField="Wage_ID" HeaderText="Wage_ID" InsertVisible="False" ReadOnly="True" SortExpression="Wage_ID" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT Empl_ID, Empl_Name FROM tbl_Employees"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT tbl_EmployeeWages.Empl_ID, tbl_EmployeeWages.Wage_Paid_Date, tbl_EmployeeWages.Wage_Amount, tbl_EmployeeWages.Wage_Commission, tbl_EmployeeWages.Wage_Total, tbl_Lookups.Month, tbl_EmployeeWages.Wage_ID FROM tbl_EmployeeWages INNER JOIN tbl_Lookups ON tbl_EmployeeWages.Month_ID = tbl_Lookups.LK_ID WHERE Wage_ID=@Wage_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Wage_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
