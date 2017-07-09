<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <%@ taglib uri="/struts-tags"  prefix="s" %>
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
		<style>
			footer {
				display: none;
			}
		</style>
		
	    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	    <!--[if lt IE 9]>
			<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
	</head>
</head>

<body>
	<div class="container-fluid content">
		<div class="row">
			<div id="content2" class="col-sm-12 full">
			
				<div class="row">

					<div class="col-lg-4 col-lg-offset-4 col-md-4 col-md-offset-4 col-xs-6 col-xs-offset-3 login-box-locked">
					<form class="form-horizontal login" action="login.action" method="post">
						<img src="showuser.action?username=${umm.username }" style="height: 37%; width: 37%;" class="avatar img-responsive"/>
					
						<h2>${umm.username }</h2>
						<p><s:text name="this"/></p>					
				    	<input id="prependedInput" type="hidden" class="form-control" size="16" name="um.username" type="password" value="${umm.username }">		
						<input id="prependedInput" class="form-control" size="16" name="um.password" type="password" placeholder="<s:text name="enter"/>">						
						<span class="help-block">
							<a href="#">
								<small><s:text name="forget"/></small>
							</a>
						</span>
						<label class="checkbox">
							<input type="checkbox" name="remember" id="remember" value="option"><s:text name="rember"/>
						</label>
						<div class="pull-right">
							<a href="page-login.html">				
								<button type="submit" class="btn btn-primary"><s:text name="login"/></button>
							</a>
						</div>
					</form>
					</div><!--/col-->

				</div><!--/row-->
		
			</div><!--/content-->	
			
		</div><!--/row-->
		
		
		
		
	</div><!--/container-->
		
		
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
	<script src="assets/plugins/backstretch/jquery.backstretch.min.js"></script>
	
	<!-- theme scripts -->
	<script src="assets/js/SmoothScroll.js"></script>
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>
	
	<!-- inline scripts related to this page -->
	<script src="assets/js/pages/page-lockscreen.js"></script>
	
	<!-- end: JavaScript-->
	
</body>
</html>