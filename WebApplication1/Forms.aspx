<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Forms.aspx.cs" Inherits="WebApplication1.Forms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="w-100">
        <tr>
            <td colspan="3">
                <h1 class="text-center">PMTP Formlar</h1>
            </td>
        </tr>
        <tr>
            <td style="width: 332px">
                <asp:Button ID="Button1" runat="server" Text="Personel Veri Girişi" Width="471px" OnClick="Button1_Click" OnClientClick="target='_blank'" PostBackUrl="~/frm_EmployeeDataEntry.aspx" />
            </td>
            <td style="width: 232px">&nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Maaş Veri Girişi" Width="406px" PostBackUrl="~/frm_WageDataEntry.aspx" OnClientClick="target='_blank'" />
            </td>
        </tr>
        <tr>
            <td style="width: 332px">
                <asp:Button ID="Button2" runat="server" Text="Personel Veri Güncelleme" OnClientClick="target='_blank'" PostBackUrl="~/EmployeeDataUpdate.aspx" Width="470px" />
            </td>
            <td style="width: 232px">&nbsp;</td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Maaş Veri Güncelleme" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/frm_WageUpdate.aspx" Width="406px" />
            </td>
        </tr>
        <tr>
            <td style="width: 332px">
                <asp:Button ID="Button3" runat="server" Text="Personel Wizard Veri Girişi" Width="469px" OnClientClick="target='_blank'" PostBackUrl="~/frm_EmployeeWizard.aspx" />
            </td>
            <td style="width: 232px">&nbsp;</td>
            <td>
                <asp:Button ID="Button6" runat="server" Text="Bölüm Veri Girişi" Width="405px" OnClientClick="target=&quot;_blank&quot;" PostBackUrl="~/frm_Departments.aspx" />
            </td>
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
