<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ Page Language="C#" %>
<% @Import Namespace="System.Data" %>
<% @Import Namespace="System.Data.SqlClient" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>線上點餐系統</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Farming Company Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--// bootstrap-css -->
<!-- css -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<!--// css -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- font -->
<link href="//fonts.googleapis.com/css?family=Righteous&subset=latin-ext" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700italic,700,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!-- //font -->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
    <style type="text/css">
        .auto-style1 {
            float: left;
            width: 19%;
            height: 243px;
            padding: .5em;
        }
        .auto-style2 {
            width: 97px;
            height: 55px;
        }
        .auto-style4 {
            width: 157px;
            height: 55px;
        }
    </style>
</head>
<body>
	<!-- header -->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">線上點餐系統</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="w3layouts-logo">
					<h1><a href="index.aspx">線上點餐系統 <span>Order System</span></a></h1>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
						<nav>
						<ul class="nav navbar-nav">
							<li ><a href="index.aspx">回首頁</a></li>
						 
						<li><a href="order.aspx" class="hvr-sweep-to-bottom">開始點餐</a></li>
							<li class="active"> <a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">餐點瀏覽<span class="caret"></span></a>
								<ul class="dropdown-menu">
                               
									
							     
                                  <%
         string cs = "server=PROJECT108VM\\SQLEXPRESS;database=order;Integrated Security=True;Connect Timeout=30" ;
        string qs = "select * from items" ;
        using (SqlConnection cn = new SqlConnection(cs))
        {
            cn.Open();
            using (SqlCommand command = new SqlCommand(qs, cn))
            {
                using (SqlDataReader dr = command.ExecuteReader())
                {
                    while ((dr.Read()))
                    {
                        Response.Write("<li><a href=prod.aspx?ps=" + dr["i_item"].ToString() + " class=hvr-sweep-to-bottom href=>" + dr["i_item"].ToString() + "</a></li>");
                      
                      
                    }
                }
            }
        }
                                %>


								</ul>
							</li>
								<li><a href="car.aspx" class="hvr-sweep-to-bottom">購物車/結帳</a></li>
                               <li><a href="aboutus.aspx" class="hvr-sweep-to-bottom">關於我們</a></li>
							<li><a href="sys/sys_login.aspx" class="hvr-sweep-to-bottom">系統管理</a></li>
						</ul>
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>
	</div>
	<!-- //header -->
	<!-- banner -->
	<div class="banner about-banner">
		<div class="container">
			<h2 style="font-family: 微軟正黑體; font-size: 40px; color: #000000"><% Response.Write(Request["ps"]);%></h2>
			<div class="agileits-line"> </div>
		</div>
	</div>
    <div><center>
              <input id="Button7" type="button"value="排行榜"style="font-family:Microsoft JhengHei;font-size: 30px ; color:darkblue;border-radius: 10px;"onclick="location.href='prod.aspx?ps=海鮮好鮮'"class="auto-style4"><br></br>
              <input id="Button1" type="button"value="主食" style="font-family:Microsoft JhengHei;color:green;border-radius: 10px;"onclick="location.href='prod.aspx?ps=主食'" class="auto-style2">
              <input id="Button2" type="button"value="熱炒熱炒"style="font-family:Microsoft JhengHei;color:green;border-radius: 10px;"onclick="location.href='prod.aspx?ps=熱炒熱炒'" class="auto-style2">
              <input id="Button3" type="button"value="愛吃肉肉"style="font-family:Microsoft JhengHei;color:green;border-radius: 10px;;"onclick="location.href='prod.aspx?ps=愛吃肉肉'"class="auto-style2">
              <input id="Button4" type="button"value="青菜滴家"style="font-family:Microsoft JhengHei;color:green;border-radius: 10px;"onclick="location.href='prod.aspx?ps=青菜滴家'"class="auto-style2">
              <input id="Button5" type="button"value="暖心熱湯"style="font-family:Microsoft JhengHei;color:green;border-radius: 10px;"onclick="location.href='prod.aspx?ps=暖心熱湯'"class="auto-style2">
              <input id="Button6" type="button"value="海鮮好鮮"style="font-family:Microsoft JhengHei;color:green;border-radius: 10px;"onclick="location.href='prod.aspx?ps=海鮮好鮮'"class="auto-style2">&nbsp;
       
        </center>
    </div>
	<!-- //banner -->
	<!-- single -->
	<div class="single">
		<div class="container">
			
			<!-- comments -->
			<div class="agileits_three_comments">
				<h3><font face="微軟正黑體"color="#000000">選擇餐點</h3>

                <%
                  string cs2 = "server=PROJECT108VM\\SQLEXPRESS;database=order;Integrated Security=True;Connect Timeout=30" ;
        string qs2 = "select * from Product where 產品類別名稱='"+Request["ps"]+"'" ;
        using (SqlConnection cn2 = new SqlConnection(cs2))
        {
            cn2.Open();
            using (SqlCommand command = new SqlCommand(qs2, cn2))
            {
                using (SqlDataReader dr2 = command.ExecuteReader())
                {
                    while ((dr2.Read()))
                    {
                       //Response.Write(dr2[ "產品名稱"].ToString());
                        %>
                         <div class="agileits_three_comment_grid">
					<div class="auto-style1" style="border-style: none">
						<img src="images/<% =dr2["圖片"].ToString()%>" alt=" " class="img-responsive">
					</div>
					<div class="agileits_tom_right">
						<div class="hardy">
							<h4><b><font face="微軟正黑體"color="#000000"><% =dr2["產品名稱"].ToString()%></b></h4>
							<p><font face="微軟正黑體"color="#000000">售價:$<% =dr2["價格"].ToString()%></p>
						</div>
						<div class="clearfix">
                        </div>
						<p class="lorem"><h4><font face="微軟正黑體"color="#999999"><% =dr2["產品描述"].ToString()%></h4></p>
                        <br />
                        <br />
                         <div class="reply" align="right">
							<a href="prod2.aspx?id=<% =dr2["pid"].ToString()%>">選擇餐點</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
                      <%
                    }
                }
            }
        }
                 %>

               


			 




			 





			</div>
			<!-- //comments -->
			<!-- leave-comments -->
			<!-- //leave-comments -->
		</div>
	</div>
	<!-- //single -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="agileinfo_footer_grids">
				<div class="col-md-4 agileinfo_footer_grid">
					<div class="agile-logo">
						<h4><a href="index.aspx">點餐系統 <span>Order System</span></a></h4>
					</div>
					<p>如果說，享用美食不只能滿足口腹之慾，還能帶來愉悅心情、增加生活樂趣，開心釣魚場適合呼朋引伴，來此飲酒作樂，或是家庭聚餐享受天倫之樂。</p>
					<div class="agileinfo-social-grids">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-rss"></i></a></li>
							<li><a href="#"><i class="fa fa-vk"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-4 agileinfo_footer_grid">
					<h3>連絡我們</h3>
					<ul class="agileinfo_footer_grid_list">
						<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>970花蓮縣花蓮市中山路一段318巷75弄15 號 <span>台灣, 11051.</span></li>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">ting20615@gmail.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>03 856 0309</li>
					</ul>
				</div>
				<div class="col-md-4 agileinfo_footer_grid">
					<h3>快速連結</h3>
					<ul class="agileinfo_footer_grid_nav">
						<li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="index.aspx">回首頁</a></li>
					 
						<li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="order.aspx">開始點餐</a></li>
						<li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="car.aspx">購物車/結帳</a></li>
					 
						<li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="sys/sys_login.aspx">系統管理</a></li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3agile_footer_copy">
				<p>&copy; 2019 Farming Company. All rights reserved | Design by <a href="">線上點餐系統</a></p>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
<!-- //here ends scrolling icon -->
  </div>
    </form>
</body>	
</html>