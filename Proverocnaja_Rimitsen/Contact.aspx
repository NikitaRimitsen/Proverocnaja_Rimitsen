<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Proverocnaja_Rimitsen.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Lisa toode </h1>
    <p> &nbsp;</p>
    <p> &nbsp;</p>
    <p> 
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource_tootede" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="277px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                <asp:BoundField DataField="kogus" HeaderText="kogus" SortExpression="kogus" />
                <asp:TemplateField HeaderText="toodeTyyp" SortExpression="toodeTyyp">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("toodeTyyp") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_toodeTyyp" DataTextField="toodeTyyp" DataValueField="Id" SelectedValue='<%# Bind("toodeTyyp") %>'>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource_toodeTyyp" runat="server" ConnectionString="<%$ ConnectionStrings:RimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [toodeTyyp] WHERE [Id] = @Id" InsertCommand="INSERT INTO [toodeTyyp] ([toodeTyyp]) VALUES (@toodeTyyp)" SelectCommand="SELECT [Id], [toodeTyyp] FROM [toodeTyyp]" UpdateCommand="UPDATE [toodeTyyp] SET [toodeTyyp] = @toodeTyyp WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="toodeTyyp" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="toodeTyyp" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <br />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("toodeTyyp") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ladu" SortExpression="ladu">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ladu") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource_ladu" DataTextField="nimetus_ladu" DataValueField="Id" SelectedValue='<%# Bind("ladu") %>'>
                        </asp:DropDownList>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource_ladu" runat="server" ConnectionString="<%$ ConnectionStrings:RimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [ladu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ladu] ([nimetus_ladu]) VALUES (@nimetus_ladu)" SelectCommand="SELECT [Id], [nimetus_ladu] FROM [ladu]" UpdateCommand="UPDATE [ladu] SET [nimetus_ladu] = @nimetus_ladu WHERE [Id] = @Id">
                            <DeleteParameters>
                                <asp:Parameter Name="Id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="nimetus_ladu" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="nimetus_ladu" Type="String" />
                                <asp:Parameter Name="Id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("ladu") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource_tootede" runat="server" ConnectionString="<%$ ConnectionStrings:RimitsenConnectionString1 %>" DeleteCommand="DELETE FROM [toode] WHERE [Id] = @Id" InsertCommand="INSERT INTO [toode] ([nimetus], [kogus], [toodeTyyp], [ladu]) VALUES (@nimetus, @kogus, @toodeTyyp, @ladu)" SelectCommand="SELECT * FROM [toode]" UpdateCommand="UPDATE [toode] SET [nimetus] = @nimetus, [kogus] = @kogus, [toodeTyyp] = @toodeTyyp, [ladu] = @ladu WHERE [Id] = @Id">
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
