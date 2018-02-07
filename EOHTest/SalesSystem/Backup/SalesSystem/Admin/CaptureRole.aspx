<%@ Page Title="Capture Role" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CaptureRole.aspx.cs" Inherits="SalesSystem.CaptureRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:HiddenField ID="hdfPrimarykey" runat="server" />
    <asp:HiddenField ID="hdfCounter" runat="server" />
    <table style="width: 100%;">
        <tr>
            <td align="right">
                <asp:Label ID="LabelRoleDescription" runat="server" Text="Role Description: "></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBoxRoleDescription" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="LabelRoleRate" runat="server" Text="Role Rate: "></asp:Label>
            </td>
            <td align="left">
                <asp:TextBox ID="TextBoxRoleRate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2">
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" 
                    onclick="ButtonCancel_Click" />
            </td>
            <td align="left">
                <asp:Button ID="ButtonInsert" runat="server" Text="Insert" 
                    onclick="ButtonInsert_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
