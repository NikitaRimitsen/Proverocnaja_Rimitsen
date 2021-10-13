<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Proverocnaja_Rimitsen._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <h1>Toode</h1>
<p>&nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" Width="417px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
            <asp:BoundField DataField="kogus" HeaderText="kogus" SortExpression="kogus" />
            <asp:BoundField DataField="toodeTyyp" HeaderText="toodeTyyp" SortExpression="toodeTyyp" />
            <asp:BoundField DataField="ladu" HeaderText="ladu" SortExpression="ladu" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [toode] WHERE [Id] = @Id" InsertCommand="INSERT INTO [toode] ([nimetus], [kogus], [toodeTyyp], [ladu]) VALUES (@nimetus, @kogus, @toodeTyyp, @ladu)" ProviderName="<%$ ConnectionStrings:RimitsenConnectionString1.ProviderName %>" SelectCommand="SELECT [Id], [nimetus], [kogus], [toodeTyyp], [ladu] FROM [toode]" UpdateCommand="UPDATE [toode] SET [nimetus] = @nimetus, [kogus] = @kogus, [toodeTyyp] = @toodeTyyp, [ladu] = @ladu WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="kogus" Type="Int32" />
            <asp:Parameter Name="toodeTyyp" Type="Int32" />
            <asp:Parameter Name="ladu" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nimetus" Type="String" />
            <asp:Parameter Name="kogus" Type="Int32" />
            <asp:Parameter Name="toodeTyyp" Type="Int32" />
            <asp:Parameter Name="ladu" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
  

    

</asp:Content>
