<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf"%>
<!-- 헤드 부분 고정 -->
<link rel="stylesheet" href="/oti_team3/assets/css/trip.css">
</head>
<body class="trip-body">
<%@ include file="/jspf/header.jspf"%>
	<main class="trip-main">
		<section class="trip-left-nav" style="width:130px">
			<nav class="nav step-nav" role="tablist">
				<button class="nav-link step-item active" data-bs-toggle="tab" data-bs-target="#trip-date" role="tab" onclick="exampleHiding(0)">
					<span class="step-title">날짜/지역</span>
				</button>
				<button class="nav-link step-item" data-bs-toggle="tab" data-bs-target="#trip-loc" role="tab" onclick="exampleHiding(1)">
					<span class="step-title">장소 선택</span>
				</button>
				<button class="nav-link step-item" data-bs-toggle="tab" data-bs-target="#trip-confirm" role="tab" onclick="exampleHiding(2)">
					<span class="step-title">일정 확인</span>
				</button>
			</nav>
		</section>
		<!-- 왼쪽 사이드바 -->
		
		<!-- 지우기 여기부터  -->
		<div class="example-hiding" style="flex:1">
			<%@ include file="/jspf/trip/pre-trip.jspf" %>
		</div>
		
		<div class="example-hiding" style="display:none; flex:1;">
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