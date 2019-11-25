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
    
        <H2> <font face="微軟正黑體"color="#000000">餐點類別管理</h2></div>
    <hr />
    <table class="style1">
        <tr>
             <td>
                <a href="sys_item_add.aspx"><H2> <font face="微軟正黑體"color="#000000">餐點類別新增</H2></a></td>
            <td>
                <a href="sys_item.aspx"><H2> <font face="微軟正黑體"color="#000000">餐點類別管理</h2></a></td>
            <td>
                <a href="sys_prod_add.aspx"><H2> <font face="微軟正黑體"color="#000000">餐點新增管理</h2></a></td>
            <td>
                <a href="sys_prod_view.aspx"><H2> <font face="微軟正黑體"color="#000000">餐點管理</h2></a></td>
            <td>
                <a href="sys_order.aspx"><H2> <font face="微軟正黑體"color="#000000">訂餐管理</h2></a></td>
            <td>
                <a href="change_pass.aspx"><H2> <font face="微軟正黑體"color="#000000">修改密碼</h2></a></td>
            <td>
                <a href="../index.aspx?login=x"><H2> <font face="微軟正黑體"color="#000000">登出</h2></a></td>
        </tr>
    </table>
    <center>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="i_id" 
        DataSourceID="SqlDataSource1" Width="497px" BackColor="White" 
        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
        GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="i_item" HeaderText="類別名稱" SortExpression="i_item" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>

    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:companyConnectionString %>" 
        DeleteCommand="DELETE FROM [items] WHERE [i_id] = @i_id" 
        InsertCommand="INSERT INTO [items] ([i_item]) VALUES (@i_item)" 
        SelectCommand="SELECT * FROM [items] ORDER BY [i_item]" 
        UpdateCommand="UPDATE [items] SET [i_item] = @i_item WHERE [i_id] = @i_id">
        <DeleteParameters>
            <asp:Parameter Name="i_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="i_item" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="i_item" Type="String" />
            <asp:Parameter Name="i_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
    </body>
</html>
