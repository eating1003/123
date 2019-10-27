<%@ Page Language="C#" %>
<% @ Import Namespace ="System.Data" %>
<% @ Import Namespace ="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {


        string cs = "server=.\\SQLEXPRESS;AttachDbFilename=c:\\sqldata\\company.mdf;;Integrated Security=True;Connect Timeout=30;User Instance=True";
        string qs = "select * from [sys_password] where sys_acc= '" + TextBox1.Text + "' and sys_pass= '" + TextBox2.Text + "'  ";
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            using (SqlCommand command = new SqlCommand(qs, cn))
            {
                using (SqlDataReader dr = command.ExecuteReader())
                {                
                    if (dr.Read() == true )
                    {
                        
                        Session[ "MM_Username"] = dr["sys_acc" ];
                        Response.Redirect("sys_index.aspx");
                    }
                    else
                    {
                      
                        Response.Write("登入失敗");
                    }                   
                }
            }
        }
        
        
        
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 43%;
            height: 53px;
        }
        .style2
        {
            width: 418px;
        }
        .style3
        {
            width: 333px;
        }
        .style4
        {
            width: 333px;
            height: 30px;
        }
        .style5
        {
            width: 418px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        管理者登入</div>
    <hr />
    <p style="text-align: center">
        &nbsp;<table align="center" class="style1">
            <tr>
                <td class="style3">
                    帳號</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    密碼</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
    <hr />
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登入" />
    </p>
    </form>
</body>
</html>
