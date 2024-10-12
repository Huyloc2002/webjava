<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<style>
	.error{
		color:red;
	}
</style>
<head>
<title>Course - Courses</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resources/mega/styles/bootstrap4/bootstrap.min.css">
<link
	href="resources/mega/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css"
	rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css"
	href="resources/mega/styles/main_styles.css">
<link rel="stylesheet" type="text/css"
	href="resources/mega/styles/courses_styles.css">
<link rel="stylesheet" type="text/css"
	href="resources/mega/styles/courses_responsive.css">
</head>
<body>
<%@include file="header.jsp" %>
	<div class="super_container">
<div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(resources/images/courses_background.jpg)"></div>
		</div>
		<div class="home_content">
			<h1>Courses</h1>
		</div>
	</div>
		<div class="popular page_section">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="section_title text-center">
							<h1>Khóa Học Phổ Biến</h1>
						</div>
					</div>
				</div>

				<div class="row course_boxes">

					<!-- Popular Course Item -->
					<div class="col-lg-3 course_box">
						<div class="card">
							<img class="card-img-top" src="resources/images/course_5.jpg"
								alt="https://unsplash.com/@claybanks1989">
							<div class="card-body text-center">
								<div class="card-title">
									<a href="courses.html">Băt đầu với JAVA..</a>
								</div>
								<div class="card-text">Adobe Guide, Layes, Smart Objects
									etc...</div>
							</div>
							<div class="price_box d-flex flex-row align-items-center">
								<div class="course_author_image">
									<img src="resources/images/author.jpg"
										alt="https://unsplash.com/@mehdizadeh">
								</div>
								<div class="course_author_name">
									Michael Smith, <span>Author</span>
								</div>
								<div
									class="course_price d-flex flex-column align-items-center justify-content-center">
									<span>$29</span>
								</div>
							</div>
							<div>
								<a class="btn btn-success" href="dkonline4">Đăng Kí học</a>
							</div>
						</div>
					</div>
					<div class="col-lg-3 course_box" style="color: black;">java là
						một trong những ngôn ngữ lập trình hướng đối tượng. Nó được sử
						dụng trong phát triển phần mềm, trang web, game hay ứng dụng trên
						các thiết bị di động. Java được khởi đầu bởi James Gosling và bạn
						đồng nghiệp ở Sun MicroSystem năm 1991. Ban đầu Java được tạo ra
						nhằm mục đích viết phần mềm cho các sản phẩm gia dụng, và có tên
						là Oak. Java được phát hành năm 1994, đến năm 2010 được Oracle mua
						lại từ Sun MicroSystem. Java được tạo ra với tiêu chí “Viết (code)
						một lần, thực thi khắp nơi” (Write Once, Run Anywhere – WORA).
						Chương trình phần mềm viết bằng Java có thể chạy trên mọi nền tảng
						(platform) khác nhau thông qua một môi trường thực thi với điều
						kiện có môi trường thực thi thích hợp hỗ trợ nền tảng đó.</div>
					<div class="col-md-6 course_box">
						<div
							class="search_section d-flex flex-column align-items-center justify-content-center">

							<div class="search_content text-center">
								<h1 style="color: greenyellow">ĐĂNG KÍ KHOÁ HỌC</h1>
								<br>
								<h3 style="color: red">${err }</h3>
								<h3 style="color: red">${succ }</h3>
								<form:form action="insertStudent" modelAttribute="s"
									method="post" class="search_form" id="search_form"
									enctype="multipart/form-data">
									<input id="search_form_name" name="studentName"
										class="input_field search_form_name" type="text"
										placeholder="Tên Của Bạn">
											<form:errors path="studentName" cssClass="error"></form:errors>	
									<input type="file" id="search_form_name" name="imgUrl"
										class="input_field search_form_name" placeholder="Ảnh Của Bạn"><br>
								
							<input id="search_form_category" name="email"
								class="input_field search_form_category" type="text"
								placeholder="Email">
								<form:errors path="email" cssClass="error"></form:errors>
								 <input id="search_form_degree"
								name="dateofBirth" class="input_field search_form_degree"
								type="date" placeholder="Ngày Sinh">
								<form:errors path="dateofBirth" cssClass="error"></form:errors><br>
								<label style="color: black;">Giới Tính:</label><br>
										<input  type="radio" name="gender" value="true"> nam
                                  <input type="radio" name="gender" value="false"> nữ <br>
                    	<form:errors path="gender" cssClass="error"></form:errors><br>
							<textarea class="input_field search_form_degree" name="address"
								placeholder="Quê Quán"></textarea><br>
								<form:errors path="address" cssClass="error"></form:errors>
							<input id="search_form_degree" name="phoneNumber"
								class="input_field search_form_degree" type="text"
								placeholder="Số Điện Thoại"> <br> 
								<form:errors path="phoneNumber" cssClass="error"></form:errors>
								<label></label>
							<form:select id="search_form_degree"
								class="input_field search_form_degree" path="course.couId">
								<form:options items="${listClas}" itemLabel="courseName"
									itemValue="couId" />
							</form:select>
							<button id="search_submit_button" type="submit"
								class="search_submit_button trans_200" value="Submit">Đăng
								Kí</button>
							<input id="search_submit_button"
								class="search_submit_button trans_200" type="reset"
								value="Làm Lại" />
							</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>

<%@include file="footer.jsp" %>

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
</body>
</html>