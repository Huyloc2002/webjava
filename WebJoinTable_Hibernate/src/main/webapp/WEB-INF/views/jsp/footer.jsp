<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
</head>
<body>

<div class="super_container">

	<footer class="footer">
		<div class="container">
			
			<!-- Newsletter -->

			<div class="newsletter">
				<div class="row">
					<div class="col">
						<div class="section_title text-center">
							<h1>Đăng ký nhận bản tin</h1>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col text-center">
						<div class="newsletter_form_container mx-auto">
							<form action="post">
								<div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-center">
									<input id="newsletter_email" class="newsletter_email" type="email" placeholder="Email Address" required="required" data-error="Valid email is required.">
									<button id="newsletter_submit" type="submit" class="newsletter_submit_btn trans_300" value="Submit">Subscribe</button>
								</div>
							</form>
						</div>
					</div>
				</div>

			</div>

			<!-- Footer Content -->

			<div class="footer_content">
				<div class="row">

					<!-- Footer Column - About -->
					<div class="col-lg-3 footer_col">

						<!-- Logo -->
						<div class="logo_container">
							<div class="logo">
								<img src="resources/images/logo.png" alt="">
								<span>course</span>
							</div>
						</div>

						<p class="footer_about_text">
Có trường hợp còn quảng cáo là phụ nữ có thai, không có men trước mặt các cầu thủ, thậm chí là bây giờ. Ai đang đợi tôi?</p>

					</div>

					<!-- Footer Column - Menu -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Menu</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_list_item"><a href="#">Trang Chủ</a></li>
								<li class="footer_list_item"><a href="#">Khoá Học</a></li>
								<li class="footer_list_item"><a href="courses.html">Lịch khái giảng</a></li>
								<li class="footer_list_item"><a href="news.html">Tin tức</a></li>
								<li class="footer_list_item"><a href="contact.html">Liên Hệ</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Column - Usefull Links -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Liên kết hữu ích</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_list_item"><a href="#">Lời chứng thực</a></li>
								<li class="footer_list_item"><a href="#">FAQ</a></li>
								<li class="footer_list_item"><a href="#">Cộng đồng</a></li>
								<li class="footer_list_item"><a href="#">Hình ảnh khuôn viên trường</a></li>
								<li class="footer_list_item"><a href="#">Học phí</a></li>
							</ul>
						</div>
					</div>

					<!-- Footer Column - Contact -->

					<div class="col-lg-3 footer_col">
						<div class="footer_column_title">Liên Hệ</div>
						<div class="footer_column_content">
							<ul>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="resources/images/placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									Blvd Libertad, 34 m05200 Arévalo
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="resources/images/smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									0034 37483 2445 322
								</li>
								<li class="footer_contact_item">
									<div class="footer_contact_icon">
										<img src="resources/images/envelope.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>hello@company.com
								</li>
							</ul>
						</div>
					</div>

				</div>
			</div>

			<!-- Footer Copyright -->

			<div class="footer_bar d-flex flex-column flex-sm-row align-items-center">
				<div class="footer_copyright">
					<span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
				</div>
				<div class="footer_social ml-sm-auto">
					<ul class="menu_social">
						<li class="menu_social_item"><a href="#"><i class="fab fa-pinterest"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-instagram"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-facebook-f"></i></a></li>
						<li class="menu_social_item"><a href="#"><i class="fab fa-twitter"></i></a></li>
					</ul>
				</div>
			</div>

		</div>
	</footer>

</div>

<script src="resources/js/jquery-3.2.1.min.js"></script>
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
<script src="resources/js/custom.js"></script>

</body>
</html>