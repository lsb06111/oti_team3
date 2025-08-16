<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf"%>
<!-- 헤드 부분 고정 -->
<link rel="stylesheet" href="/oti_team3/assets/css/trip.css">
</head>
<body class="trip-body">
	<main class="trip-main">
		<nav class="nav step-nav my-4 mx-3" role="tablist" style="flex:1;">
	      	<a href="/oti_team3/" class="trip-sitename">TripNote</a>
			<button class="nav-link step-item active" data-bs-toggle="tab" data-bs-target="#trip-date" role="tab" onclick="exampleHiding(0)">
				<span class="step-title">날짜/지역</span>
			</button>
			<button class="nav-link step-item" data-bs-toggle="tab" data-bs-target="#trip-loc" role="tab" onclick="exampleHiding(1)">
				<span class="step-title">장소 선택</span>
			</button>
			<button class="nav-link step-item btn btn-primary" data-bs-toggle="tab" data-bs-target="#trip-confirm" role="tab" onclick="exampleHiding(2)">
				<span class="step-title">다음</span>
			</button>
		</nav>
		<!-- 왼쪽 사이드바 -->
		
		<!-- 지우기 여기부터  -->
		<div class="example-hiding" style="flex:11">
			<%@ include file="/jspf/trip/pre-trip.jspf" %>
		</div>
		
		<div class="example-hiding" style="display:none; flex:17;">
			<%@ include file="/jspf/trip/make-course.jspf" %>
		</div>
	</main>
	<script>
		function exampleHiding(exampleIndex){
			let exampleDoms = document.querySelectorAll('.example-hiding'); // array
			exampleDoms[exampleIndex].style.display = 'block';
			for(let exD in exampleDoms){
				if(exD != exampleIndex)
					exampleDoms[exD].style.display = 'none';
			}
		}
	
	</script>
	
	
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