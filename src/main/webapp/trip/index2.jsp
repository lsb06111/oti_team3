<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf"%>  
  
<!-- 헤드 부분 고정 -->
<link rel="stylesheet" href="/oti_team3/assets/css/trip.css">
<link rel="stylesheet" href="/oti_team3/assets/css/map.css">
<link  href="https://code.jquery.com/ui/1.13.3/themes/base/jquery-ui.css" rel="stylesheet">

</head>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.3/jquery-ui.min.js"></script>

<body class="trip-body">
	<main class="trip-main">              
		<!-- 왼쪽 네비 -->
		<nav class="nav my-4 mx-3 d-flex flex-column justify-content-between" role="tablist" style="flex:1;">
			<div class="step-nav">  
	      		<a href="/oti_team3/" class="trip-sitename">TripNote</a>
				<button id = "trip-pre-step" class="nav-link step-item" data-bs-toggle="tab" data-bs-target="" role="tab" onclick="location.href='/oti_team3/trip'">
					<span class="step-title">날짜/지역</span> 
				</button> 
				<button id = "trip-loc-step" class="nav-link step-item active" data-bs-toggle="tab" data-bs-target="" role="tab" onclick="location.href='/oti_team3/trip/index2.jsp'">
					<span class="step-title">장소 선택</span>
				</button>
			</div>
			<button id="trip-done-btn" class= "btn btn-primary" style="background: #5c99ee; margin-bottom: 10px;">일정 저장</button>
		</nav>  
		<div class="trip-step" style="flex:17;">
			<%@ include file="/jspf/trip/make-course.jspf" %>
		</div>
	</main> 
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=460e38b5e2a79f0329a7652a9b1836dd&libraries=services"></script>
  <script src="/oti_team3/assets/js/map.js"></script>
  <script src="/oti_team3/assets/js/trip.js"></script>
  <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	  <!-- Vendor JS Files -->
  <script src="/oti_team3/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/oti_team3/assets/vendor/php-email-form/validate.js"></script>
  <script src="/oti_team3/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/oti_team3/assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="/oti_team3/assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="/oti_team3/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="/oti_team3/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <!-- Main JS File -->
  <script src="/oti_team3/assets/js/main.js"></script>
</body>
</html>