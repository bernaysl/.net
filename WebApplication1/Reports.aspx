<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Reports.aspx.cs" Inherits="WebApplication1.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="3" style="height: 20px">
                <h1 class="text-center">PMTP Reports</h1>
            </td>
        </tr>
        <tr>
            <td style="width: 332px">
                <asp:Button ID="Button1" runat="server" Text="Bölümlere Göre Personel Raporu" Width="401px" PostBackUrl="~/rpt_EmployeesByDepartments.aspx" OnClientClick="target='_blank'" />
            </td>
            <td style="width: 232px">&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Personele Göre Maaşlar Lstesi" Width="406px" OnClientClick="target='_blank'" PostBackUrl="~/rpt_WagesByEmployee.aspx" />
            </td>
        </tr>
        <tr>
            <td style="width: 332px; height: 26px;">
                <asp:Button ID="Button6" runat="server" OnClientClick="target='_blank'" PostBackUrl="~/WagesSummary.aspx" Text="Personel Maaş Grafiği" Width="399px" />
            </td>
            <td style="width: 232px; height: 26px;"></td>
            <td style="height: 26px">
                <asp:Button ID="Button5" runat="server" Text="Personel İletişim Raporu" Width="406px" PostBackUrl="~/EmployeeCommunication.aspx" OnClientClick="target='_blank'" />
            </td>
        </tr>
        <tr>
            <td style="width: 332px">
                &nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 332px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 332px">&nbsp;</td>
            <td style="width: 232px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
