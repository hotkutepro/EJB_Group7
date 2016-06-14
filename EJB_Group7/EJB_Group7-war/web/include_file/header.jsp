<%-- 
    Document   : header
    Created on : May 20, 2016, 11:32:09 PM
    Author     : Quy.heo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <header id="header" class="full-header">

			<div id="header-wrap">

				<div class="container clearfix">

					<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

					<!-- Logo
					============================================= -->
					<div id="logo">
						<a href="index.html" class="standard-logo" data-dark-logo="images/logo-dark.png"><img src="images/logo.png" alt="Canvas Logo"></a>
						<a href="index.html" class="retina-logo" data-dark-logo="images/logo-dark@2x.png"><img src="images/logo@2x.png" alt="Canvas Logo"></a>
					</div><!-- #logo end -->

					<!-- Primary Navigation
					============================================= -->
					<nav id="primary-menu">

						<ul>
							<li class="current"><a href="index"><div>Home</div></a>
								<ul>									
                                                                    <c:forEach items="${categories}" var="category">
                                                                        <li><a href="postByCategory?categoryId=${category.getCategoryID()}"><div>${category.getName()}</div></a></li>                                                                                        
                                                                    </c:forEach> 									
								</ul>
							</li>
							<li class=""><a href="search"><div>Search</div></a>
								<ul>
									<li><a href="#"><div><i class="icon-stack"></i>Sliders</div></a>
										<ul>
											<li><a href="slider-revolution.html"><div>Revolution Slider</div></a>
												<ul>
													<li><a href="rs-demo-premium-concept.html"><div>Premium Templates</div></a></li>
													<li><a href="slider-revolution.html"><div>Full Screen</div></a></li>
												</ul>
											</li>
											<li><a href="slider-nivo.html"><div>Nivo Slider</div></a></li>
										</ul>
									</li>
									<li><a href="widgets.html"><div><i class="icon-gift"></i>Widgets</div></a>
										<ul>
											<li><a href="widgets.html"><div>Links</div></a></li>
										</ul>
									</li>
									<li><a href="#"><div><i class="icon-adjust"></i>Dark Version</div></a></li>
								</ul>
							</li>
							<li class="mega-menu"><a href="contact"><div>Contact</div></a>
								<div class="mega-menu-content clearfix">
									<ul class="mega-menu-column col-5">
										<li><a href="animations.html"><div><i class="icon-magic"></i>Animations</div></a></li>
										<li><a href="buttons.html"><div><i class="icon-link"></i>Buttons</div></a></li>
										<li><a href="carousel.html"><div><i class="icon-heart3"></i>Carousel</div></a></li>
										<li><a href="component-datepicker.html"><div><i class="icon-calendar3"></i>Date &amp; Time Pickers</div></a></li>
									</ul>
									<ul class="mega-menu-column col-5">
										<li><a href="dividers.html"><div><i class="icon-indent-right"></i>Dividers</div></a></li>
										<li><a href="featured-boxes.html"><div><i class="icon-lightbulb"></i>Icon Boxes</div></a></li>
										<li><a href="gallery.html"><div><i class="icon-picture"></i>Galleries</div></a></li>
										<li><a href="component-uploads.html"><div><i class="icon-line-upload"></i>File Uploads</div></a></li>
									</ul>
								</div>
							</li>
							<li class=""><a href="sitemap"><div>Sitemap</div></a></li>
							<li class=""><a href="about"><div>About</div></a></li>
                                                        
                                                        <c:choose>
                                                            <c:when test= "${sessionScope.ssRole == '0'}">
                                                                <li class=""><a href="Logout"><div>Logout</div></a></li>
                                                                <li class=""><a href="admin/"><div>Admin</div></a></li>
                                                            </c:when>
                                                            <c:when test= "${sessionScope.ssUser != null}">
                                                                <li class=""><a href="Logout"><div>Logout</div></a></li>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <li class=""><a href="login"><div>Login</div></a></li>
                                                            </c:otherwise>
                                                        </c:choose>
							
						</ul>
						<!-- Top Logout
						============================================= -->
						<div id="top-cart">
							<a href="#modal-login-form" data-lightbox="inline" class="header-login-trigger"><i class="icon-line2-login"></i></a>
						</div><!-- #top-cart end -->

						<!-- Top Search
						============================================= -->
						<div id="top-search">
							<a href="#" id="top-search-trigger"><i class="icon-search3"></i><i class="icon-line-cross"></i></a>
							<form action="search.html" method="get">
								<input type="text" name="q" class="form-control" value="" placeholder="Type &amp; Hit Enter..">
							</form>
						</div><!-- #top-search end -->

					</nav><!-- #primary-menu end -->

				</div>

			</div>
		</header>
    </body>
</html>
