<%@ Page Title="" Language="C#" MasterPageFile="~/NavFooter.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="CSS/Cart.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
		
			<h3 style="padding-top:25%" class="text-info">Order Details<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cart]" InsertCommand="INSERT INTO [cart]  ([id],[item],[price])
VALUES (@id,@item, @price);" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM cart WHERE (id = @Param1)" UpdateCommand="UPDATE [cart]
SET [item] = @item,[price]  =@price
WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="item" />
                    <asp:Parameter Name="price" />
                    <asp:Parameter Name="id" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="item" />
                    <asp:Parameter Name="price" />
                    <asp:Parameter Name="id" />
                </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="597px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                        <asp:BoundField DataField="item" HeaderText="item" SortExpression="item" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <br /><br />
                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" Height="203px" Width="246px">
                    <EditItemTemplate>
                        id:
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        <br />
                        item:
                        <asp:TextBox ID="itemTextBox" runat="server" Text='<%# Bind("item") %>' />
                        <br />
                        price:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        id:
                        <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                        <br />
                        item:
                        <asp:TextBox ID="itemTextBox" runat="server" Text='<%# Bind("item") %>' />
                        <br />
                        price:
                        <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        id:
                        <asp:Label ID="idLabel" runat="server" Text='<%# Bind("id") %>' />
                        <br />
                        item:
                        <asp:Label ID="itemLabel" runat="server" Text='<%# Bind("item") %>' />
                        <br />
                        price:
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:FormView>
            </h3>
			<div class="table-responsive">
				<button class="button button1">Checkout</button>
			</div>
		</div>
	</div>
	<br />
</asp:Content>

