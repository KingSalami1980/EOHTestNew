<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SalesSystem._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to our Sales System!
    </h2>
    <table width="100%" cellpadding="0" cellspacing="3">
    <tr>
        <td align="center">
            <table width="50%" style="vertical-align: middle;">
                <tr>
                    <td align="right">
                        <asp:Label ID="LabelSearch" runat="server" Text="Search: "> </asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TextBoxSearch" runat="server" Width="255px"></asp:TextBox>
                    </td>
                    <td align="left">
                        <asp:Button ID="ButtonSearch" runat="server" Text="Search" 
                            onclick="ButtonSearch_Click" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="3"></td>
    </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridViewEmployees" runat="server" AutoGenerateColumns="false" 
                    DataKeyNames="EmployeeID" 
                    OnSelectedIndexChanged="GridViewEmployees_SelectedIndexChanged">
                    <SelectedRowStyle BackColor="LightBlue" ForeColor="DarkBlue" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="true" />                        
                        <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" SortExpression="EmployeeID" Visible="false" />
                        <asp:BoundField DataField="EmployeeName" HeaderText="Employee Name" SortExpression="EmployeeName" />
                        <asp:BoundField DataField="EmployeeSurname" HeaderText="Employee Surname" SortExpression="EmployeeSurname" /> 
                        <asp:BoundField DataField="RoleID" HeaderText="RoleID" SortExpression="RoleID" Visible="false" />
                        <asp:BoundField DataField="RoleDescription" HeaderText="Role Description" SortExpression="RoleDescription" />
                        <asp:BoundField DataField="RoleRate" HeaderText="Role Rate" DataFormatString="{0:c}" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td align="center">
                <table width="50%" cellspacing="0" cellpadding="5">
                    <tr>                        
                        <td style="width: 50%;" align="center">
                            <asp:HyperLink ID="HyperLinkAddEmployee" runat="server" Text="Add Employee" NavigateUrl="~/Admin/CaptureEmployee.aspx" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
    