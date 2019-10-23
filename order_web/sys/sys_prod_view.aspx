<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        餐點管理</div>
    <hr />
    <table class="style1">
        <tr>
            <td>
                <a href="sys_item_add.aspx">餐點類別新增</a></td>
            <td>
                <a href="sys_item.aspx">餐點類別管理</a></td>
            <td>
                <a href="sys_prod_add.aspx">餐點新增管理</a></td>
            <td>
                <a href="sys_prod_view.aspx">餐點管理</a></td>
            <td>
                <a href="sys_order.aspx">訂餐管理</a></td>
            <td>
                <a href="change_pass.aspx">修改密碼</a></td>
            <td>
                <a href="../index.aspx?login=x">登出</a></td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="pid" DataSourceID="SqlDataSource1" ForeColor="Black" 
        GridLines="Vertical" Width="1011px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField HeaderText="圖片" SortExpression="圖片">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("圖片") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                     <asp:Image ID="Image1" runat="server" Height="96px"

                        ImageUrl='<%# "../images/" + Eval("圖片") %>' Width="101px" />

                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="產品名稱" HeaderText="產品名稱" SortExpression="產品名稱" />
            <asp:BoundField DataField="產品類別名稱" HeaderText="產品類別名稱" 
                SortExpression="產品類別名稱" />
            <asp:BoundField DataField="價格" HeaderText="價格" SortExpression="價格" />
            <asp:BoundField DataField="產品描述" HeaderText="產品描述" SortExpression="產品描述" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:companyConnectionString %>" 
        DeleteCommand="DELETE FROM [Product] WHERE [pid] = @pid" 
        InsertCommand="INSERT INTO [Product] ([產品編號], [產品類別編號], [產品類別分類], [產品類別名稱], [產品名稱], [圖片], [價格], [產品描述], [產品數量], [圖片2], [圖片3], [圖片4], [圖片5], [長度], [寛度]) VALUES (@產品編號, @產品類別編號, @產品類別分類, @產品類別名稱, @產品名稱, @圖片, @價格, @產品描述, @產品數量, @圖片2, @圖片3, @圖片4, @圖片5, @長度, @寛度)" 
        SelectCommand="SELECT * FROM [Product] ORDER BY [產品類別名稱], [產品名稱]" 
        UpdateCommand="UPDATE [Product] SET [產品編號] = @產品編號, [產品類別編號] = @產品類別編號, [產品類別分類] = @產品類別分類, [產品類別名稱] = @產品類別名稱, [產品名稱] = @產品名稱, [圖片] = @圖片, [價格] = @價格, [產品描述] = @產品描述, [產品數量] = @產品數量, [圖片2] = @圖片2, [圖片3] = @圖片3, [圖片4] = @圖片4, [圖片5] = @圖片5, [長度] = @長度, [寛度] = @寛度 WHERE [pid] = @pid">
        <DeleteParameters>
            <asp:Parameter Name="pid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="產品編號" Type="String" />
            <asp:Parameter Name="產品類別編號" Type="String" />
            <asp:Parameter Name="產品類別分類" Type="String" />
            <asp:Parameter Name="產品類別名稱" Type="String" />
            <asp:Parameter Name="產品名稱" Type="String" />
            <asp:Parameter Name="圖片" Type="String" />
            <asp:Parameter Name="價格" Type="Int32" />
            <asp:Parameter Name="產品描述" Type="String" />
            <asp:Parameter Name="產品數量" Type="Int32" />
            <asp:Parameter Name="圖片2" Type="String" />
            <asp:Parameter Name="圖片3" Type="String" />
            <asp:Parameter Name="圖片4" Type="String" />
            <asp:Parameter Name="圖片5" Type="String" />
            <asp:Parameter Name="長度" Type="String" />
            <asp:Parameter Name="寛度" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="產品編號" Type="String" />
            <asp:Parameter Name="產品類別編號" Type="String" />
            <asp:Parameter Name="產品類別分類" Type="String" />
            <asp:Parameter Name="產品類別名稱" Type="String" />
            <asp:Parameter Name="產品名稱" Type="String" />
            <asp:Parameter Name="圖片" Type="String" />
            <asp:Parameter Name="價格" Type="Int32" />
            <asp:Parameter Name="產品描述" Type="String" />
            <asp:Parameter Name="產品數量" Type="Int32" />
            <asp:Parameter Name="圖片2" Type="String" />
            <asp:Parameter Name="圖片3" Type="String" />
            <asp:Parameter Name="圖片4" Type="String" />
            <asp:Parameter Name="圖片5" Type="String" />
            <asp:Parameter Name="長度" Type="String" />
            <asp:Parameter Name="寛度" Type="String" />
            <asp:Parameter Name="pid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
    </body>
</html>
