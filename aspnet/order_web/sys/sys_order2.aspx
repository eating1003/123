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
    
        訂單詳細資料</div>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:companyConnectionString %>" 
        DeleteCommand="DELETE FROM [shop] WHERE [s_id] = @s_id" 
        InsertCommand="INSERT INTO [shop] ([s_acc], [s_prod_id], [s_prod_num], [s_session], [s_date], [s_type], [s_mess], [長度], [寛度], [text1], [text2], [text3]) VALUES (@s_acc, @s_prod_id, @s_prod_num, @s_session, @s_date, @s_type, @s_mess, @長度, @寛度, @text1, @text2, @text3)" 
        SelectCommand="SELECT * FROM [shop] a left join product b on a.s_prod_id=b.pid  WHERE ([s_session] = @s_session)" 
        UpdateCommand="UPDATE [shop] SET  [text3] = @text3 WHERE [s_id] = @s_id">
        <DeleteParameters>
            <asp:Parameter Name="s_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="s_acc" Type="String" />
            <asp:Parameter Name="s_prod_id" Type="Int32" />
            <asp:Parameter Name="s_prod_num" Type="Int32" />
            <asp:Parameter Name="s_session" Type="String" />
            <asp:Parameter Name="s_date" Type="String" />
            <asp:Parameter Name="s_type" Type="String" />
            <asp:Parameter Name="s_mess" Type="String" />
            <asp:Parameter Name="長度" Type="String" />
            <asp:Parameter Name="寛度" Type="String" />
            <asp:Parameter Name="text1" Type="String" />
            <asp:Parameter Name="text2" Type="String" />
            <asp:Parameter Name="text3" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="s_session" QueryStringField="ID" 
                Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="s_acc" Type="String" />
            <asp:Parameter Name="s_prod_id" Type="Int32" />
            <asp:Parameter Name="s_prod_num" Type="Int32" />
            <asp:Parameter Name="s_session" Type="String" />
            <asp:Parameter Name="s_date" Type="String" />
            <asp:Parameter Name="s_type" Type="String" />
            <asp:Parameter Name="s_mess" Type="String" />
            <asp:Parameter Name="長度" Type="String" />
            <asp:Parameter Name="寛度" Type="String" />
            <asp:Parameter Name="text1" Type="String" />
            <asp:Parameter Name="text2" Type="String" />
            <asp:Parameter Name="text3" Type="String" />
            <asp:Parameter Name="s_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="s_id" DataSourceID="SqlDataSource1" AllowPaging="True" 
        AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" 
        BorderWidth="1px" CellPadding="4" Width="986px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="s_date" HeaderText="日期" 
                SortExpression="s_date" ReadOnly="True" />
            <asp:BoundField DataField="寛度" HeaderText="桌號" 
                SortExpression="寛度" ReadOnly="True" />
            <asp:BoundField DataField="長度" HeaderText="人數" 
                SortExpression="長度" ReadOnly="True" />
            <asp:BoundField DataField="產品名稱" HeaderText="產品名稱" SortExpression="產品名稱" 
                ReadOnly="True" />
            <asp:BoundField DataField="s_prod_num" HeaderText="數量" 
                SortExpression="s_prod_num" ReadOnly="True" />
            <asp:BoundField DataField="價格" HeaderText="價格" SortExpression="價格" 
                ReadOnly="True" />
            <asp:BoundField DataField="text3" HeaderText="備註" SortExpression="text3" />
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
    <HR />
        <a href="sys_order.aspx">回上頁 </a>
    </center>
    </form>
    </body>
</html>
