<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"
	value="${pageContext.servletContext.contextPath}" scope="session" />
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="${contextPath}/user/css/bootstrap.min.css" />
<link rel="stylesheet" href="${contextPath}/user/css/style.css" />
<title>Course - Courses</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/contact_responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header d-flex flex-row">
		<div class="header_content d-flex flex-row align-items-center">
			<!-- Logo -->
			<div class="logo_container">
				<div class="logo">
					<img src="resources/images/logo.png" alt="">
					<span>KHÓA HỌC</span>
				
				</div>
			</div>

			<!-- Main Navigation -->
			<nav class="main_nav_container">
				<div class="main_nav">
					<ul class="main_nav_list">
						<li class="main_nav_item"><a href="index">home</a></li>
						<li class="main_nav_item"><a href="courses">khóa học</a></li>
						<li class="main_nav_item"><a href="courses2">lịch khai giảng</a></li>
						<li class="main_nav_item"><a href="contact">liên hệ</a></li>
						<li class="main_nav_item"><a href="new">Tin Tức</a></li>
						
						
					</ul>
				</div>
			</nav>
		</div>
		<div class="header_side d-flex flex-row justify-content-center align-items-center">
		<div class="col-md-12">
		
		<c:choose>
							<c:when test="${!empty sessionScope.userid}">
							<span style="color: black;" class="nav-link">Xin
									chào: ${sessionScope.fullname} <img class="my-picture"
								src="resources/user/${sessionScope.picture}" /></span>
									
							<a
								class="nav-link btn btn-primary" href="${contextPath}/thoat">
									Thoát</a></li>
						</c:when>
						<c:otherwise>
							<a
								class="nav-link btn btn-success" href="${contextPath}/loginstu">
									Đăng nhập</a>
						</c:otherwise>
						
						</c:choose>
		
		</div>                              
		
		</div>

		<!-- Hamburger -->
		<div class="hamburger_container">
			<i class="fas fa-bars trans_200"></i>
		</div>

	</header>
	
	<!-- Menu -->
	<div class="menu_container menu_mm">

		<!-- Menu Close Button -->
		<div class="menu_close_container">
			<div class="menu_close"></div>
		</div>

		<!-- Menu Items -->
		<div class="menu_inner menu_mm">
			<div class="menu menu_mm">
				<ul class="menu_list menu_mm">
					<li class="main_nav_item"><a href="#">home</a></li>
					<li class="main_nav_item"><a href="courses">khóa học</a></li>
					<li class="main_nav_item"><a href="courses">lịch khai giảng</a></li>
					<li class="main_nav_item"><a href="contact">liên hệ</a></li>
								<li class="main_nav_item"><a href="contact">liên hệ</a></li>
				</ul>

				<!-- Menu Social -->
				
				<div class="menu_social_container menu_mm">
					<ul class="menu_social menu_mm">
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>

				<div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
			</div>

		</div>

	</div>

	

</div>

<script src="resources/mega/js/jquery-3.2.1.min.js"></script>
<script src="resources/mega/styles/bootstrap4/popper.js"></script>
<script src="resources/mega/styles/bootstrap4/bootstrap.min.js"></script>
<script src="resources/mega/plugins/greensock/TweenMax.min.js"></script>
<script src="resources/mega/plugins/greensock/TimelineMax.min.js"></script>
<script src="resources/mega/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="resources/mega/plugins/greensock/animation.gsap.min.js"></script>
<script src="resources/mega/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="resources/mega/plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="resources/mega/plugins/easing/easing.js"></script>
<script src="resources/mega/js/courses_custom.js"></script>
<script src="resources/mega/js/contact_custom.js"></script>

<script src="${contextPath}/user/js/jquery-3.7.1.min.js"></script>
<script src="${contextPath}/user/js/popper.min.js"></script>
<script src="${contextPath}/user/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${contextPath}/user/js/home.js"></script>
</body>
</html>