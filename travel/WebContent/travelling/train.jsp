<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
	<head>
    	<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <title>Proton - Admin Template</title>		
		
		<!-- Import google fonts - Heading first/ text second -->
       
        <!--[if lt IE 9]>
<link href="http://fonts.useso.com/css?family=Open+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Open+Sans:700" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:400" rel="stylesheet" type="text/css" />
<link href="http://fonts.useso.com/css?family=Droid+Sans:700" rel="stylesheet" type="text/css" />
<![endif]-->

		<!-- Favicon and touch icons -->
		<link rel="shortcut icon" href="assets/ico/favicon.ico" type="image/x-icon" />

	    <!-- Css files -->
	    <link href="assets/css/bootstrap.min.css" rel="stylesheet">		
		<link href="assets/css/jquery.mmenu.css" rel="stylesheet">		
		<link href="assets/css/font-awesome.min.css" rel="stylesheet">
		<link href="assets/plugins/jquery-ui/css/jquery-ui-1.10.4.min.css" rel="stylesheet">
		<link href="assets/css/climacons-font.css" rel="stylesheet">
	    <link href="assets/css/style.min.css" rel="stylesheet">
		<link href="assets/css/add-ons.min.css" rel="stylesheet">		

	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
	</head>
</head>

<body>
	<!-- start: Header -->
	<div class="navbar" role="navigation">
	
		<div class="container-fluid">		
			
			<ul class="nav navbar-nav navbar-actions navbar-left">
				<li class="visible-md visible-lg"><a href="index.jsp#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
				<li class="visible-xs visible-sm"><a href="index.jsp#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>			
			</ul>
			
			<form class="navbar-form navbar-left">
				<button type="submit" class="fa fa-search"></button>
				<input type="text" class="form-control" placeholder="Search..."></a>
			</form>
			
	        <ul class="nav navbar-nav navbar-right">
				<li class="dropdown visible-md visible-lg">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope-o"></i></a>
	        	
	      		</li>
				<li class="dropdown visible-md visible-lg">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell-o"></i></a>
	        		
	      		</li>
				<li class="dropdown visible-md visible-lg">
					 <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-gears"></i></a>					
					
				</li>
				<li class="dropdown visible-md visible-lg">
	        		<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img class="user-avatar" src="assets/img/avatar.jpg" alt="user-mail">jhonsmith@mail.com</a>
	        		<ul class="dropdown-menu">
						<li class="dropdown-menu-header">
							<strong>信息</strong>
						</li>						
						<li><a href="profile.jsp"><i class="fa fa-user"></i> 个人资料</a></li>
						<li><a href="page-login.jsp"><i class="fa fa-wrench"></i> 重新登录</a></li>
						<li class="divider"></li>						
						<li><a href="index.jsp"><i class="fa fa-sign-out"></i> 退出登录</a></li>	
	        		</ul>
	      		</li>
				<li><a href="index.jsp"><i class="fa fa-power-off"></i></a></li>
			</ul>
			
		</div>
		
	</div>
	<!-- end: Header -->
	
	<div class="container-fluid content">
	
		<div class="row">
				
			<!-- start: Main Menu -->
			<div class="sidebar ">
								
				<div class="sidebar-collapse">
					<div class="sidebar-header t-center">
                        <span><img class="text-logo" src="assets/img/logo1.png"><i class="fa fa-space-shuttle fa-3x blue"></i></span>
                    </div>										
					<div class="sidebar-menu">						
						<ul class="nav nav-sidebar">
							<li><a href="index.jsp"><i class="fa fa-anchor"></i><span class="text"> 小花</span></a></li>
                            <li><a href="introduction.jsp"><i class="fa fa-comment"></i><span class="text"> 介绍</span></a></li>
							
							
							
							
							<li>
								<a href="#"><i class="fa fa-globe"></i><span class="text"> 景点</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="tomain.action"><i class="fa fa-indent"></i><span class="text"> 看一看</span></a></li>
									<li><a href="toadd.action"><i class="fa  fa-plus-square"></i><span class="text"> 增加</span></a></li>
									
									
								</ul>
							</li>
				
                            <li><a href="gallery.jsp"><i class="fa fa-picture-o"></i><span class="text"> 画廊</span></a></li>
                            <li><a href="gonglue.jsp"><i class="fa fa-table"></i><span class="text"> 旅行攻略</span></a></li>
                            <li>
								<a href="#"><i class="fa fa-car"></i><span class="text"> 路线</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="tomainroad.action"><i class="fa fa-indent"></i><span class="text"> 看一看</span></a></li>
									<li><a href="scenictoview.action"><i class="fa  fa-plus-square"></i><span class="text"> 增加</span></a></li>
									
								</ul>
							</li>
                            <li>
								<a href="#"><i class="fa fa-bolt"></i><span class="text"> 交通信息</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">									
									<li><a href="plane.jsp"><i class="fa  fa-plane"></i><span class="text"> 航班信息</span></a></li>
									<li><a href="train.jsp"><i class="fa fa-road"></i><span class="text"> 火车信息</span></a></li>
								</ul>
							</li>
                            <li>
								<a href="#"><i class="fa fa-list-alt"></i><span class="text"> 订单</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="tomainorder.action"><i class="fa fa-indent"></i><span class="text"> 所有订单</span></a></li>
									<li><a href="routetoview.action"><i class="fa  fa-plus-square"></i><span class="text"> 增加</span></a></li>
									
								</ul>
							</li>
                            <li>
								<a href="#"><i class="fa fa-file-text"></i><span class="text"> 报表</span> <span class="fa fa-angle-down pull-right"></span></a>
								<ul class="nav sub">
									<li><a href="yearyeji.jsp"><i class="fa fa-cny"></i><span class="text"> 年度业绩报表</span></a></li>
									<li><a href="monthyeji.jsp"><i class="fa fa-dollar"></i><span class="text"> 月业绩报表</span></a></li>
									<li><a href="yearorder.jsp"><i class="fa  fa-bar-chart-o"></i><span class="text"> 年订单报表</span></a></li>						
									<li><a href="monthorder.jsp"><i class="fa fa-list-alt"></i><span class="text"> 月订单报表</span></a></li>
				
								</ul>	
							</li>
                            <li><a href="profile.jsp"><i class="fa fa-heart-o"></i><span class="text"> 个人中心</span></a></li>
							
							
						</ul>
					</div>					
				</div>
				<div class="sidebar-footer">					
					
					<div class="sidebar-brand">
						小 花
					</div>
					
					<ul class="sidebar-terms">
						<li><a href="index.jsp#">条款</a></li>
						<li><a href="index.jsp#">隐私</a></li>
						<li><a href="index.jsp#">帮助</a></li>
						<li><a href="index.jsp#">关于</a></li>
					</ul>
					
					<div class="copyright text-center">
						<small>小花 <i class="fa fa-heart"></i></small>
					</div>					
				</div>	
				
			</div>
			<!-- end: Main Menu -->
						
		<!-- start: Content -->
		<div class="main ">
		
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-meh-o"></i>Climacons</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-bolt"></i><a href="#">Icons</a></li>
						<li><i class="fa fa-meh-o"></i>Climacons</li>
					</ol>
				</div>
			</div>
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2><i class="fa fa-meh-o red"></i><strong>Climacons</strong></h2>
					<div class="panel-actions">
						<a href="icons-climacons.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
						<a href="icons-climacons.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
						<a href="icons-climacons.html#" class="btn-close"><i class="fa fa-times"></i></a>
					</div>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon cloud"></i><p class="small">climacon cloud</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon cloud sun"></i><p class="small">climacon cloud sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon cloud moon"></i><p class="small">climacon cloud moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon rain"></i><p class="small">climacon rain</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon rain sun"></i><p class="small">climacon rain sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon rain moon"></i><p class="small">climacon rain moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon showers"></i><p class="small">climacon showers</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon showers sun"></i><p class="small">climacon showers sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon showers moon"></i><p class="small">climacon showers moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon downpour"></i><p class="small">climacon downpour</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon downpour sun"></i><p class="small">climacon downpour sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon downpour moon"></i><p class="small">climacon downpour moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon drizzle"></i><p class="small">climacon drizzle</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon drizzle sun"></i><p class="small">climacon drizzle sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon drizzle moon"></i><p class="small">climacon drizzle moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sleet"></i><p class="small">climacon sleet</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sleet sun"></i><p class="small">climacon sleet sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sleet moon"></i><p class="small">climacon sleet moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon hail"></i><p class="small">climacon hail</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon hail sun"></i><p class="small">climacon hail sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon hail moon"></i><p class="small">climacon hail moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon flurries"></i><p class="small">climacon flurries</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon flurries sun"></i><p class="small">climacon flurries sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon flurries moon"></i><p class="small">climacon flurries moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon snow"></i><p class="small">climacon snow</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon snow sun"></i><p class="small">climacon snow sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon snow moon"></i><p class="small">climacon snow moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon fog"></i><p class="small">climacon fog</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon fog sun"></i><p class="small">climacon fog sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon fog moon"></i><p class="small">climacon fog moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon haze"></i><p class="small">climacon haze</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon haze sun"></i><p class="small">climacon haze sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon haze moon"></i><p class="small">climacon haze moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon wind"></i><p class="small">climacon wind</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon wind cloud"></i><p class="small">climacon wind cloud</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon wind cloud sun"></i><p class="small">climacon wind cloud sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon wind cloud moon"></i><p class="small">climacon wind cloud moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon lightning"></i><p class="small">climacon lightning</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon lightning sun"></i><p class="small">climacon lightning sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon lightning moon"></i><p class="small">climacon lightning moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sun"></i><p class="small">climacon sun</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sunset"></i><p class="small">climacon sunset</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sunrise"></i><p class="small">climacon sunrise</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sun low"></i><p class="small">climacon sun low</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sun lower"></i><p class="small">climacon sun lower</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon"></i><p class="small">climacon moon</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon new"></i><p class="small">climacon moon new</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon waxing crescent"></i><p class="small">climacon moon waxing crescent</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon waxing quarter"></i><p class="small">climacon moon waxing quarter</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon waxing gibbous"></i><p class="small">climacon moon waxing gibbous</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon full"></i><p class="small">climacon moon full</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon waning gibbous"></i><p class="small">climacon moon waning gibbous</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon waning quarter"></i><p class="small">climacon moon waning quarter</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon moon waning crescent"></i><p class="small">climacon moon waning crescent</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon snowflake"></i><p class="small">climacon snowflake</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon tornado"></i><p class="small">climacon tornado</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon thermometer"></i><p class="small">climacon thermometer</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon thermometer low"></i><p class="small">climacon thermometer low</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon thermometer medium-low"></i><p class="small">climacon thermometer medium-low</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon thermometer medium-high"></i><p class="small">climacon thermometer medium-high</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon thermometer high"></i><p class="small">climacon thermometer high</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon thermometer full"></i><p class="small">climacon thermometer full</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon celcius"></i><p class="small">climacon celcius</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon farenheit"></i><p class="small">climacon farenheit</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon compass"></i><p class="small">climacon compass</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon compass north"></i><p class="small">climacon compass north</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon compass east"></i><p class="small">climacon compass east</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon compass south"></i><p class="small">climacon compass south</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon compass west"></i><p class="small">climacon compass west</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon umbrella"></i><p class="small">climacon umbrella</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon sunglasses"></i><p class="small">climacon sunglasses</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon cloud refresh"></i><p class="small">climacon cloud refresh</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon cloud up"></i><p class="small">climacon cloud up</p>
						</div>
						<div class="col-md-2 col-sm-3 text-center">
							<i class="climacon cloud down"></i><p class="small">climacon cloud down</p>
						</div>
					</div><!--/.row-->	
				</div>		
			</div>	
   
		</div>
		<!-- end: Content -->
		<br><br><br>
		
		
		<div id="usage">
			<ul>
				<li>
					<div class="title">Memory</div>
					<div class="bar">
						<div class="progress">
						  	<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%"></div>
						</div>
					</div>			
					<div class="desc">4GB of 8GB</div>
				</li>
				<li>
					<div class="title">HDD</div>
					<div class="bar">
						<div class="progress">
						  	<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%"></div>
						</div>
					</div>			
					<div class="desc">250GB of 1TB</div>
				</li>
				<li>
					<div class="title">SSD</div>
					<div class="bar">
						<div class="progress">
					  		<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%"></div>
						</div>
					</div>			
					<div class="desc">700GB of 1TB</div>
				</li>
				<li>
					<div class="title">Bandwidth</div>
					<div class="bar">
						<div class="progress">
					  		<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%"></div>
						</div>
					</div>			
					<div class="desc">90TB of 100TB</div>
				</li>				
			</ul>	
		</div>			
		
	</div><!--/container-->
		
	
	<div class="modal fade" id="myModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Modal title</h4>
				</div>
				<div class="modal-body">
					<p>Here settings can be configured...</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
	<div class="clearfix"></div>
	
		
	<!-- start: JavaScript-->
	<!--[if !IE]>-->

			<script src="assets/js/jquery-2.1.1.min.js"></script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<![endif]-->

	<!--[if !IE]>-->

		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery-2.1.1.min.js'>"+"<"+"/script>");
		</script>

	<!--<![endif]-->

	<!--[if IE]>
	
		<script type="text/javascript">
	 	window.jQuery || document.write("<script src='assets/js/jquery-1.11.1.min.js'>"+"<"+"/script>");
		</script>
		
	<![endif]-->
	<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>	
	
	
	<!-- page scripts -->
	<script src="assets/plugins/jquery-ui/js/jquery-ui-1.10.4.min.js"></script>
	
	<!-- theme scripts -->
	<script src="assets/js/SmoothScroll.js"></script>
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>
		
	<!-- end: JavaScript-->
	
</body>
</html>