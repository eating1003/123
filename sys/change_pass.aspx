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
    
        <H2> <font face="微軟正黑體"color="#000000">更改管理者密碼</div>
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
    <p>
        &nbsp;</p>
        <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" Width="479px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="sys_acc" HeaderText="帳號" ReadOnly="True" 
                SortExpression="sys_acc" />
            <asp:BoundField DataField="sys_pass" HeaderText="密碼" 
                SortExpression="sys_pass" />
        </Columns>
    </asp:GridView>

    </center>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:companyConnectionString %>" 
        DeleteCommand="DELETE FROM [sys_password] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [sys_password] ([sys_acc], [sys_pass], [sys_sex], [sys_level], [sys_phone], [sys_mail]) VALUES (@sys_acc, @sys_pass, @sys_sex, @sys_level, @sys_phone, @sys_mail)" 
        SelectCommand="SELECT * FROM [sys_password]" 
        
        UpdateCommand="UPDATE [sys_password] SET  [sys_pass] = @sys_pass, [sys_sex] = @sys_sex, [sys_level] = @sys_level, [sys_phone] = @sys_phone, [sys_mail] = @sys_mail WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sys_acc" Type="String" />
            <asp:Parameter Name="sys_pass" Type="String" />
            <asp:Parameter Name="sys_sex" Type="Int32" />
            <asp:Parameter Name="sys_level" Type="Int32" />
            <asp:Parameter Name="sys_phone" Type="String" />
            <asp:Parameter Name="sys_mail" Type="String" />
        </InsertParameters>
        <UpdateParameters>
         
            <asp:Parameter Name="sys_pass" Type="String" />
            <asp:Parameter Name="sys_sex" Type="Int32" />
            <asp:Parameter Name="sys_level" Type="Int32" />
            <asp:Parameter Name="sys_phone" Type="String" />
            <asp:Parameter Name="sys_mail" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </form>
    </body>
</html>
