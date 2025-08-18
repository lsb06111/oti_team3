<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf"%>

<!-- 헤드 부분 고정 -->
<link rel="stylesheet" href="/oti_team3/assets/css/trip.css">


</head>
<body class="trip-body">

	<main class="trip-main">
		<!-- 왼쪽 네비 -->
		<nav class="nav step-nav my-4 mx-3" role="tablist" style="flex:1;">
	      	<a href="/oti_team3/" class="trip-sitename">TripNote</a>
			<button id = "trip-pre-step" class="nav-link step-item active" data-bs-toggle="tab" data-bs-target="#trip-date" role="tab" onclick="switchStep(0); toggleDoneBtn(this);">
				<span class="step-title">날짜/지역</span>
			</button>
			<button id = "trip-loc-step" class="nav-link step-item" data-bs-toggle="tab" data-bs-target="#trip-loc" role="tab" onclick="switchStep(1); toggleDoneBtn(this); resizeMap()">
				<span class="step-title">장소 선택</span>
			</button>
			<button id="trip-done-btn" class= "btn btn-primary" style="display:none; background: #5c99ee" 
					onclick="">일정 저장</button>
		</nav>
		<!-- 추천 관광지 창 -->
		<div class="trip-step" style="flex:11">
			<%@ include file="/jspf/trip/pre-trip.jspf" %>
		</div>
		
		<div class="trip-step" style="display:none; flex:17;">
			<%@ include file="/jspf/trip/make-course.jspf" %>
		</div>
	</main>
		
  <script src="/oti_team3/assets/js/trip.js"></script>
  <script src="/oti_team3/assets/js/map.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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