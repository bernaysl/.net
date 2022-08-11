﻿<%@ Page Language="C#" AutoEventWireup="true" Codefile="frm_WageDataEntry.aspx.cs" Inherits="WebApplication1.frm_WageDataEntry" %>

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
            width: 187px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <h1><strong>Personel Maaş Veri Giriş Formu</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Personel Adı</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Empl_Name" DataValueField="Empl_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Tarih</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Maaş Tutarı</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Maaş Komisyonu</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Maaş Ayı </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Month" DataValueField="LK_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Veriyi Kaydet" />
                    </td>
                    <td>
                    <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Empl_ID], [Empl_Name] FROM [tbl_Employees]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_ID], [Month] FROM [tbl_Lookups]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT * FROM [tbl_EmployeeWages]" InsertCommand="INSERT INTO tbl_EmployeeWages(Empl_ID, Wage_Paid_Date, Wage_Amount, Wage_Commission, Month_ID) VALUES (@Empl_ID, @Wage_Paid_Date, @Wage_Amount, @Wage_Commission, @Month_ID)">
                            <InsertParameters>
                                <asp:Parameter Name="Empl_ID" />
                                <asp:Parameter Name="Wage_Paid_Date" />
                                <asp:Parameter Name="Wage_Amount" />
                                <asp:Parameter Name="Wage_Commission" />
                                <asp:Parameter Name="Month_ID" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
