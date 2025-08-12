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
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<%@ include file="/jspf/header.jspf"%>
	<!-- 헤더부분 고정 -->
	<main>
		<section>
			<!-- 세로 스텝 네비게이션 -->
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
		<section class="sidebar-left sidebar-left--cards" aria-label="장소 리스트">
			<h2 class="sl-title">제주</h2>
			<div class="sl-date">2025.08.12(화) - 2025.08.15(금)</div>
			<form action="forms/newsletter.php" method="post"
				class="php-email-form">
				<div class="input-group">
					<input type="email" name="email" class="form-control"
						placeholder="장소명을 입력하세요" required="">
					<button type="submit" class="btn-subscribe">
						<i class="fa fa-search"></i>
					</button>
				</div>
				<div class="loading">Loading</div>
				<div class="error-message"></div>
				<div class="sent-message">Thank you for subscribing!</div>
			</form>
			
			<div class="sl-card">
				<!-- 상단: 이미지 + +버튼 -->
				<div class="sl-top">
					<div class="sl-thumb">
						<img
							src="https://images.unsplash.com/photo-1555396273-367ea4eb4db5?q=80&w=1200&auto=format&fit=crop"
							alt="장소 이미지">
					</div>
					<div>
						<div class="sl-badge">친구추천</div>
						<div class="sl-badge">명소</div>
						<div class="sl-badge">月 <b>399</b>명 방문</div>
					</div>
					<button class="sl-add" aria-label="일정에 추가">+</button>
				</div>
				<!-- 하단: 상세 설명 박스 -->
				<div class="sl-info">
					<div class="sl-cat d-flex justify-content-between">
						<a href="#" class="sl-name">조조 대학로점</a>
					</div>
					<p class="sl-desc">다양한 메뉴로 즐기는 일본 미식 여행</p>
					<div class="sl-meta">
						
					</div>
				</div>
			</div>
			<div class="sl-card">
				<!-- 상단: 이미지 + +버튼 -->
				<div class="sl-top">
					<div class="sl-thumb">
						<img
							src="https://images.unsplash.com/photo-1555396273-367ea4eb4db5?q=80&w=1200&auto=format&fit=crop"
							alt="장소 이미지">
					</div>
					<div>
						<div class="sl-badge">친구추천</div>
						<div class="sl-badge">명소</div>
						<div class="sl-badge">月 <b>399</b>명 방문</div>
					</div>
					<button class="sl-add" aria-label="일정에 추가">+</button>
				</div>
				<!-- 하단: 상세 설명 박스 -->
				<div class="sl-info">
					<div class="sl-cat d-flex justify-content-between">
						<a href="#" class="sl-name">조조 대학로점</a>
					</div>
					<p class="sl-desc">다양한 메뉴로 즐기는 일본 미식 여행</p>
					<div class="sl-meta">
						
					</div>
				</div>
			</div>
			<div class="sl-card">
				<!-- 상단: 이미지 + +버튼 -->
				<div class="sl-top">
					<div class="sl-thumb">
						<img
							src="https://images.unsplash.com/photo-1555396273-367ea4eb4db5?q=80&w=1200&auto=format&fit=crop"
							alt="장소 이미지">
					</div>
					<div>

					</div>
					<button class="sl-add" aria-label="일정에 추가">+</button>
				</div>
				<!-- 하단: 상세 설명 박스 -->
				<div class="sl-info">
					<div class="sl-cat d-flex justify-content-between">
						<a href="#" class="sl-name">조조 대학로점</a>
					</div>
					<p class="sl-desc">다양한 메뉴로 즐기는 일본 미식 여행</p>
					<div class="sl-meta">
						
					</div>
				</div>
			</div>
		

		</section>

		<!-- 중간 일정 타임라인 -->
		<section class="schedule" aria-label="일정 타임라인">
			<div class="schedule-header">
				하와이 <small style="font-weight: normal; color: #999;">2025.9.6
					- 2025.9.9</small>
			</div>
			<div class="timeline">
				<div class="timeline-day">
					<div class="timeline-day-header">
						<!-- Tabs: 일정 일차 선택 -->
						<div class="tabs" id="dayTabs" role="tablist" aria-label="일차 선택">
							<button class="tab is-active" role="tab" aria-selected="true"
								data-day="1">1일</button>
							<button class="tab" role="tab" aria-selected="false" data-day="2">2일</button>
							<button class="tab" role="tab" aria-selected="false" data-day="3">3일</button>
							<button class="tab" role="tab" aria-selected="false" data-day="4">4일</button>
							<button class="tab" role="tab" aria-selected="false" data-day="5">5일</button>

							<!-- 파란 인디케이터 -->
							<span class="tab-indicator"></span>
						</div>

					</div>
					<div class="timeline-event">
						<div class="number">1</div>
						<div class="event-info">
							<div class="time">12:18-12:18</div>
							<div class="event-type" style="color: #0095F6;">명소</div>
							<div class="event-title">호놀룰루 국제공항</div>
						</div>
						<img
							src="https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=80&h=55"
							alt="호놀룰루 국제공항" class="event-img" />
					</div>
					<div class="timeline-event">
						<div class="number">2</div>
						<div class="event-info">
							<div class="time">12:55-12:55</div>
							<div class="event-type" style="color: #ff7a7a;">숙소</div>
							<div class="event-title">하얏트 플레이스 와이키키</div>
							<span class="note-toggle" onclick="toggleNote(this)">📝
								노트작성</span>
							<div class="note-area">
								<textarea placeholder="메모를 입력하세요..."></textarea>
							</div>
						</div>
						<img
							src="https://images.unsplash.com/photo-1494526585095-c41746248156?auto=format&fit=crop&w=80&h=55"
							alt="하얏트 플레이스 와이키키" class="event-img" />
					</div>
				</div>

				<!-- 2일차 예시도 넣으려면 아래와 같이 추가하면 됩니다. -->
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


</body>
</html>