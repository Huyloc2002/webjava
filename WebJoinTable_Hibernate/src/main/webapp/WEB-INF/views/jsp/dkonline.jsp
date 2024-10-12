<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
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
<link rel="stylesheet" type="text/css"
	href="resources/mega/styles/main_styles.css">
</head>
<body>

<div class="super_container">

	<%@include file="header.jsp" %>

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
						<img class="card-img-top" src="resources/images/C++.jpg" alt="https://unsplash.com/@kellybrito">
						<div class="card-body text-center">
							<div class="card-title"><a href="courses.html">Bắt Đầu Với C++</a></div>
							<div class="card-text">Adobe Guide, Layes, Smart Objects etc...</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							<div class="course_author_image">
								<img src="resources/images/author.jpg" alt="https://unsplash.com/@mehdizadeh">
							</div>
							<div class="course_author_name">Michael Smith, <span>Author</span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center"><span>$290</span></div><br>
					
						</div>
						<div><a class="btn btn-success" href="">Đăng Kí học</a></div>
					</div>
				</div>

				<div class="col-lg-3 course_box" style="color: black; justify-content:inherit; ;">
				Nhu cầu tuyển dụng ngành công nghệ thông tin hiện nay rất cao. Do đó các nhà tuyển dụng sẵn sàng đưa ra mức lương cao cho những lập trình viên có chuyên môn về C++ giỏi. Theo khảo sát của của VietnamSalary.vn vị trí lập trình viên nói chung có các mức lương như sau:

Lập trình viên dưới 1 năm kinh nghiệm: trung bình 9.8 triệu đồng/tháng.
<div>Lập trình viên từ 1- 4 năm kinh nghiệm: lương vào khoản 12 triệu đồng/tháng.
Với những vị trí chủ chốt, quan trọng cần nhiều kinh nghiệm thì một lập trình viên chuyên nghiệp có nhiều kỹ năng sẽ có thể đạt mức lương đến 30 triệu đồng/tháng.
Vì vậy để có cơ hội thăng tiến trong nghề lập trình, bạn phải không ngừng học hỏi và tích lũy kinh nghiệm.</div>
 Bên cạnh đó, việc nâng cao kiến thức và kỹ năng bằng những khóa học chuyên sâu cũng là điều bạn nên cân nhắc.

Hãy truy cập VieclamIT.vn, đây là cổng thông tin nghề nghiệp lớn dành cho dân công nghệ. Bạn sẽ được kết nối với các nhà tuyển dụng, các doanh nghiệp lớn nhỏ trên khắp cả nước và hoàn toàn có thể tìm được một công việc lập trình C++ theo mong muốn.
				</div>
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
									<input type="file" id="search_form_name" name="imgUrl"
										class="input_field search_form_name" placeholder="Ảnh Của Bạn">
							
							<input id="search_form_category" name="email"
								class="input_field search_form_category" type="text"
								placeholder="Email">  <label style="padding-right: 390px; color: black;">Ngày sinh</label><input id="search_form_degree"
								name="dateofBirth" class="input_field search_form_degree"
								type="date" placeholder="Ngày Sinh">
								<label style="color: black;">Giới Tính:</label>
										<input  type="radio" name="gender" value="true"> nam
                                  <input type="radio" name="gender" value="false"> nữ

							<textarea class="input_field search_form_degree" name="address"
								placeholder="Quê Quán"></textarea>
							<input id="search_form_degree" name="phoneNumber"
								class="input_field search_form_degree" type="text"
								placeholder="Số Điện Thoại"> <br> <label style="padding-right: 390px; color: black;">Ngày đăng kí</label>
									<input id="search_form_degree"
								name="dateregistration" class="input_field search_form_degree"
								type="date" placeholder="Ngày đăng kí">
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