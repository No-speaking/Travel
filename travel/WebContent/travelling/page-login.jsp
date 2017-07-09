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
			<div id="content" class="col-sm-12 full">
				<div class="row">
					<div class="login-box">
					
						<div class="header">
						<s:text name="loginflower"/>
						</div>
						<div class="text-center">
							<li><a href="" class="fa fa-facebook facebook-bg"></a></li>
							<li><a href="" class="fa fa-twitter twitter-bg"></a></li>
							<li><a href="" class="fa fa-linkedin linkedin-bg"></a></li>
						</div>				
					
						<div class="text-with-hr">
							<span><s:text name="or"/></span>
						</div>
					
						<s:form class="form-horizontal login" action="login.action" method="post">
						
							<fieldset class="col-sm-12">
								<div class="form-group">
									<div class="controls row">
										<div class="input-group col-sm-12">	
										<s:text name="username"/>
											<s:textfield name="um.username" cssClass="form-control" theme="simple" id="username" />
											
										</div>	
									</div>
								</div>
							
								<div class="form-group">
									<div class="controls row">
										<div class="input-group col-sm-12">	
										<s:text name="password"/>
											<s:textfield type="password" name="um.password" cssClass="form-control" theme="simple" id="password" />
											
										</div>	
									</div>
								</div>

								<div class="confirm">
									<input type="checkbox" name="remember"/>
									<label for="remember"><s:text name="rember"/></label>
								</div>	

								<div class="row">
							
									<button type="submit" class="btn btn-lg btn-primary col-xs-12"><s:text name="login"/></button>
							
								</div>
							
								
							</fieldset>	

						</s:form>
					
						<a class="pull-left" href="page-login.jsp#"><s:text name="forget"/></a>
						<a class="pull-right" href="page-register.jsp"><s:text name="register"/></a>
					
						<div class="clearfix"></div>				
						
					</div>
				</div><!--/row-->
		
			</div>	
			
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
	
	<!-- theme scripts -->
	<script src="assets/js/SmoothScroll.js"></script>
	<script src="assets/js/jquery.mmenu.min.js"></script>
	<script src="assets/js/core.min.js"></script>
	
	<!-- inline scripts related to this page -->
	<script src="assets/js/pages/login.js"></script>
	
	<!-- end: JavaScript-->
	
</body>
</html>