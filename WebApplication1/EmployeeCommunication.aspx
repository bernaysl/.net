<%@ Page Language="C#" AutoEventWireup="true" Codefile="EmployeeCommunication.aspx.cs" Inherits="WebApplication1.EmployeeCommunication" %>

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
            width: 409px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <h1 class="auto-style2">Personel İletişim Bilgileri</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                        <HeaderTemplate>
                            <tr style ="background-color:lavender;">
                            <td style="width:50px">ID</td>
                            <td style="width:250px">İsim</td>
                            
                            </tr>
                            <tr></tr>
                            <tr></tr>
                            </HeaderTemplate>
                        <ItemTemplate>
                        <tr style ="background-color:aquamarine;">
                        <td><%# Eval("Empl_ID") %></td>
                        <td><%# Eval("Empl_Name") %></td>

                        
                         </tr>
                         </ItemTemplate>

                        <AlternatingItemTemplate>
                        <tr style ="background-color:bisque">
                        <td><%# Eval("Empl_ID") %></td>
                        <td><%# Eval("Empl_Name") %></td>

                        
                         </tr>
                         </AlternatingItemTemplate>

                    </asp:Repeater>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Bölüm Seçiniz:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name], [Empl_Phone ], [Empl_Cell ], [Empl_Email] FROM [tbl_Employees] WHERE [Dept_ID]=@Dept_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="Dept_ID" PropertyName="SelectedValue" DefaultValue="1" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
            <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="sayfayı kapat" />
        </div>
    </form>
</body>
</html>
