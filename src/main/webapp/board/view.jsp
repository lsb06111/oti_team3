<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf" %> <!-- 헤드 부분 고정 -->
<!-- 커스텀 CSS import 존 -->

</head>
<body class="portfolio-details-page">
<%@ include file="/jspf/header.jspf" %> <!-- 헤더부분 고정 -->

<main class="main">
    <!-- Page Title -->
    <div class="page-title light-background">
      <div class="container">
        <h1>부산 관광지 리뷰</h1>
        <nav class="breadcrumbs">
          <ol>
            <li><a href="index.html">Home</a></li>
            <li class="current">Details</li>
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
              <div class="meta-label">작성자(닉네임)</div>
              <div class="meta-value">정동윤</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">작성일</div>
              <div class="meta-value">2025.08.12</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">여행코스(부산)</div>
              <div class="meta-value">해운대-광안리-서면</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">여행일정</div>
              <div class="meta-value">2025.08.12 ~ 2025.08.16</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">팔로우</div>
              <div class="meta-value">
				<input type="submit" class = "folling" value="팔로우 신청">
				
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
                  <img src="https://www.visitbusan.net/uploadImgs/files/hqimgfiles/20200827182018444_thumbL" alt="Project showcase" class="img-fluid" loading="lazy">
                </div>
                <div class="swiper-slide">
                  <img src="https://cdn.epnc.co.kr/news/photo/202001/93682_85075_3859.jpg" alt="Project showcase" class="img-fluid" loading="lazy">
                </div>
                <div class="swiper-slide">
                  <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/88/a2/3a/caption.jpg?w=1200&h=-1&s=1" alt="Project showcase" class="img-fluid" loading="lazy">
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
                <p class="overview-text">부산은 대한민국 제2의 도시이자 최대의 무역항을 가진 해양 도시입니다. 아름다운 해변과 산, 그리고 독특한 문화와 역사가 어우러진 매력적인 도시입니다. 부산은 부산항을 중심으로 해상 무역과 물류 산업이 발달했으며, 다양한 축제와 볼거리로 활기 넘치는 도시이기도 합니다. </p>

                <div class="challenge-solution">
                  <div class="challenge-block">
                    <h3>해운대</h3>
                    <p>해운대 해수욕장은 부산의 대표적인 해변으로, 넓은 백사장과 맑은 바닷물, 다양한 즐길 거리가 있어 많은 사랑을 받는 곳입니다. 특히 여름철에는 해수욕을 즐기려는 사람들로 북적이며, 겨울에도 산책이나 바다를 감상하며 여유로운 시간을 보내려는 사람들로 붐빕니다.</p>
                  </div>

                  <div class="solution-block">
                    <h3>광안리</h3>
                    <p>광안리 해수욕장은 부산 수영구에 위치한 아름다운 해변으로, 광안대교의 멋진 야경과 다양한 즐길 거리를 제공합니다. 해수욕장뿐만 아니라 주변의 맛집, 카페, 숙소 등도 인기가 많습니다. </p>
                  </div>
                  
                  <div class="solution-block">
                    <h3>서면</h3>
                    <p>서면은 부산광역시의 번화가로, 다양한 상점, 음식점, 엔터테인먼트 시설들이 밀집해 있어 많은 사람들이 방문하는 곳입니다.</p>
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
        </div>
       <hr style="color: lightgray; margin-bottom : 50px;">
       <div class="features-intro">
          <h3 style = "font-size: 1.5rem; font-weight: 400; color: var(--heading-color); margin-bottom: 50px;">댓글</h3>
       </div>
        <div class="d-flex mb-3">
        <a href="">
          <img src="https://mdbcdn.b-cdn.net/img/new/avatars/18.webp" class="border rounded-circle me-2"
            alt="Avatar" style="height: 40px" />
        </a>
        <div data-mdb-input-init class="form-outline w-100">
          <textarea class="form-control" id="textAreaExample" rows="2"></textarea>
          <input type = "submit" class="text-review-send" value = "등록" style="font-size:10px;">
        </div>
      </div>
      <!-- Input -->

      <!-- Answers -->

      <!-- Single answer -->
      <div class="d-flex mb-3">
        <a href="">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s" class="border rounded-circle me-2"
            alt="Avatar" style="height: 40px; border: 1px solid black; border-radius: 50%;" />
        </a>
        <div>
          <div class="bg-body-tertiary rounded-3 px-3 py-1">
            <a href="" class="text-dark mb-0">
              <strong>닉네임1</strong>
            </a>
            <a href="" class="text-muted d-block">
              <small>부산 놀러가고 싶어요!</small>
            </a>
          </div>
          <a href="" class="text-muted small me-2"><strong>답글작성</strong></a>
        </div>
      </div>
      <div class="d-flex mb-3">
        <a href="">
          <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s" class="border rounded-circle me-2"
            alt="Avatar" style="height: 40px; border: 1px solid black; border-radius: 50%;" />
        </a>
        <div>
          <div class="bg-body-tertiary rounded-3 px-3 py-1">
            <a href="" class="text-dark mb-0">
              <strong>닉네임2</strong>
            </a>
            <a href="" class="text-muted d-block">
              <small>리뷰글 잘 봤습니다~~</small>
            </a>
          </div>
          <a href="" class="text-muted small me-2"><strong>답글작성</strong></a>
        </div>
      </div>
      
        
        <hr style="color: lightgray; margin-bottom : 50px; margin-top : 50px;">
        
        <div class="process-gallery">
          <h3>관련 리뷰글</h3>
          <div class="gallery-masonry">
            <div class="gallery-item large">
              <img src="/oti_team3/assets/img/portfolio/portfolio-11.webp" alt="Design process" class="img-fluid glightbox" loading="lazy">
              <div class="gallery-caption">부산 해운대 &amp; 광안리</div>
            </div>
            <div class="gallery-item">
              <img src="/oti_team3/assets/img/portfolio/portfolio-12.webp" alt="Design process" class="img-fluid glightbox" loading="lazy">
              <div class="gallery-caption">울산</div>
            </div>
            <div class="gallery-item">
              <img src="/oti_team3/assets/img/portfolio/portfolio-3.webp" alt="Design process" class="img-fluid glightbox" loading="lazy">
              <div class="gallery-caption">여수</div>
            </div>
            <div class="gallery-item">
              <img src="/oti_team3/assets/img/portfolio/portfolio-4.webp" alt="Design process" class="img-fluid glightbox" loading="lazy">
              <div class="gallery-caption">거제도</div>
            </div>
          </div>
        </div>
        
        

        <div class="project-footer">
          <div class="footer-navigation">
            <a href="#" class="nav-link prev-project">
              <span class="nav-direction">Previous</span>
              <span class="nav-title">Digital Banking App</span>
            </a>
            <a href="#" class="nav-link all-projects">
              <i class="bi bi-grid-3x3-gap"></i>
              <span>All Projects</span>
            </a>
            <a href="#" class="nav-link next-project">
              <span class="nav-direction">Next</span>
              <span class="nav-title">Healthcare Dashboard</span>
            </a>
          </div>
        </div>
        
      </div>

    </section><!-- /Portfolio Details Section -->

  </main>


    
<%@ include file="/jspf/footer.jspf" %> <!-- 푸터 부분 고정 -->
</body>
</html>