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
    
       <H2> <font face="微軟正黑體"color="#000000"> 登入成功</div>
    </form>
    <hr />
    <table class="style1">
        <tr>
            <td>
                <a href="sys_item_add.aspx"><H2> <font face="微軟正黑體"color="#000000">餐點類別新增</h2></a></td>
            <td>
                <a href="sys_item.aspx"><H2> <font face="微軟正黑體"color="#000000">餐點類別管理</h2></a></td>
            <td>
                <a href="sys_prod_add.aspx"><H2> <font face="微軟正黑體"color="#000000">餐點新增管理</H2></a></td>
            <td>
                <a href="sys_prod_view.aspx"><H2> <font face="微軟正黑體"color="#000000">餐點管理</H2></a></td>
            <td>
                <a href="sys_order.aspx"><H2> <font face="微軟正黑體"color="#000000">訂餐管理</h2></a></td>
            <td>
                <a href="change_pass.aspx"><H2> <font face="微軟正黑體"color="#000000">改密碼</h2></a></td>
            <td>
                <a href="../index.aspx?login=x">登出</a></td>
        </tr>
    </table>
</body>
</html>
