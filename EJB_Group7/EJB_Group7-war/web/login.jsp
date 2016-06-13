<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<jsp:include page="include_file/css.jsp"/>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	 <link rel="stylesheet" href="css/radio-checkbox.css" type="text/css" />
	 <link rel="stylesheet" href="css/bs-switches.css" type="text/css" />

	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->

	<!-- Document Title
	============================================= -->
	<title>Login | Page</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<jsp:include page="include_file/header.jsp"/>
		<!-- #header end -->

		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>My Account</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Pages</a></li>
					<li class="active">Login</li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">
					<div class="accordion accordion-lg divcenter nobottommargin clearfix" style="max-width: 550px;">
						<div class="acctitle"><i class="acc-closed icon-lock3"></i><i class="acc-open icon-unlock"></i>Login to your Account</div>
						<div class="acc_content clearfix">
							<form id="login-form" name="login-form" class="nobottommargin" action="Login" method="post">
								<div class="col_full">
									<label for="login-form-username">Username:</label>
									<input type="text" id="login-form-username" name="username" value="" class="form-control" required=""/>
								</div>

								<div class="col_full">
									<label for="login-form-password">Password:</label>
									<input type="password" id="login-form-password" name="password" value="" class="form-control" required=""/>
								</div>

								<div class="col_full nobottommargin">
									<button class="button button-3d button-black nomargin" id="login-form-submit" name="btSubmit" type="submit" value="Login">Login</button>
									<a href="#" class="fright">Forgot Password?</a>
								</div>
							</form>
						</div>
						<div class="acctitle"><i class="acc-closed icon-user4"></i><i class="acc-open icon-ok-sign"></i>New Signup? Register for an Account</div>
						<div class="acc_content clearfix">
							<form id="register-form" name="register-form" class="nobottommargin" action="Login" method="post">
								<div class="col_full">
									<label for="register-form-name">Name:</label>
									<input type="text" id="register-form-name" name="username" value="" class="form-control"  required=""/>
								</div>

								<div class="col_full">
									<label for="login-form-username">Full Name</label>
									<input type="text" id="login-form-username" name="fullname" value="" class="form-control" required=""/>
								</div>

								<div class="col_full">
									<label for="register-form-email">Email Address:</label>
									<input type="text" id="register-form-email" name="email" value="" class="form-control" required="" />
								</div>

								<div class="col_full">
									<label for="register-form-phone">Phone:</label>
									<input type="text" id="register-form-phone" name="phone" value="" class="form-control" required=""/>
								</div>

								<div class="col_full">
									<label for="register-form-password">Choose Password:</label>
									<input type="password" id="register-form-password" name="password" value="" class="form-control" required=""/>
								</div>

								<div class="col_full">
									<label for="register-form-repassword">Re-enter Password:</label>
									<input type="password" id="register-form-repassword" name="re-password" value="" class="form-control" required=""/>
								</div>

								<div class="col_full">
									<input id="radio-10" class="radio-style" name="gender" type="radio" value="0" checked>
									<label for="radio-10" class="radio-style-3-label">Male</label>
									<input id="radio-11" class="radio-style" name="gender" type="radio" value="1">
									<label for="radio-11" class="radio-style-3-label">Female</label>
								</div>
								<div class="col_full nobottommargin">
									<button class="button button-3d button-black nomargin" id="register-form-submit" name="btSubmit" type="submit" value="Register">Register Now</button>
								</div>
							</form>
						</div>

					</div>

				</div>

			</div>
		</section><!-- #content end -->

		<!-- Modal Form -->
		<jsp:include page="include_file/modal_form.jsp"/>
		<!-- End Model From -->

		<!-- Footer
		============================================= -->
		<jsp:include page="include_file/footer.jsp"/>
		<!-- #footer end -->

	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/plugins.js"></script>
	<script type="text/javascript" src="js/bs-switches.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="js/functions.js"></script>

</body>
</html>