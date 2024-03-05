<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="CRUD.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified" style="height: 265px; margin-top: 23px">
    <tr>
        <td colspan="2">
            <asp:Label ID="lblTitle" runat="server" Text="User Information"></asp:Label>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtName" runat="server" Width="156px"></asp:TextBox>
        </td>
        <td colspan="2" rowspan="8">
            <asp:GridView ID="dgViewUsers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="254px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="485px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCon %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox2_TextChanged" Width="154px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" Width="153px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtPhone" runat="server" Width="151px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:CheckBox ID="chkBoxAgree" runat="server" Text="Yes, I Agree!" />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblId" runat="server" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnCancel" runat="server" Height="27px" Text="Cancel Operation" Width="163px" OnClick="btnCancel_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
    <br /> <br />

</asp:Content>
