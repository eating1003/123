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
						<h1><a href="index.aspx">線上點餐系統 <span>Order System</span></a></h1>
					</div>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.aspx">首頁</a></li>
						 
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
	<div class="banner">
		<div class="container">
			<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>	
								<div class="banner_text">
									<h2 style="font-family: 微軟正黑體; font-size: 60px; font-weight: bolder; font-style: normal; color: #000000; text-transform: none">美食能療癒人心</h2>
									<div class="w3ls-line"> </div>
									<p style="font-family: 微軟正黑體; font-size: 20px; font-weight: bolder; color: #000000">開心釣魚場風味餐廳線上點餐系統</p>
									<div class="w3-button">
										<a href="order.aspx" class="btn btn-1 btn-1b">開始點餐</a>
									</div>
								</div>
							</li>
							<li>	
								<div class="banner_text">
									<h2 style="font-family: 微軟正黑體; font-size: 60px; font-weight: bolder; font-style: normal; color: #000000">歡迎光臨開心釣魚場風味餐廳</h2>
									<div class="w3ls-line"> </div>
									<p style="font-family: 微軟正黑體; font-size: 20px; font-weight: bolder; color: #000000">線上點餐系統</p>
									<div class="w3-button">
										<a href="order.aspx" class="btn btn-1 btn-1b">開始點餐</a>
									</div>
								</div>
							</li>
						</ul>
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
	<div class="services">
		<div class="container">
			<div class="services-main">
				<div class="services-heading">
					<h2><font face="微軟正黑體"color="#000000"><img src="images/點餐icon.png" />點餐需知</font></h2>
                    


					<div class="agileits-line"> </div>
				</div>
				 
					 
					<div>
                        <div class="services">
		                 <div class="container">
                             <div class="services-bottom">
					<div class="services-grid">
						<div class="col-md-6 services-grid-left">
							<div class="services-text">
								<h4><b><font face="微軟正黑體"color="#000000"><img src="images/tag.png" />流程說明</b></h4>
								<p><b>將喜愛的食材加入到點餐購物車,我們會在最快時間內幫您上菜,享用完畢後再按結帳就可以了哦。</b></p>
                                <p><b> 如有任何問題可掃描旁邊的QRCODE加入我們的官方通訊軟體帳號，將會有專人為您解答哦!</b></p>
                                
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="col-md-6 services-grid-right">
                            <img src="images/20191107QR.png" alt="" />
						</div>
            </div></div>

						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--services -->
	<!-- services-bottom -->
 <div class="text-grid">
		<div class="container">
			<h4>About me</h4>
			<p style="font-family: 微軟正黑體; font-size: 25px; font-weight: bold">花蓮巷仔內美食 巨大鹽烤吳郭魚</p>
		</div>
	</div>
	<!-- //services-bottom -->
 
	<!-- //about -->
        <div class="services">
        <div class="container">
			<div class="services-heading">
					<h2><font face="微軟正黑體"color="#000000"><img src="images/increase.png" />餐廳內部</font></h2>
				<div class="agileits-line"> </div>
			</div>
            <div class="agileinfo-blog-grids">
				<div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fhifKx@.jpg"><img src="images/IMG_0368.jpg" " alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fhifKx@.jpg"><font face="微軟正黑體"color="#000000">座位席</font></a>
							<p>餐廳內部的座位席是採用傳統式的木頭椅搭配大理石桌，另外旁邊還有擺設兒童搖馬，不但大人吃的開心小孩也能玩得開心</p>
						</div>
					</div>
				</div>
                <div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fxppHx@.jpg"><img src="images/IMG_0371.jpg"alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fxppHx@.jpg"><font face="微軟正黑體"color="#000000">魚池旁的座位席</font></a>
							<p>這邊的座位席比較特別，右手邊是釣魚的魚池左手邊則是一些店裡的紀念照片，整間店都是採用大面的窗戶做為牆壁因此採光強，不時還可以看窗外風景</p>
						</div>
					</div>
				</div>
                <div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fa5O1x@.jpg"><img src="images/IMG_0380.jpg" alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fa5O1x@.jpg"><font face="微軟正黑體"color="#000000">牆上的照片</font></a>
							<p>牆上的每一張照片不管是高朋滿座的釣魚場，還是客人釣到的巨魚，都是釣魚場的回憶</p>
						</div>
					</div>
				</div>
                <div class="clearfix"> </div>
			</div>
		</div>
	</div>
        <div class="blog">
		<div class="container">
			<div class="services-heading">
				<h3><font face="微軟正黑體"color="#000000"><img src="images/percentage.png" />料理環境</font></h3>
				<div class="agileits-line"> </div>
			</div>
            <div class="agileinfo-blog-grids">
				<div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fkpOhx@.jpg"><img src="images/IMG_0399.jpg" alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fkpOhx@.jpg"><font face="微軟正黑體"color="#000000">撒網捕魚</font></a>
							<p>釣魚場除了給顧客釣魚外我們也會以撒網的方式捕魚</p>
						</div>
					</div>
				</div>
                <div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fFoUHx@.jpg"><img src="images/IMG_0372.jpg" alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fFoUHx@.jpg"><font face="微軟正黑體"color="#000000">放置捕撈起來的魚</font></a>
							<p>隔天要用的魚前一天我們就會先捕撈起來放在這邊，放置在清水中的魚可以去除土味，</p>
						</div>
					</div>
				</div>
                <div class="col-md-4 wthree-blog">
					<div class="w3-agileits-blog">
						<div class="w3-agileits-blog-img">
							<a href="https://ppt.cc/fWmdJx@.jpg"><img src="images/IMG_0387.jpg" alt="" /></a>
						</div>
						<div class="w3-agileits-blog-text">
							<a href="https://ppt.cc/fWmdJx@.jpg"><font face="微軟正黑體"color="#000000">烤魚區</font></a>
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
							<li><a href="https://www.facebook.com/pages/%E9%96%8B%E5%BF%83%E9%87%A3%E9%AD%9A%E5%A0%B4/191434584249846"><i class="fa fa-facebook"></i></a></li>
							
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
						<li><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span><a href="aboutus.aspx">關於我們</a></li>
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