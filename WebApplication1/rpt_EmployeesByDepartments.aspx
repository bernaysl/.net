<%@ Page Language="C#" AutoEventWireup="true" Codefile="rpt_EmployeesByDepartments.aspx.cs" Inherits="WebApplication1.EmployeesByDepartments" %>

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
        .auto-style3 {
            width: 723px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <h1 class="auto-style2">Bölümlere Göre Personeller Listesi&nbsp;</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Empl_ID">
                        <Columns>
                            <asp:BoundField DataField="Empl_ID" HeaderText="Empl_ID" SortExpression="Empl_ID" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="Empl_Name" HeaderText="Empl_Name" SortExpression="Empl_Name" ReadOnly="True" />
                            <asp:BoundField DataField="Empl_Start_Date_" HeaderText="Empl_Start_Date_" SortExpression="Empl_Start_Date_" />
                            <asp:BoundField DataField="Empl_City_" HeaderText="Empl_City_" SortExpression="Empl_City_" />
                            <asp:BoundField DataField="Empl_Province_" HeaderText="Empl_Province_" SortExpression="Empl_Province_" />
                            <asp:BoundField DataField="Empl_Phone_" HeaderText="Empl_Phone_" SortExpression="Empl_Phone_" />
                            <asp:BoundField DataField="Empl_Cell_" HeaderText="Empl_Cell_" SortExpression="Empl_Cell_" />
                            <asp:BoundField DataField="Title_ID_" HeaderText="Title_ID_" SortExpression="Title_ID_" />
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" SortExpression="Dept_ID" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name], [Empl_Start_Date ] AS Empl_Start_Date_, [Empl_City ] AS Empl_City_, [Empl_Province ] AS Empl_Province_, [Empl_Phone ] AS Empl_Phone_, [Empl_Cell ] AS Empl_Cell_, [Title_ID ] AS Title_ID_, [Dept_ID] FROM [tbl_Employees] WHERE Dept_ID=@Dept_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
