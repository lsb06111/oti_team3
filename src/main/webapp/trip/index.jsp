<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf"%>
<!-- 헤드 부분 고정 -->
<link rel="stylesheet" href="/oti_team3/assets/css/trip.css">
</head>
<body class="trip-body">
<%@ include file="/jspf/header.jspf"%>
	<main class="trip-main">
		<section class="trip-left-nav">
			<nav class="nav step-nav" role="tablist">
				<button class="nav-link step-item" data-bs-toggle="tab" data-bs-target="#date" role="tab">
					<span class="step-title">날짜 및 지역</span>
				</button>
				<button class="nav-link step-item active" data-bs-toggle="tab" data-bs-target="#loc" role="tab">
					<span class="step-title">장소 선택</span>
				</button>
				<button class="nav-link step-item" data-bs-toggle="tab" data-bs-target="#confirm" role="tab">
					<span class="step-title">일정 확인</span>
				</button>
			</nav>
		</section>
		
		<!-- 왼쪽 사이드바 -->
		<section class="tab-pane trip-sidebar-left " id = "home" aria-label="장소 리스트">
			<div class="d-flex justify-content-between align-items-end mb-3">
			  <span class="fw-bold fs-2">제주</span>
			  <span class="px-2 py-1">2025.08.12(화) - 2025.08.15(금)</span>
			</div>
			<div class="trip-tabs mb-2" id="trip-loc-tab" role="tablist">
				<button class="trip-tab is-active" role="tab" aria-selected="true" onclick="toggleLoc(this)" >추천</button>
				<button id="trip-tab-search" class="trip-tab" role="tab" aria-selected="false" onclick="toggleLoc(this)">직접 검색</button>
				<!-- 파란 인디케이터 -->
				<span class="trip-tab-indicator"></span>
			</div>
			<form action="..." method="post" id="trip-search-form" style="display:none; " class="mt-1">
              <div class="d-flex flex-row">
				<input type="text" name="query" class="form-control"
					placeholder="장소명을 입력하세요">
				<button type="submit" class="btn-search">
					<i class="fa fa-search"></i>
				</button>
			  </div>
			</form>
		    <div class="trip-loc-tags my-2">
	            <span class="trip-loc-tag">명소</span>
	            <span class="trip-loc-tag">식당</span>
	            <span class="trip-loc-tag">카페</span>
	            <span class="trip-loc-tag">친구 추천</span>
            </div>
			<%@ include file="/jspf/trip/trip-loc.jspf"%>
			<%@ include file="/jspf/trip/trip-loc.jspf"%>
		</section>
		<!-- 중간 일정 타임라인 -->
		<section class="trip-schedule" >
			<div class="trip-schedule-header">
				하와이 <small style="font-weight: normal; color: #999;">2025.9.6 - 2025.9.9</small>
			</div>
			<div class="trip-timeline">
				<div class="trip-timeline-day">
					<div class="trip-timeline-day-header">
						<!-- Tabs: 일정 일차 선택 -->
						<div class="trip-tabs" id="dayTabs" role="tablist" aria-label="일차 선택">
							<button class="trip-tab is-active" role="tab" aria-selected="true" data-day="1">1일</button>
							<button class="trip-tab" role="tab" aria-selected="false" data-day="2">2일</button>
							<button class="trip-tab" role="tab" aria-selected="false" data-day="3">3일</button>
							<button class="trip-tab" role="tab" aria-selected="false" data-day="4">4일</button>
							<button class="trip-tab" role="tab" aria-selected="false" data-day="5">5일</button>
							<!-- 파란 인디케이터 -->
							<span class="trip-tab-indicator"></span>
						</div>
					</div>
					<%@ include file="/jspf/trip/trip-course.jspf"%>
					<%@ include file="/jspf/trip/trip-course.jspf"%>
				</div>
			</div>
		</section>

		<!-- 오른쪽: 지도 -->
		<section class="map-container" aria-label="지도">
			<div id="map">
				<!-- 실제 지도 API 삽입 시 여기 -->
				지도 영역
			</div>
			<button class="btn-info">이용방법</button>
		</section>
	</main>
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