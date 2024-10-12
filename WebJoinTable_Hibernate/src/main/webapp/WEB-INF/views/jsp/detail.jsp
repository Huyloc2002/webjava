<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
					</br>
				</br>
						<h1>Chi Tiết Khóa Học</h1>
					</div>
				</div>
			</div>

			<div class="row course_boxes">
				
				<div class="col-lg-8 course_box">
					<img  style="width:100%" height="450px" src="<c:url value="resources"/>/images/${c.image}"/>
				</div>
				
				<div class="col-lg-4 course_box">
			<div class="card-body text-center">
							<div class="card-title"><a href="#">THÔNG TIN KHÓA HỌC : ${c.courseName }</a></div>
							</br>
							</br>
							<div class="card-text">${c.courseText }</div>
						</div>
						<div >
						</br>
						</br>
							<h3 class="card-title" style="color: red;" > <span> GIÁ : <fmt:formatNumber type ="currency">${c.price }</fmt:formatNumber></span></h3>
							<h3 class="card-title" >
							</br>
							</br>
							<span>  THỜI GIAN HỌC : ${c.time }</span></h3>
						
						</div>
							
							
							
							</div>	
				</div>
			
				
					</br>
					</br>
					<h2 style="color :orange;">Thời đại 4.0 - Thời đại của ngành Lập trình</h2>
					</br>
					</br> 
					
					<h3 ">Ngành khát nhân lực bậc nhất</h3>
				
				</br>
				</br>
				
				Việt Nam đang cần thêm 700.000 nhân lực IT. Thống kê số lượng tuyển dụng nhân sự IT trên các kênh tuyển dụng qua các năm.
				<div>
				
				</br>
				<h3 ">Mức lương "khủng"</h3>
				</br>
				Mức lương "khủng"
Lương IT phụ thuộc vào kinh nghiệm thực tế,
"tuổi nghề" của bạn.

</br>
					</br>
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