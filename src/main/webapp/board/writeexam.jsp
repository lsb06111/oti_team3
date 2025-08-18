<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf" %> <!-- 헤드 부분 고정 -->
<!-- 커스텀 CSS import 존 -->



</head>
<body>
<%@ include file="/jspf/header.jspf" %> <!-- 헤더부분 고정 -->

<main class="main">
    <!-- Page Title -->
    <div class="page-title light-background">
      <div class="container">
        <h1>리뷰글 작성</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="/oti_team3/index.jsp">Home</a></li>
            <li class="current">WriteReview</li>
          </ol>
        </nav>
      </div>
    </div><!-- End Page Title -->

    <!-- Portfolio Details Section -->
    <section id="portfolio-details" class="portfolio-details section">

      <div class="container">

        <div class="project-hero">
          <div class="project-meta-grid">
            <div class="meta-column">
              <div class="meta-label">작성자</div>
				<div class="form-outline" data-mdb-input-init style="width:auto">
					<input type="text" id="typeText" class="form-control" placeholder="닉네임"/>
				</div>
			</div>
            <div class="meta-column">
              <div class="meta-label">작성일</div>
              <div class="form-outline" data-mdb-input-init style="width:auto">
					<input type="text" id="typeText" class="form-control" placeholder="2025.08.13"/>
				</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">여행코스</div>
              <div class="form-outline" data-mdb-input-init style="width:auto">
					<input type="text" id="typeText" class="form-control" placeholder="해운대-광안리-서면" />
				</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">여행일정</div>
              <div class="form-outline" data-mdb-input-init style="width:auto">
					<input type="text" id="typeText" class="form-control" placeholder="2025.08.09~2025.08.12" />
				</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">첨부사진</div>
              <div class="meta-value">
				<input class="form-control" type="file" id="formFileMultiple" multiple />
				
				</div>
            </div>
          </div>
        </div>

        <div class="visual-showcase">
          <div class="main-visual">
            <div class="portfolio-details-slider swiper init-swiper">
              <script type="application/json" class="swiper-config">
                {
                  "loop": true,
                  "speed": 600,
                  "autoplay": {
                    "delay": 4000
                  },
                  "effect": "creative",
                  "creativeEffect": {
                    "prev": {
                      "shadow": false,
                      "translate": ["-120%", 0, -500]
                    },
                    "next": {
                      "shadow": false,
                      "translate": ["120%", 0, -500]
                    }
                  },
                  "slidesPerView": 1,
                  "navigation": {
                    "nextEl": ".swiper-button-next",
                    "prevEl": ".swiper-button-prev"
                  }
                }
              </script>
              <div class="swiper-wrapper">
                <div class="swiper-slide">
                  <img src="" alt="Project showcase" class="img-fluid" loading="lazy">
                </div>
                <div class="swiper-slide">
                  <img src="" alt="Project showcase" class="img-fluid" loading="lazy">
                </div>
                <div class="swiper-slide">
                  <img src="" alt="Project showcase" class="img-fluid" loading="lazy">
                </div>
              </div>
              <div class="swiper-button-next"></div>
              <div class="swiper-button-prev"></div>
            </div>
          </div>
        </div>

        <div class="content-section">
          <div class="row">
            <div class="col-lg-8 offset-lg-2">
              <div class="project-overview">
                <h2>리뷰글</h2>
                <p class="overview-text"><textarea class="form-control" id="textAreaExample" rows="2"></textarea> </p>

                <div class="challenge-solution">
                  <div class="challenge-block">
                    <h3>코스1</h3>
                    <p><textarea class="form-control" id="textAreaExample" rows="2"></textarea></p>
                  </div>

                  <div class="solution-block">
                    <h3>코스2</h3>
                    <p><textarea class="form-control" id="textAreaExample" rows="2"></textarea> </p>
                  </div>
                  
                  <div class="solution-block">
                    <h3>코스3</h3>
                    <p><textarea class="form-control" id="textAreaExample" rows="2"></textarea> </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

		<%-- <%@ include file="/board/numberdesc.jspf" %> --%>

        <div class="technology-stack">
          <div class="row">
            <div class="col-lg-3">
              <h3>여행 태그</h3>
            </div>
            <div class="col-lg-9">
              <div class="tech-categories">
                <div class="tech-category">
                  <div class="category-title">관광지</div>
                  <div class="tech-list">
                    <span class="tech-item">멋있어요</span>
                    <span class="tech-item">예뻐요</span>
                    <span class="tech-item">다양하게 볼게 많아요</span>
                  </div>
                </div>
                <div class="tech-category">
                  <div class="category-title">숙소</div>
                  <div class="tech-list">
                    <span class="tech-item">청결해요</span>
                    <span class="tech-item">방음이 잘 돼요</span>
                    <span class="tech-item">가격이 저렴해요</span>
                  </div>
                </div>
                <div class="tech-category">
                  <div class="category-title">식당</div>
                  <div class="tech-list">
                    <span class="tech-item">식사가 맛있어요</span>
                    <span class="tech-item">가격이 저렴해요</span>
                    <span class="tech-item">매장이 청결해요</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <button type="button" class="btn btn-primary float-end" data-mdb-ripple-init>저장</button>
        </div>
        

        <hr style="color: lightgray; margin-bottom : 50px;">
        
        




    
<%@ include file="/jspf/footer.jspf" %> <!-- 푸터 부분 고정 -->
</body>
</html>