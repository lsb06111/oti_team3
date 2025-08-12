<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf"%>
<!-- 헤드 부분 고정 -->
<link rel="stylesheet" href="/oti_team3/assets/css/trip.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr"
	crossorigin="anonymous">

</head>
<body class="trip-body">
<%@ include file="/jspf/header.jspf"%>
	<main class="trip-main">
		<section>
			<nav class="step-nav">
				<div class="step-item">
					<span class="step-num">STEP 1</span> <span class="step-title">날짜
						확인</span>
				</div>
				<div class="step-item active">
					<span class="step-num">STEP 2</span> <span class="step-title">장소
						선택</span>
				</div>
				<div class="step-item">
					<span class="step-num">STEP 3</span> <span class="step-title">숙소
						설정</span>
				</div>
			</nav>
		</section>
		<!-- 왼쪽 사이드바 -->
		<section class="trip-sidebar-left" aria-label="장소 리스트">
			<h2 class="sl-title">제주</h2>
			<div class="sl-date">2025.08.12(화) - 2025.08.15(금)</div>
			<form action="..." method="post"
				class="trip-search-form">
				<div class="input-group">
					<input type="text" name="query" class="form-control"
						placeholder="장소명을 입력하세요">
					<button type="submit" class="btn-search">
						<i class="fa fa-search"></i>
					</button>
				</div>
			</form>
			<%@ include file="/jspf/trip-loc.jspf"%>
			<%@ include file="/jspf/trip-loc.jspf"%>
		</section>
		<!-- 중간 일정 타임라인 -->
		<section class="trip-schedule" aria-label="일정 타임라인">
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
					<%@ include file="/jspf/trip-course.jspf"%>
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
</body>
</html>