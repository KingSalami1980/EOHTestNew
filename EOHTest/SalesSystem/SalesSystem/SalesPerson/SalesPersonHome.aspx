<%@ Page Title="" Language="C#" MasterPageFile="~/SiteSalesPerson.Master" AutoEventWireup="true" CodeBehind="SalesPersonHome.aspx.cs" Inherits="SalesSystem.SalesPerson.SalesPersonHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Welcome to our Sales System!
    </h2>
    <table width="100%" cellpadding="0" cellspacing="3">
        <tr>
            <td>
                <asp:GridView ID="GridViewEmployees" runat="server" AutoGenerateColumns="false" 
                    DataKeyNames="EmployeeID" 
                    OnSelectedIndexChanged="GridViewEmployees_SelectedIndexChanged">
                    <SelectedRowStyle BackColor="LightBlue" ForeColor="DarkBlue" />
                    <Columns>
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
    </table>
</asp:Content>
