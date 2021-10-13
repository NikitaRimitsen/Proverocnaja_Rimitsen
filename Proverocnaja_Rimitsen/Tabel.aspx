<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tabel.aspx.cs" Inherits="Proverocnaja_Rimitsen.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Ladu</h1>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="Black" Width="214px">
            <Columns>
                <asp:BoundField DataField="nimetus_ladu" HeaderText="nimetus_ladu" SortExpression="nimetus_ladu" />
                <asp:BoundField DataField="linn" HeaderText="linn" SortExpression="linn" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [ladu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ladu] ([nimetus_ladu], [linn]) VALUES (@nimetus_ladu, @linn)" SelectCommand="SELECT [nimetus_ladu], [linn], [Id] FROM [ladu]" UpdateCommand="UPDATE [ladu] SET [nimetus_ladu] = @nimetus_ladu, [linn] = @linn WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nimetus_ladu" Type="String" />
                <asp:Parameter Name="linn" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nimetus_ladu" Type="String" />
                <asp:Parameter Name="linn" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="nimetus_ladu" HeaderText="nimetus_ladu" SortExpression="nimetus_ladu" />
                <asp:BoundField DataField="linn" HeaderText="linn" SortExpression="linn" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
    </p>
</asp:Content>
