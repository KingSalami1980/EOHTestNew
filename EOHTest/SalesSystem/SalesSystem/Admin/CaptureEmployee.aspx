<%@ Page Title="Capture Employee" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CaptureEmployee.aspx.cs" Inherits="SalesSystem.CaptureEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HiddenField ID="hdfPrimaryKey" runat="server" />
    <asp:HiddenField ID="hdfCounter" runat="server" />
    <table style=" width: 100%;">
        <tr>
            <td align="right">
                <asp:Label ID="LabelRole" runat="server" Text="Role: "></asp:Label>
            </td>
            <td align="left">
                <asp:DropDownList ID="DropDownListRole" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="LabelEmployeeName" runat="server" Text="Employee Name: "></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBoxEmployeeName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="LabelEmployeeSurname" runat="server" Text="Employee Surname: "></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBoxEmployeeSurname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" 
                    onclick="ButtonCancel_Click" />
            </td>
            <td align="left">
                <asp:Button ID="ButtonInsert" runat="server" Text="Submit" 
                    onclick="ButtonInsert_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
