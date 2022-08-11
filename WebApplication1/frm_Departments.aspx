<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Departments.aspx.cs" Inherits="WebApplication1.frm_Departments" %>

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
        .auto-style6 {
            width: 287px;
        }
        .auto-style7 {
            width: 75%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <h1>Bölüm Veri Girişi ve Güncelleme</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Personel Adı:</td>
                <td class="auto-style7">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Dept_ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="297px">
                        <AlternatingRowStyle BackColor="White" />
                        <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                        <Fields>
                            <asp:BoundField DataField="Dept_ID" HeaderText="Dept_ID" InsertVisible="False" ReadOnly="True" SortExpression="Dept_ID" />
                            <asp:BoundField DataField="Dept_Name" HeaderText="Dept_Name" SortExpression="Dept_Name" />
                            <asp:BoundField DataField="Dept_Phone" HeaderText="Dept_Phone" SortExpression="Dept_Phone" />
                            <asp:BoundField DataField="Manager_ID" HeaderText="Manager_ID" SortExpression="Manager_ID" />
                            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
                        </Fields>
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td class="auto-style7">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_Departments(Dept_Name,Dept_Phone,Manager_ID)
VALUES (@Dept_Name,@Dept_Phone,@Manager_ID)" SelectCommand="SELECT * FROM [tbl_Departments] WHERE Dept_ID=@Dept_ID" UpdateCommand="UPDATE tbl_Departments
SET Dept_Name=@Dept_Name, Dept_Phone=@Dept_Phone, Manager_ID=@Manager_ID
WHERE Dept_ID=@Dept_ID">
                        <InsertParameters>
                            <asp:Parameter Name="Dept_Name" />
                            <asp:Parameter Name="Dept_Phone" />
                            <asp:Parameter Name="Manager_ID" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Dept_Name" />
                            <asp:Parameter Name="Dept_Phone" />
                            <asp:Parameter Name="Manager_ID" />
                            <asp:Parameter Name="Dept_ID" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
