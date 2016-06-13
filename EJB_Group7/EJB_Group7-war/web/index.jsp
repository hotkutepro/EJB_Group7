<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />
    <jsp:include page="include_file/css.jsp"/>
        
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->

	<!-- Document Title
	============================================= -->
	<title>Home | Page</title>


</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<jsp:include page="include_file/header.jsp"/>
                <!-- #header end -->

		<!-- Slider
		============================================= -->
                <jsp:include page="include_file/slider.jsp"/>
                <!-- #Slider end -->

		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>Blog</h1>
				<span>Our Latest News in Grid Layout</span>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li class="active">Blog</li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					<!-- Post Content
					============================================= -->
					<div class="postcontent nobottommargin clearfix">

						<!-- Posts
						============================================= -->
						<div id="posts" class="post-grid grid-container grid-3 clearfix" data-layout="fitRows">

							<div class="entry clearfix">
								<div class="entry-image clearfix">
									<div class="fslider" data-animation="fade" data-pagi="false" data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div class="slide"><a href="images/blog/full/2.jpg" data-lightbox="gallery-item"><img class="image_fade" src="images/blog/grid/2.jpg" alt="Standard Post with Gallery"></a></div>
												<div class="slide"><a href="images/blog/full/3.jpg" data-lightbox="gallery-item"><img class="image_fade" src="images/blog/grid/3.jpg" alt="Standard Post with Gallery"></a></div>
												<div class="slide"><a href="images/blog/full/12.jpg" data-lightbox="gallery-item"><img class="image_fade" src="images/blog/grid/12.jpg" alt="Standard Post with Gallery"></a></div>
												<div class="slide"><a href="images/blog/full/13.jpg" data-lightbox="gallery-item"><img class="image_fade" src="images/blog/grid/13.jpg" alt="Standard Post with Gallery"></a></div>
											</div>
										</div>
									</div>
								</div>
								<div class="entry-title">
									<h2><a href="blog-single-thumbs.html">This is a Standard post with Fade Gallery</a></h2>
								</div>
								<ul class="entry-meta clearfix">
									<li><i class="icon-calendar3"></i> 3rd Mar 2014</li>
									<li><a href="blog-single-thumbs.html#comments"><i class="icon-comments"></i> 21</a></li>
									<li><a href="#"><i class="icon-picture"></i></a></li>
								</ul>
								<div class="entry-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur!</p>
									<a href="blog-single-thumbs.html"class="more-link">Read More</a>
								</div>
							</div>

							<div class="entry clearfix">
								<div class="entry-image">
									<iframe width="560" height="315" src="http://www.youtube.com/embed/SZEflIVnhH8" frameborder="0" allowfullscreen></iframe>
								</div>
								<div class="entry-title">
									<h2><a href="blog-single-full.html">This is a Standard post with a Youtube Video</a></h2>
								</div>
								<ul class="entry-meta clearfix">
									<li><i class="icon-calendar3"></i> 30th Apr 2014</li>
									<li><a href="blog-single-full.html#comments"><i class="icon-comments"></i> 34</a></li>
									<li><a href="#"><i class="icon-film"></i></a></li>
								</ul>
								<div class="entry-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur!</p>
									<a href="blog-single-full.html"class="more-link">Read More</a>
								</div>
							</div>

							<div class="entry clearfix">
								<div class="entry-image clearfix">
									<div class="fslider" data-animation="fade" data-pagi="false" data-lightbox="gallery">
										<div class="flexslider">
											<div class="slider-wrap">
												<div class="slide"><a href="images/blog/full/2.jpg" data-lightbox="gallery-item"><img class="image_fade" src="images/blog/grid/2.jpg" alt="Standard Post with Gallery"></a></div>
												<div class="slide"><a href="images/blog/full/3.jpg" data-lightbox="gallery-item"><img class="image_fade" src="images/blog/grid/3.jpg" alt="Standard Post with Gallery"></a></div>
												<div class="slide"><a href="images/blog/full/12.jpg" data-lightbox="gallery-item"><img class="image_fade" src="images/blog/grid/12.jpg" alt="Standard Post with Gallery"></a></div>
												<div class="slide"><a href="images/blog/full/13.jpg" data-lightbox="gallery-item"><img class="image_fade" src="images/blog/grid/13.jpg" alt="Standard Post with Gallery"></a></div>
											</div>
										</div>
									</div>
								</div>
								<div class="entry-title">
									<h2><a href="blog-single-thumbs.html">This is a Standard post with Fade Gallery</a></h2>
								</div>
								<ul class="entry-meta clearfix">
									<li><i class="icon-calendar3"></i> 3rd Mar 2014</li>
									<li><a href="blog-single-thumbs.html#comments"><i class="icon-comments"></i> 21</a></li>
									<li><a href="#"><i class="icon-picture"></i></a></li>
								</ul>
								<div class="entry-content">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, voluptatem, dolorem animi nisi autem blanditiis enim culpa reiciendis et explicabo tenetur!</p>
									<a href="blog-single-thumbs.html"class="more-link">Read More</a>
								</div>
							</div>

						</div><!-- #posts end -->

						<!-- Pagination
						============================================= -->
						<ul class="pager nomargin">
							<li class="previous"><a href="#">&larr; Older</a></li>
							<li class="next"><a href="#">Newer &rarr;</a></li>
						</ul><!-- .pager end -->

					</div><!-- .postcontent end -->

					<!-- Sidebar
					============================================= -->
					<jsp:include page="include_file/sidebar.jsp"/>
					<!-- .sidebar end -->

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
	<!-- Footer Scripts
	============================================= -->
	<script type="text/javascript" src="js/functions.js"></script>

</body>
</html>