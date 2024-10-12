<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   
<!DOCTYPE html>
<html lang="en">
<head>
<title>Course - Courses</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/bootstrap4/bootstrap.min.css">
<link href="resources/mega/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/courses_styles.css">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/courses_responsive.css">
<link rel="stylesheet" type="text/css" href="resources/mega/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="resources/mega/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="resources/mega/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/responsive.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" >

</head>
<body>
<%@include file="header.jsp" %>
<div class="super_container">
<div class="home">

		<!-- Hero Slider -->
		<div class="hero_slider_container">
			<div class="hero_slider owl-carousel">
				
				<!-- Hero Slide -->
				<div class="hero_slide">
					<div class="hero_slide_background" style="background-image:url(resources/images/slider_background.jpg)"></div>
					<div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
						<div class="hero_slide_content text-center">
						</div>
					</div>
				</div>
				
				<!-- Hero Slide -->
				<div class="hero_slide">
					<div class="hero_slide_background" style="background-image:url(resources/images/slider_background.jpg)"></div>
					<div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
						<div class="hero_slide_content text-center">
						</div>
					</div>
				</div>
				
				<!-- Hero Slide -->
				<div class="hero_slide">
					<div class="hero_slide_background" style="background-image:url(resources/images/slider_background.jpg)"></div>
					<div class="hero_slide_container d-flex flex-column align-items-center justify-content-center">
						<div class="hero_slide_content text-center">
						</div>
					</div>
				</div>

			</div>
		</div>

	</div>
<div class="hero_boxes">
		<div class="hero_boxes_inner">
			<div class="container">
				<div class="row">

					<div class="col-lg-4 hero_box_col">
						<div class="hero_box d-flex flex-row align-items-center justify-content-start">
							<img src="resources/images/earth-globe.svg" class="svg" alt="">
							<div class="hero_box_content">
								<h2 class="hero_box_title">Khóa Học Online</h2>
								<a href="courses.html" class="hero_box_link">view more</a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 hero_box_col">
						<div class="hero_box d-flex flex-row align-items-center justify-content-start">
							<img src="resources/images/books.svg" class="svg" alt="">
							<div class="hero_box_content">
								<h2 class="hero_box_title">Thư viện chúng tôi</h2>
								<a href="courses.html" class="hero_box_link">view more</a>
							</div>
						</div>
					</div>

					<div class="col-lg-4 hero_box_col">
						<div class="hero_box d-flex flex-row align-items-center justify-content-start">
							<img src="resources/images/professor.svg" class="svg" alt="">
							<div class="hero_box_content">
								<h2 class="hero_box_title">Thư Viện Giáo Viên</h2>
								<a href="teachers.html" class="hero_box_link">view more</a>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>


	<!-- Popular -->

	<div class="popular page_section">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h1>khóa học Phổ Biến</h1>
					</div>
				</div>
			</div>

												
												<form action="searchByNameCou">
													<p>Tìm Kiếm Theo tên:</p>
													<input style="width: 30%; height: 40px;" type="text"
														name="courseName" /> <input class="btn btn-info" type="submit"
														value="Search" />
												</form>
												<c:if test="${empty list }">
													<h2 style="color: blue;">No DATA</h2>
												</c:if>
												<c:if test="${not empty list }">
													<h3 style="color: green;">${succ }</h3>
													<h3 style="color: red;">${err }</h3>
												

												</c:if>
													
			<div class="row course_boxes">
				
		<c:forEach items="${list }" var="c">
				<div class="col-lg-4 course_box">
					<img  style="width:100%" height="250px" src="<c:url value="resources"/>/images/${c.image}"/>
					
						<div class="card-body text-center">
							<div class="card-title"><a href="#">${c.courseName }</a></div>
							<div class="card-text">${c.courseText }</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							
							<div class="course_author_name"> <span> <fmt:formatNumber type ="currency">${c.price }</fmt:formatNumber></span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center">
							<span> ${c.time }</span></div>
						
						</div>
							<div><a class="btn btn-success " href="dkonline">Đăng Kí học</a>
							
							<a class="btn btn-outline-secondary ml-4" href="detail?couId=${c.couId }"><i class="fa fa-eye" aria-hidden="true"></i></a>
							</div>
							
							
				
				</div>
				</c:forEach>
				
					
				
				
				
													
			</div>
			
			<br>
			<c:forEach items="${listPage }" var="page">
														<a class="btn btn-dark"
															href="index?page=${page}">${page}</a>&nbsp;&nbsp;&nbsp;&nbsp;
													</c:forEach>
			
		
		</div>		
	</div>
	
	

	<!-- Register -->

	<div class="register">

		<div class="container-fluid">
			
			<div class="row row-eq-height">
				<div class="col-lg-6 nopadding">
					
					<!-- Register -->

					<div class="register_section d-flex flex-column align-items-center justify-content-center">
						<div class="register_content text-center">
							<h1 class="register_title">Đăng ký ngay và nhận ưu đãi<span>50%</span> giảm giá đến ngày 1 tháng 1</h1>
							<p class="register_text">Có trường hợp còn quảng cáo là phụ nữ có thai, không có men trước mặt các cầu thủ, thậm chí là bây giờ. Ai đang đợi tôi? Một số, quảng cáo trang điểm mang thai, không có sự phấn khích trước mặt người chơi, nhịp sống.</p>
							<div class="button button_1 register_button mx-auto trans_200"><a href="#">register now</a></div>
						</div>
					</div>

				</div>

				<div class="col-lg-6 nopadding">
					
					<!-- Search -->

					<div class="search_section d-flex flex-column align-items-center justify-content-center">
						<div class="search_background" style="background-image:url(resources/images/search_background.jpg);"></div>
						<div class="search_content text-center">
							<h1 class="search_title">Tìm kiếm khóa học của bạn</h1>
							<form id="search_form" class="search_form" action="post">
								<input id="search_form_name" class="input_field search_form_name" type="text" placeholder="Course Name" required="required" data-error="Course name is required.">
								<input id="search_form_category" class="input_field search_form_category" type="text" placeholder="Category">
								<input id="search_form_degree" class="input_field search_form_degree" type="text" placeholder="Degree">
								<button id="search_submit_button" type="submit" class="search_submit_button trans_200" value="Submit">Tìm kiếm khoá học</button>
							</form>
						</div> 
					</div>

				</div>
			</div>
		</div>
	</div>

