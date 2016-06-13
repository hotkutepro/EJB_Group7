<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<jsp:include page="include_file/css.jsp"/>

	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->

	<!-- Document Title
	============================================= -->
	<title>404 | Page</title>

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
				<h1>Page Not Found</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">Pages</a></li>
					<li class="active">404</li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<div class="col_half nobottommargin">
						<div class="error404 center">404</div>
					</div>

					<div class="col_half nobottommargin col_last">

						<div class="heading-block nobottomborder">
							<h4>Ooopps.! The Page you were looking for, couldn't be found.</h4>
							<span>Try searching for the best match or browse the links below:</span>
						</div>

						<form action="#" method="get" role="form" class="nobottommargin">
							<div class="input-group input-group-lg">
								<input type="text" class="form-control" placeholder="Search for Pages...">
								<span class="input-group-btn">
									<button class="btn btn-danger" type="button">Search</button>
								</span>
							</div>
						</form>

						<div class="col_one_third widget_links topmargin nobottommargin">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="#">About</a></li>
								<li><a href="#">FAQs</a></li>
							</ul>
						</div>

						<div class="col_one_third widget_links topmargin nobottommargin">
							<ul>
								<li><a href="#">Shop</a></li>
								<li><a href="#">Portfolio</a></li>
								<li><a href="#">Blog</a></li>
							</ul>
						</div>

						<div class="col_one_third widget_links topmargin nobottommargin col_last">
							<ul>
								<li><a href="#">Support</a></li>
								<li><a href="#">Forums</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>

					</div>

				</div>

			</div>

		<!-- Modal Form -->
		<jsp:include page="include_file/modal_form.jsp"/>
		<!-- End Model From -->

		</section><!-- #content end -->

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

	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="js/functions.js"></script>

</body>
</html>