<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_EmployeeDataEntry.aspx.cs" Inherits="WebApplication1.frm_EmployeeDataEntry" %>

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
            width: 576px;
            height: 35px;
        }
        .auto-style3 {
            width: 186px;
        }
        .auto-style4 {
            width: 169px;
        }
        .auto-style5 {
            width: 215px;
        }
        .auto-style10 {
            width: 186px;
            height: 33px;
        }
        .auto-style11 {
            width: 169px;
            height: 33px;
        }
        .auto-style12 {
            width: 215px;
            height: 33px;
        }
        .auto-style13 {
            height: 33px;
        }
        .auto-style14 {
            width: 186px;
            height: 30px;
        }
        .auto-style15 {
            width: 169px;
            height: 30px;
        }
        .auto-style16 {
            width: 215px;
            height: 30px;
        }
        .auto-style17 {
            height: 30px;
        }
        .auto-style18 {
            width: 186px;
            height: 49px;
        }
        .auto-style19 {
            height: 49px;
        }
        .auto-style20 {
            width: 186px;
            height: 17px;
        }
        .auto-style21 {
            width: 169px;
            height: 17px;
        }
        .auto-style22 {
            width: 215px;
            height: 17px;
        }
        .auto-style23 {
            height: 17px;
        }
        .auto-style24 {
            width: 186px;
            height: 23px;
        }
        .auto-style25 {
            width: 169px;
            height: 23px;
        }
        .auto-style26 {
            width: 215px;
            height: 23px;
        }
        .auto-style27 {
            height: 23px;
        }
        .auto-style28 {
            width: 186px;
            height: 20px;
        }
        .auto-style29 {
            width: 169px;
            height: 20px;
        }
        .auto-style30 {
            width: 215px;
            height: 20px;
        }
        .auto-style31 {
            height: 20px;
        }
        .auto-style32 {
            width: 186px;
            height: 24px;
        }
        .auto-style33 {
            width: 169px;
            height: 24px;
        }
        .auto-style34 {
            width: 215px;
            height: 24px;
        }
        .auto-style35 {
            height: 24px;
        }
        .auto-style36 {
            width: 186px;
            height: 22px;
        }
        .auto-style37 {
            width: 169px;
            height: 22px;
        }
        .auto-style38 {
            width: 215px;
            height: 22px;
        }
        .auto-style39 {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="4">
                    <h1 class="auto-style2">Personel Veri Giriş Formu</h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Personel Adı:</td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style22">Soyadı</td>
                <td class="auto-style23">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">Doğum tarihi:</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style26">İşe giriş tarihi</td>
                <td class="auto-style27">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">cinsiyet</td>
                <td class="auto-style29">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="22px" Width="97px">
                        <asp:ListItem Value="1">Erkek</asp:ListItem>
                        <asp:ListItem Value="2">Kadın</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style30">aktif mi</td>
                <td class="auto-style31">
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">bölümü</td>
                <td class="auto-style15">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_ID">
                    </asp:DropDownList>
                </td>
                <td class="auto-style16">ünvanı</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Title" DataValueField="LK_ID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">cep</td>
                <td class="auto-style33">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style34">e-mail</td>
                <td class="auto-style35">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style37"></td>
                <td class="auto-style38"></td>
                <td class="auto-style39"></td>
            </tr>
            <tr>
                <td class="auto-style18">adres</td>
                <td class="auto-style19" colspan="3">
                    <asp:TextBox ID="TextBox7" runat="server" Height="34px" Width="516px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">kenti</td>
                <td class="auto-style11">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="City" DataValueField="City">
                    </asp:DropDownList>
                </td>
                <td class="auto-style12">il</td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="Province" DataValueField="Province">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Dept_ID], [Dept_Name] FROM [tbl_Departments]"></asp:SqlDataSource>
                </td>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [LK_ID], [Title] FROM [tbl_Lookups]
WHERE Title is not null"></asp:SqlDataSource>
                </td>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [City] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" SelectCommand="SELECT [Province] FROM [tbl_Lookups]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_PMTP %>" InsertCommand="INSERT INTO tbl_Employees (Empl_FName, Empl_LName, Empl_BDate, Empl_Start_Date, Gender_ID, Is_Empl_Active, Dept_ID,Title_ID, Empl_Cell, Empl_Email, Empl_Address,Empl_City, Empl_Province)
VALUES (@Empl_FName, @Empl_LName, @Empl_BDate, @Empl_Start_Date, @Gender_ID, @Is_Empl_Active, @Dept_ID,@Title_ID, @Empl_Cell, @Empl_Email, @Empl_Address,@Empl_City,@Empl_Province)" SelectCommand="SELECT * FROM [tbl_Employees]">
                        <InsertParameters>
                            <asp:Parameter Name="Empl_FName" />
                            <asp:Parameter Name="Empl_LName" />
                            <asp:Parameter Name="Empl_BDate" />
                            <asp:Parameter Name="Empl_Start_Date" />
                            <asp:Parameter Name="Gender_ID" />
                            <asp:Parameter Name="Is_Empl_Active" />
                            <asp:Parameter Name="Dept_ID" />
                            <asp:Parameter Name="Title_ID" />
                            <asp:Parameter Name="Empl_Cell" />
                            <asp:Parameter Name="Empl_Email" />
                            <asp:Parameter Name="Empl_Address" />
                            <asp:Parameter Name="Empl_City" />
                            <asp:Parameter Name="Empl_Province" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="kaydet" OnClick="Button1_Click1" />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" ForeColor="Maroon" Text="Label" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="formu kapat" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
