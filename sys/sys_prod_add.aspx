<%@ Page Language="C#" %>
  <% @Import Namespace="System.Data" %>
 <% @Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {



        if (FileUpload1.HasFile)
        {
            //  string path = Page.Server.MapPath("upload");

            // FileUpload1.SaveAs(path + "\\" + FileUpload1.FileName);
            FileUpload1.SaveAs("C:\\aspnet\\order_web\\images\\" + FileUpload1.FileName);
        }
        else
        {

        }



        SqlConnection conn = new SqlConnection("server=PROJECT108VM\\SQLEXPRESS;database=order;Integrated Security=True;Connect Timeout=30");
        conn.Open();
        string strsql;
        strsql = "insert into product(產品類別名稱,產品名稱,圖片,價格,產品描述) values('" + ps.Text + "','" + prod.Text + "','" + FileUpload1.FileName + "','" + price.Text + "','" + texts.Text + "') ";
        System.Data.SqlClient.SqlCommand objcmd = new System.Data.SqlClient.SqlCommand(strsql, conn);
        objcmd.ExecuteNonQuery();
        conn.Close();

       prod.Text = "";
        price.Text = "";
        texts.Text = "";
       
        Label1.Text = "新增完畢";
        
        
        
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 82%;
        }
        .style2
        {
            height: 28px;
            width: 586px;
        }
        .style3
        {
            width: 633px;
        }
        .style4
        {
            height: 28px;
            width: 633px;
        }
        .style5
        {
            width: 586px;
        }
        .style6
        {
            width: 586px;
            height: 36px;
        }
        .style7
        {
            width: 633px;
            height: 36px;
        }
        .style8
        {
            width: 586px;
            height: 30px;
        }
        .style9
        {
            width: 633px;
            height: 30px;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        餐點新增</div>
    <hr />
    <table class="style1" align="center">
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
    <hr />
    <table align="center" class="style1">
        <tr>
            <td class="style5">
                <font face="微軟正黑體"color="#000000">餐點名稱</td>
            <td class="style3">
                <asp:TextBox ID="prod" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
               <font face="微軟正黑體"color="#000000"> 餐點金額</td>
            <td class="style9">
                <asp:TextBox ID="price" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <font face="微軟正黑體"color="#000000">餐點類別</td>
            <td class="style3">
                <asp:DropDownList ID="ps" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="i_item" DataValueField="i_item">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
               <font face="微軟正黑體"color="#000000"> 餐點說明</td>
            <td class="style4">
                <asp:TextBox ID="texts" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
               <font face="微軟正黑體"color="#000000"> 圖檔上傳</td>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="檔案上傳" />
            </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" ForeColor="#CC3300" Text="..."></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:companyConnectionString %>" 
        SelectCommand="SELECT * FROM [items] ORDER BY [i_item]"></asp:SqlDataSource>
    </form>
    </body>
</html>
