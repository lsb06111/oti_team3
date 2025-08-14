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
            <li><a href="/oti_team3/index.jsp">Home</a></li>
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
        

<% String reqTitle = request.getParameter("title"); %>
    <section id="tabs" class="tabs section mt-5">
      <div class="container">

        <div class="tabs-wrapper">
          <div class="tabs-header">
            <ul class="nav nav-tabs">
            <%for(int i=0; i<4; i++){ %>
	              <li class="nav-item">
	                <a class="nav-link <%= i==0? "active show" : "" %>" data-bs-toggle="tab" data-bs-target="#tabs-tab-<%= (i+1) %>">
	                  <div class="tab-content-preview">
	                    <span class="tab-number">0<%= (i+1) %></span>
	                    <div class="tab-text">
	                      <h6 style="margin-bottom:0"><%= (i+1) + "일차" %></h6>
	                    </div>
	                  </div>
	                </a>
	              </li>
              <%} %>
              
            </ul>
          </div>

          <div class="tab-content">

			<%
			int tabNumber = 4;
			for(int ii=0; ii < tabNumber; ii++){ %>
            <div class="tab-pane fade <%= ii==0 ? "active show" : "" %>" id="tabs-tab-<%= (ii+1) %>">

  <!-- NODES BAR -->
  <div id="routeBar-<%= ii %>" data-group="<%= ii %>" class="d-flex justify-content-center my-4">
    <div class="d-flex align-items-center justify-content-center w-100 pb-2">
      <%
        int nodeNumber = 5;
        String[] spots = {"해운대", "광안리", "서면", "남포동", "송정"};
        String[] times = {"15분", "12분", "20분", "18분"};
        String[] nodeIcons = {"house-door", "leaf-fill", "fork-knife", "leaf-fill", "house-door"};

        for (int i = 0; i < nodeNumber; i++) {
      %>
        <!-- Node + label -->
        <div class="d-flex flex-column align-items-center">
          <button type="button"
                  class="route-node btn btn-outline-primary rounded-circle fw-bold d-flex align-items-center justify-content-center p-0 <%= i==0 ? "active" : "" %>"
                  data-target="#spot-pane-<%= ii %>-<%= i %>"
                  data-group="<%= ii %>"
                  style="width:60px;height:60px;
                         --bs-btn-color:#5c99ee;
                         --bs-btn-border-color:#5c99ee;
                         --bs-btn-hover-bg:#5c99ee;
                         --bs-btn-hover-border-color:#5c99ee;
                         --bs-btn-hover-color:#fff;
                         --bs-btn-active-bg:#5c99ee;
                         --bs-btn-active-border-color:#5c99ee;
                         --bs-btn-active-color:#fff;">
            <i class="bi bi-<%= nodeIcons[i] %>" style="font-size:1.4em"></i>
          </button>
          <small class="mt-1 text-muted" style="font-size:1.05em"><%= spots[i] %></small>
        </div>

        <% if (i < nodeNumber - 1) { %>
          <!-- Connector + pill time -->
          <div class="d-flex flex-column align-items-center mx-2 flex-grow-1">
            <div class="border-top border-2 w-100"></div>
            <span class="badge rounded-pill text-primary bg-primary-subtle fw-semibold mt-1 px-3 py-2" style="font-size:0.85em">
              <i class="bi bi-bus-front"></i> <%= times[i] %>
            </span>
          </div>
        <% } %>
      <%
        }
      %>
    </div>
  </div>

  <!-- NODE CONTENT PANES (unique per day) -->
  



<div id="spotPanes-<%= ii %>" class="tab-content mt-4">
    <% for (int i = 0; i < nodeNumber; i++) { %>
      <div id="spot-pane-<%= ii %>-<%= i %>" class="tab-pane fade <%= i==0 ? "show active" : "" %>" style="margin-bottom: 50px;">
        <!-- your per-node content -->
            <div class="content-area">
				<div class="content-section">
					<div class="row">
						<div class="col-lg-8 offset-lg-2">
							<div class="project-overview">
								<h2 style="margin-top:50px;">리뷰글</h2>
									<p class="overview-text">부산은 대한민국 제2의 도시이자 최대의
										무역항을 가진 해양 도시입니다. 아름다운 해변과 산, 그리고 독특한 문화와 역사가 어우러진
										매력적인 도시입니다. 부산은 부산항을 중심으로 해상 무역과 물류 산업이 발달했으며, 다양한
										축제와 볼거리로 활기 넘치는 도시이기도 합니다.</p>
							</div>
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
                  <img src="https://www.visitbusan.net/uploadImgs/files/hqimgfiles/20200827182018444_thumbL" alt="Project showcase" class="img-fluid" loading="lazy" style="width: 80%; height:auto;">
                </div>
                <div class="swiper-slide">
                  <img src="https://cdn.epnc.co.kr/news/photo/202001/93682_85075_3859.jpg" alt="Project showcase" class="img-fluid" loading="lazy" style="width: 80%; height:auto;">
                </div>
                <div class="swiper-slide">
                  <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/88/a2/3a/caption.jpg?w=1200&h=-1&s=1" alt="Project showcase" class="img-fluid" loading="lazy" style="width: 80%; height:auto;">
                </div>
              </div>
              <div class="swiper-button-next"></div>
             <div class="swiper-button-prev"></div>
             
             
            </div>
          </div>
        </div>
          
      </div>
    <% } %>
</div>



      

          </div>
          <%} %>
        </div>

      </div>
	</div>
</section><!-- /Tabs Section -->

<script>
(function(){
  // initialize all day groups
  document.querySelectorAll('[id^="routeBar-"]').forEach(function(bar){
    var group = bar.getAttribute('data-group');
    var nodes = bar.querySelectorAll('.route-node');
    var panes = document.querySelectorAll('#spotPanes-' + group + ' .tab-pane');

    function showPane(id){
      panes.forEach(function(p){ p.classList.remove('show','active'); });
      var el = document.querySelector(id);
      if (el) el.classList.add('show','active');
    }

    nodes.forEach(function(btn){
      btn.addEventListener('click', function(){
        nodes.forEach(function(b){ b.classList.remove('active'); });
        btn.classList.add('active');
        showPane(btn.getAttribute('data-target'));
      });
    });
  });
})();
</script> 

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
        
        <div style = "display : inline-block; margin-bottom : 30px;">
	          <h3 style = "margin-bottom : 2rem;">다른 리뷰글</h3>
	          <a href=index.jsp class="service-link" id = "write_review">
		          다른 리뷰글 보러가기
		          <i class="bi bi-arrow-right"></i>
		       </a>
	    </div>
	    <%@ include file="/board/teamcards.jspf" %>

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