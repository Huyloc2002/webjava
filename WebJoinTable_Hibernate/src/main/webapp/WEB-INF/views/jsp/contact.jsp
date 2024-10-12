<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Course - Contact</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Course Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/bootstrap4/bootstrap.min.css">
<link href="resources/mega/plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="resources/mega/styles/contact_responsive.css">
 <link rel="shortcut icon" href="https://scontent.fdad3-5.fna.fbcdn.net/v/t39.30808-6/436410382_1136218980915900_5042798022893139571_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=5f2048&_nc_ohc=kyHfQw-CPMEQ7kNvgFxno_1&_nc_ht=scontent.fdad3-5.fna&oh=00_AYAGzGjlxF30B0GVqFmXMaPNfaLMPu3PiSHIfhf_JERfaA&oe=665F4B20" type="image/x-icon">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
    <style>
        #result{
            outline: none;
            border: none;
            border-bottom: 2px solid #F92D88; 
            margin-top: 15px;
            font-size: 13px;
        }
        .button{
            color: white;
            background-color: #F92D88;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            padding : 5px 10px 5px 10px;
            outline: none;
        }
        .button:hover{
            background-color: #f92d89b7;
            }
        .noti{
            position: fixed;
            font-size: 13px;
        }
        .info{
            position: relative;
            display: grid;
            color: white;
            grid-template-columns: 35px 1fr 35px;
            border-radius: 6px;
            padding: 5px;
            --color: #F92D88;
            background-image:
                linear-gradient(
                    to right, #f92d89b1, gray 90%
                );
            animation: show 0.3s ease 1 forwards
        }
        .info i{
            color: var(--color);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 15px;
        }
        .info title{
            font-size: x-large;
            font-weight: bold;
        }
        .info span, .info i:nth-child(3){
            color: white;
            opacity: 0.6;
        }
        @keyframes show{
            0%{
                transform: translateX(-100%);
            }
            40%{
                transform: translateX(-5%);
            }
            80%{
                transform: translateX(0%);
            }
            100%{
                transform: translateX(0%);
            }
        }
        .info::before{
            position: absolute;
            bottom: 0;
            left: 0;
            background-color: var(--color);
            width: 100%;
            height: 3px;
            content: '';
            box-shadow: 0 0 10px var(--color);
            animation: timeOut 5s linear 1 forwards;
        }
        @keyframes timeOut{
            to{
                width: 0;
            }
        }
    </style>

<body>
<%@include file="header.jsp" %>
<div class="super_container">
<div class="home">
		<div class="home_background_container prlx_parent">
			<div class="home_background prlx" style="background-image:url(resources/images/contact_background.jpg)"></div>
		</div>
		<div class="home_content">
			<h1>Liên Hệ</h1>
		</div>
	</div>
	<div class="popular page_section">
		<div class="container">

	<!-- Contact -->

	<div class="contact">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					
					<!-- Contact Form -->
					<div class="contact_form">
						<div class="contact_title">Liên lạc</div>

						<div class="contact_form_container">
							<form action="post">
								<input id="contact_form_name" class="input_field contact_form_name" type="text" placeholder="Tên" required="required" data-error="Name is required.">
								<input id="contact_form_email" class="input_field contact_form_email" type="email" placeholder="Email" required="required" data-error="Valid email is required.">
								<textarea id="contact_form_message" class="text_field contact_form_message" name="message" placeholder="Tin Nhắn" required="required" data-error="Please, write us a message."></textarea>
								<button id="send" type="button" class="contact_send_btn trans_200" value="Submit">Gửi</button>
								<p>
								 <input type="text" id="result" placeholder="Hi, NanLux">
        <button type="button" class="button" id="send">SEND</button>
        <p>
        <div class="noti" hidden id="modal">
            <div class="info">
                <i class="fa-solid fa-paper-plane"></i>
                <div class="content">
                    <div class="title">Success</div>
                    <span>Đã gửi tin nhắn thành công</span>
                </div>
                <i style="cursor: pointer;" class="fa-solid fa-xmark" id="close"></i>
            </div>
        </div>
							</form>
						</div>
					</div>
						
				</div>

				<div class="col-lg-4">
					<div class="about">
						<div class="about_title">Tham gia khóa học</div>
						<p class="about_text">Có trường hợp còn quảng cáo là phụ nữ có thai, không có men trước mặt các cầu thủ, thậm chí là bây giờ. Ai đang đợi tôi? Ngay cả bóng đá cũng thuần khiết và tình ái cũng không có gì khác biệt. Thật dễ dàng để cười vào cuối. Ngay cả bóng đá cũng thuần khiết và eros cũng không khác.</p>

						<div class="contact_info">
							<ul>
								<li class="contact_info_item">
									<div class="contact_info_icon">
										<img src="resources/images/placeholder.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									Blvd Libertad, 34 m05200 Arévalo
								</li>
								<li class="contact_info_item">
									<div class="contact_info_icon">
										<img src="resources/images/smartphone.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>
									0034 37483 2445 322
								</li>
								<li class="contact_info_item">
									<div class="contact_info_icon">
										<img src="resources/images/envelope.svg" alt="https://www.flaticon.com/authors/lucy-g">
									</div>hello@company.com
								</li>
							</ul>
						</div>

					</div>
				</div>

			</div>

			<!-- Google Map -->

			<div class="row">
				<div class="col">
					<div id="google_map">
						<div class="map_container">
							<div id="map"></div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
			
		</div>		
	</div>

	
<%@include file="footer.jsp" %>
</div>

<script>
document.getElementById("send").addEventListener('click', function(){
    document.getElementById("modal").style.display="block";
    });

    document.getElementById("close").addEventListener('click', function(){
    document.getElementById("modal").style.display="none";
    });

</script>

<script src="resources/js/bootstrap.bundle.min.js"></script>
<script src="resources/mega/styles/bootstrap4/popper.js"></script>
<script src="resources/mega/styles/bootstrap4/bootstrap.min.js"></script>
<script src="resources/mega/plugins/greensock/TweenMax.min.js"></script>
<script src="resources/mega/plugins/greensock/TimelineMax.min.js"></script>
<script src="resources/mega/plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="resources/mega/plugins/greensock/animation.gsap.min.js"></script>	
<script src="resources/mega/plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="resources/mega/plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="resources/mega/plugins/easing/easing.js"></script>
<script src="resources/mega/js/contact_custom.js"></script>
</body>
</html>