<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<body>
<%@include file="header.jsp" %>
<div class="super_container">
<div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(resources/images/courses_background.jpg)"></div>
		</div>
		<div class="home_content">
			<h1>KHÓA HỌC</h1>
		</div>
	</div>
	<div class="popular page_section">
	
	
		<div class="container">
		
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h1>Khóa Học </h1>
					</div>
				</div>
			</div>

			<div class="row course_boxes">
				<c:forEach items="${list }" var="c">
				<div class="col-lg-4 course_box">
					<img  style="width:100%" src="<c:url value="resources"/>/images/${c.image}"/>
					
						<div class="card-body text-center">
							<div class="card-title"><a href="#">${c.courseName }</a></div>
							<div class="card-text">${c.courseText }</div>
						</div>
						<div class="price_box d-flex flex-row align-items-center">
							
							<div class="course_author_name"> <span> <fmt:formatNumber type ="currency">${c.price }</fmt:formatNumber></td></span></div>
							<div class="course_price d-flex flex-column align-items-center justify-content-center">
							<span> ${c.time }</span></div>
						
						</div>
							<div><a class="btn btn-success " href="dkonline">Đăng Kí học</a>
							
							<a class="btn btn-outline-secondary ml-4" href="detail?couId=${c.couId }"><i class="fa fa-eye" aria-hidden="true"></i></a>
							</div>
							
							
				
				</div>
				</c:forEach>
				<!-- Popular Course Item -->
				
				

			</div>
		</div>		
	</div>

	
<%@include file="footer.jsp" %>
</div>


</body>
</html>