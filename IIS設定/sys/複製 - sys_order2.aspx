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
        UpdateCommand="UPDATE [shop] SET [s_acc] = @s_acc, [s_prod_id] = @s_prod_id, [s_prod_num] = @s_prod_num, [s_session] = @s_session, [s_date] = @s_date, [s_type] = @s_type, [s_mess] = @s_mess, [長度] = @長度, [寛度] = @寛度, [text1] = @text1, [text2] = @text2, [text3] = @text3 WHERE [s_id] = @s_id">
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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="s_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="s_id" HeaderText="s_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="s_id" />
            <asp:BoundField DataField="s_acc" HeaderText="s_acc" SortExpression="s_acc" />
            <asp:BoundField DataField="s_prod_id" HeaderText="s_prod_id" 
                SortExpression="s_prod_id" />
            <asp:BoundField DataField="s_prod_num" HeaderText="s_prod_num" 
                SortExpression="s_prod_num" />
            <asp:BoundField DataField="s_session" HeaderText="s_session" 
                SortExpression="s_session" />
            <asp:BoundField DataField="s_date" HeaderText="s_date" 
                SortExpression="s_date" />
            <asp:BoundField DataField="s_type" HeaderText="s_type" 
                SortExpression="s_type" />
            <asp:BoundField DataField="s_mess" HeaderText="s_mess" 
                SortExpression="s_mess" />
            <asp:BoundField DataField="長度" HeaderText="長度" SortExpression="長度" />
            <asp:BoundField DataField="寛度" HeaderText="寛度" SortExpression="寛度" />
            <asp:BoundField DataField="text1" HeaderText="text1" SortExpression="text1" />
            <asp:BoundField DataField="text2" HeaderText="text2" SortExpression="text2" />
            <asp:BoundField DataField="text3" HeaderText="text3" SortExpression="text3" />
            <asp:BoundField DataField="產品名稱" HeaderText="產品名稱" SortExpression="產品名稱" />
            <asp:BoundField DataField="價格" HeaderText="價格" SortExpression="價格" />
        </Columns>
    </asp:GridView>
    </form>
    </body>
</html>