<!-- Events -->

	<div class="events page_section">
		<div class="container">
			
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h1>sự kiện sắp tới</h1>
					</div>
				</div>
			</div>
			
			<div class="event_items">

				<!-- Event Item -->
				<div class="row event_item">
					<div class="col">
						<div class="row d-flex flex-row align-items-end">

							<div class="col-lg-2 order-lg-1 order-2">
								<div class="event_date d-flex flex-column align-items-center justify-content-center">
									<div class="event_day">07</div>
									<div class="event_month">Tháng Một</div>
								</div>
							</div>

							<div class="col-lg-6 order-lg-2 order-3">
								<div class="event_content">
									<div class="event_name"><a class="trans_200" href="#">Lễ hội sinh viên</a></div>
									<div class="event_location">Công viên trung tâm lớn</div>
									<p>Có trường hợp còn quảng cáo là phụ nữ có thai, không có men trước mặt các cầu thủ, thậm chí là bây giờ. Tôi đã mong đợi ai ở anh ấy.</p>
								</div>
							</div>

							<div class="col-lg-4 order-lg-3 order-1">
								<div class="event_image">
									<img src="resources/images/event_1.jpg" alt="https://unsplash.com/@theunsteady5">
								</div>
							</div>

						</div>	
					</div>
				</div>

				<!-- Event Item -->
				<div class="row event_item">
					<div class="col">
						<div class="row d-flex flex-row align-items-end">

							<div class="col-lg-2 order-lg-1 order-2">
								<div class="event_date d-flex flex-column align-items-center justify-content-center">
									<div class="event_day">07</div>
									<div class="event_month">Tháng 2</div>
								</div>
							</div>

							<div class="col-lg-6 order-lg-2 order-3">
								<div class="event_content">
									<div class="event_name"><a class="trans_200" href="#">Ngày khai giảng tại khuôn viên trường Đại học</a></div>
									<div class="event_location">Công viên trung tâm lớn</div>
<p>Có trường hợp còn quảng cáo là phụ nữ có thai, không có men trước mặt các cầu thủ, thậm chí là bây giờ. Tôi đã mong đợi ai ở anh ấy.</p>
								</div>
							</div>

							<div class="col-lg-4 order-lg-3 order-1">
								<div class="event_image">
									<img src="resources/images/event_2.jpg" alt="https://unsplash.com/@claybanks1989">
								</div>
							</div>

						</div>	
					</div>
				</div>

				<!-- Event Item -->
				<div class="row event_item">
					<div class="col">
						<div class="row d-flex flex-row align-items-end">

							<div class="col-lg-2 order-lg-1 order-2">
								<div class="event_date d-flex flex-column align-items-center justify-content-center">
									<div class="event_day">07</div>
									<div class="event_month">Tháng 3</div>
								</div>
							</div>

							<div class="col-lg-6 order-lg-2 order-3">
								<div class="event_content">
									<div class="event_name"><a class="trans_200" href="#">Ngày khai giảng tại khuôn viên trường Đại học</a></div>
									<div class="event_location">Công viên trung tâm lớn</div>
<p>Có trường hợp còn quảng cáo là phụ nữ có thai, không có men trước mặt các cầu thủ, thậm chí là bây giờ. Tôi đã mong đợi ai ở anh ấy.</p>
								</div>
							</div>

							<div class="col-lg-4 order-lg-3 order-1">
								<div class="event_image">
									<img src="resources/images/event_3.jpg" alt="https://unsplash.com/@juanmramosjr">
								</div>
							</div>

						</div>	
					</div>
				</div>

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


<script src="resources/mega/js/jquery-3.2.1.min.js"></script>
<script src="resources/mega/styles/bootstrap4/popper.js"></script>
<script src="resources/mega/styles/bootstrap4/bootstrap.min.js"></script>
<script src="resources/mega/plugins/greensock/TweenMax.min.js"></script>
<script src="resources/mega/plugins/greensock/TimelineMax.min.js"></script>
<script src="resources/mega/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="resources/mega/plugins/greensock/animation.gsap.min.js"></script>
<script src="resources/mega/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="resources/mega/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="resources/mega/plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="resources/mega/plugins/easing/easing.js"></script>
<script src="resources/mega/js/custom.js"></script>
<%@include file="footer.jsp" %>
</body>
</html>