<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Proverocnaja_Rimitsen.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Toode tüüp</h1>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" Width="375px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="toodeTyyp" HeaderText="toodeTyyp" SortExpression="toodeTyyp" />
                <asp:BoundField DataField="kirjeldus" HeaderText="kirjeldus" SortExpression="kirjeldus" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [toodeTyyp] WHERE [Id] = @Id" InsertCommand="INSERT INTO [toodeTyyp] ([toodeTyyp], [kirjeldus]) VALUES (@toodeTyyp, @kirjeldus)" ProviderName="<%$ ConnectionStrings:RimitsenConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [toodeTyyp], [kirjeldus] FROM [toodeTyyp]" UpdateCommand="UPDATE [toodeTyyp] SET [toodeTyyp] = @toodeTyyp, [kirjeldus] = @kirjeldus WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="toodeTyyp" Type="String" />
                <asp:Parameter Name="kirjeldus" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="toodeTyyp" Type="String" />
                <asp:Parameter Name="kirjeldus" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>

</asp:Content>
