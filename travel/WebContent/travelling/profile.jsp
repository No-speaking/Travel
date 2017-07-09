<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
					<h3 class="page-header"><i class="fa fa-heart-o"></i>Profile</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-file-text"></i><a href="#">Pages</a></li>
						<li><i class="fa fa-heart-o"></i>Profile</li>				
					</ol>
				</div>
			</div>

			<div class="row profile">
				
				<div class="col-md-5">
					
					<div class="panel panel-default">
						<div class="panel-body">
							<div class="text-center">
								<img class="img-profile" src="showuser.action?username=${um.username }" style="height: 37%; width: 37%;">
							</div>
							
							<h3 class="text-center"><strong>${um.username }</strong></h3>
							<h4 class="text-center"><small><i class="fa fa-map-marker"></i> ${um.userinfo.uaddr }</small></h4>
							
							<hr>
							
								<div class="text-center">								
									<li><a href="" class="fa fa-facebook facebook-bg"></a></li>
									<li><a href="" class="fa fa-twitter twitter-bg"></a></li>
									<li><a href="" class="fa fa-linkedin linkedin-bg"></a></li>						
								</div>
						
							
							<hr>
							
							<div class="row text-center">
								<div class="col-xs-4">
									<div><strong>1.256</strong></div>
									<div><small>Followers</small></div> 
								</div><!--/.col-->
								<div class="col-xs-4">
									<div><strong>2.568</strong></div>
									<div><small>Following</small></div>
								</div><!--/.col-->
								<div class="col-xs-4">
									<div><strong>25.265</strong></div>
									<div><small>Posts</small></div>
								</div><!--/.col-->
							</div><!--/.row-->					
							
							<hr>
							
							<h4><strong>登录信息</strong></h4>
							
							<ul class="profile-details">
								<li>
									<div><i class="fa fa-thumbs-up"></i> 用户名</div>
									${um.username }
								</li>
								<li>
									<div><i class="fa fa-building-o"></i> 密码</div>
									${um.password }
								</li>
							</ul>
							
							<hr>		

							<h4><strong>详细信息</strong></h4>

							<ul class="profile-details">
                                
                                <li>
									<div><i class="fa fa-envelope"></i> 性别</div>
									${um.ugender }
								</li>
								
								<li>
									<div><i class="fa fa-envelope"></i> 地址</div>
									${um.userinfo.uaddr }
								</li>
								
							</ul>	
							
						</div>	
						
					</div>
				
				</div><!--/.col-->
				
				<div class="col-md-7">
				
                    <div class="panel panel-default">                               
                        <div class="panel-heading">
                            <h2><i class="fa fa-heart-o red"></i><strong>修改信息</strong></h2>
                        </div>
                        <div class="panel-body">
                            <form class="form-vertical hover-stripped"  enctype="multipart/form-data" method="post" action="modifyuser.action">
                              <div class="form-group">
                                    <label class="control-label">用户名</label>
                                    <input type="text" class="form-control" placeholder="Password" value="${um.username }" readonly="readonly" name="um.username">
                                    <a href="#" class="help-block">Request new ?</a> 
                                </div>
                                <div class="form-group">
                                    <label class="control-label">密码</label>
                                    <input type="text" class="form-control" placeholder="Password" value="${um.password }" name="um.password">
                                    <a href="#" class="help-block">Request new ?</a> 
                                </div>
                               
                                <div class="form-group">
                                    <label class="control-label">性别</label>
                                    <label class="radio-inline" for="inline-radio1">
				                        	<input type="radio" id="inline-radio1" name="um.ugender" value="男"> 男
				                        </label>
				                        <label class="radio-inline" for="inline-radio2">
				                        	<input type="radio" id="inline-radio2" name="um.ugender" value="女"> 女
				                        </label>
                                </div>
                               <div class="form-group">
                                    <label class="control-label">地址</label>
                                    <input type="text" class="form-control" placeholder="Password" value="${um.userinfo.uaddr }" name="uim.uaddr">
                                </div> 
                                 <div class="form-group">
				                    <label class="col-md-3 control-label" for="file-show">原有图片</label>
				                    <div class="col-md-9">
				                        <img data-src="holder.js/100%x200" alt="100%x200" src="showuser.action?username=${um.username }" id="file-show"  data-holder-rendered="true" style="height: 200px; width: 100%; display: block;">
				                    </div>
				                </div>
                                <div class="form-group">
				                    <label class="control-label" for="file-input">选择图片</label>
				                    
				                        <input type="file" id="file-input" name="photo">
				                    
				                </div>
                                        
                                <div class="form-group pull-right">
                                    <button type="submit" class="btn btn-primary">修改</button>
                                </div>
                                        
                            </form>
                        </div>
                    </div>
					
				</div><!--/.col-->
			
			</div><!--/.row profile-->				
		</div>
		<!-- end: Content -->
		<br><br><br>
		

		
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
	<script src="http://localhost:8888/bootstrap/originAdmin/assets/js/jquery.easy-pie-chart.min.js"></script>
	
	<!-- theme scripts -->
	<script src="assets/js/SmoothScroll.js"></script>
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>
	
	<!-- inline scripts related to this page -->
	<script src="assets/js/pages/page-profile.js"></script>
	
	<!-- end: JavaScript-->
	
</body>
</html>