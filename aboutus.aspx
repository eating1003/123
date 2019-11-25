<%@ Page Language="C#" %>
<% @Import Namespace="System.Data" %>
<% @Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>開心釣魚場風味餐廳線上點餐系統</title>
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
        .auto-style2 {
            left: 0px;
            top: 0px;
        }
        .auto-style3 {
            width: 149px;
            height: 149px;
        }
        .auto-style4 {
            width: 142px;
            height: 137px;
        }
        .auto-style5 {
            width: 134px;
            height: 134px;
        }
    </style>
    </head>
<body>
  <form id="form1" runat="server" clientidmode="AutoID">
    <div>
	<!-- header -->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
					<div class="w3layouts-logo">
						<h1><a href="index.aspx">開心釣魚場風味餐廳線上點餐系統 <span>Order System</span></a></h1>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.aspx">回首頁</a></li>
						 
						<li><a href="order.aspx" class="hvr-sweep-to-bottom">開始點餐</a></li>
							<li><a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">餐點瀏覽<span class="caret"></span></a>
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
                            	<li><a href="car.aspx" class="hvr-sweep-to-bottom">關於我們</a></li>

							<li><a href="sys/sys_login.aspx" class="hvr-sweep-to-bottom">系統管理</a></li>
						</ul>
					</nav>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
		</div>

			</section>
			<!-- flexSlider -->
			<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" />
			<script defer src="js/jquery.flexslider.js"></script>
			<script type="text/javascript">
				$(window).load(function(){
					$('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						$('body').removeClass('loading');
						}
					});
				});
			</script>
			<!-- //flexSlider -->
		</div>
	</div>
	<!-- //banner -->
	<!-- services -->
      <!--services -->
	<!-- services-bottom -->
 <div class="text-grid">
		<div class="container">
			<h4>About US</h4>
			<p style="font-family: 微軟正黑體; font-size: 25px; font-weight: bold">花蓮巷仔內美食 巨大鹽烤吳郭魚</p>
		</div>
	</div>
	<!-- //services-bottom -->
 
	<!-- //about -->
	<div class="services">
		<div class="container">
			<div class="services-main">
				<div class="services-heading">
					<h2><font face="微軟正黑體"color="#000000"><img src="images/worldwide.png" alt=""/>關於我們</font></h2>
                    


					<div class="agileits-line"> </div>
				</div>
				 
					 
					<div>
                            <div class="auto-style2">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-text">
							<center><a href="images/IMG_0395.jpg"><font face="微軟正黑體">簡介</font></a>
							<p><b><font face="微軟正黑體"color="#000000">開心釣魚場成立於1999年，地點設於花蓮，由賴阿華先生一手創立，從60歲開始做做到現今已83歲，也由大兒子賴永祥接手。</font></b></p>
                            <p><b><font face="微軟正黑體"color="#000000">如今已成為花蓮知名道地風味小吃，擁有專業的火烤技術、多年的炒菜經驗、富有人情味的招待。</font></b></p>
                            <p><b><font face="微軟正黑體"color="#000000">我們秉持高品質的產品理念，並以顧客為中心，每天凌晨親自去菜市場採買最新鮮的食材，希望每個來此光臨的顧客吃的新鮮又滿足 !</font></b></p>
                            <p><b><font face="微軟正黑體"color="#D10000"><img src="images/idea.png" alt=""/>2017年也曾經被東森新聞談報導採訪過喔 </p>
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/4OTGEVNwo-A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
						</center>
                                </div>
					</div>
				</div
            <div class="agileinfo-blog-grids">
            
        <div class="services">
        <div class="container">
            <div class="agileinfo-blog-grids">
				<div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<img src="images/location.png" " alt="" class="auto-style3" />
						</div>
						<div class="w3-agileits-blog-text">
							<p><b><font face="微軟正黑體"color="#000000">我們在哪 ？</p>
							<p>花蓮縣花蓮市中山路一段318巷75弄15 號</p>
						</div>
					</div>
				</div>
                <div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<img src="images/phone-call.png" " alt="" class="auto-style5" />
						</div>
						<div class="w3-agileits-blog-text">
							<p><b><font face="微軟正黑體"color="#000000">要怎麼聯繫我們</p>
							<p>03 856 0309</p>
						</div>
					</div>
				</div>
                <div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<img src="images/clipboard.png" alt="" class="auto-style4" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<p><b><font face="微軟正黑體"color="#000000">營業時間</p>
							<p> 星期日	09:00–18:00</p>
<p>星期一	休息</p>
<p>星期二	09:00–18:00</p>
<p>星期三	09:00–18:00</p>
<p>星期四	09:00–18:00</p>
<p>星期五	09:00–18:00</p>
<p>星期六	09:00–18:00</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
        <div class="blog">
		<div class="container">
			<div class="services-heading">
				<h3><b><font face="微軟正黑體"color="#000000"><img src="images/ribbon.png" alt=""/>用餐環境</h3>
				<div class="agileits-line"> </div>
			</div>
            <div class="agileinfo-blog-grids">
				<div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fkpOhx@.jpg"><img src="images/IMG_0363.jpg" alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fkpOhx@.jpg">店內桌椅</a>
							<p>店內桌椅是採復古式不同於現代餐廳現代化的桌椅設計</p>
						</div>
					</div>
				</div>
                <div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fFoUHx@.jpg"><img src="images/IMG_0395.jpg" alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fFoUHx@.jpg">外觀說明</a>
							<p>外觀不同於以前有加裝了屋簷不會使花蓮小黑蚊亂竄，外面也有畫停車格讓來的客人有位置停車</p>
						</div>
					</div>
				</div>
                <div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fWmdJx@.jpg"><img src="images/IMG_0387.jpg" alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fWmdJx@.jpg">烤魚區</a>
							<p>魚都是新鮮料理，先將內臟取出用鹽裹覆，再用炭火慢慢悶燒，這樣能將鮮嫩多汁的魚肉，緊緊包覆不流失。爐架上還有一隻巨大台灣鯛坐鎮，守護著客人們的烤魚。</p>
						</div>
					</div>
				</div>
                <div class="clearfix"> </div>
			</div>
		</div>
	</div>
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
						<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>970花蓮縣中山路一段318巷75弄15 號 <span>台灣</span></li>
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
		$(document).ready(function() {
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