<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
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
              <div class="meta-label">여행코스(부산)</div>
              <div class="form-outline" data-mdb-input-init style="width:auto">
					<input type="text" id="typeText" class="form-control" placeholder="해운대-광안리-서면"/>
				</div>
            </div>
            <div class="meta-column">
              <div class="meta-label">여행일정</div>
              <div class="form-outline" data-mdb-input-init style="width:auto">
					<input type="text" id="typeText" class="form-control" placeholder="2025.08.09~2025.08.12"/>
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
        

<% String reqTitle = request.getParameter("title"); %>
    <section id="tabs" class="tabs section mt-5">
    <%
    		String[] nodeIcons = {"house-door", "leaf-fill", "fork-knife", "leaf-fill", "house-door"};
    		String[] tagNames = {"관광지", "숙소", "식당"};
    		HashMap<String,String> iconMap = new HashMap<>();
    		iconMap.put("leaf-fill", "관광지");
    		iconMap.put("house-door", "숙소");
    		iconMap.put("fork-knife", "식당");
    		
    		
    		HashMap<String,String> tagMap = new HashMap<>();
    		tagMap.put("관광지","멋있어요,예뻐요,다양하게 볼게 많아요");
    		tagMap.put("숙소","청결해요,방음이 잘돼요,가격이 저렴해요");
    		tagMap.put("식당","식사가 맛있어요,가격이 저렴해요,매장이 청결해요");
    		int num=0; %>
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

      <div class="visual-showcase">
        <div class="main-visual">
          <div class="portfolio-details-slider swiper init-swiper">

            <script type="application/json" class="swiper-config">
              {
                "loop": true,
                "speed": 600,
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

            <div class="swiper-wrapper" style="text-align:center; margin-bottom:50px;">

              <div class="swiper-slide">
                <div class="content-area" style="margin-bottom:50px;">
                  <h2 style="margin-top:50px;">리뷰글 작성 (첫번째 사진)</h2>
                  <textarea class="form-control" rows="5" style="width:70%; display:block; margin:0 auto; margin-top:20px; text-align:center;"></textarea>
                </div>
                <img src="https://www.visitbusan.net/uploadImgs/files/hqimgfiles/20200827182018444_thumbL"
                     class="img-fluid" style="width:80%; border-radius:10px;">
              </div>

              <div class="swiper-slide">
                <div class="content-area" style="margin-bottom:50px;">
                  <h2 style="margin-top:50px;">리뷰글 작성 (두번째 사진)</h2>
                  <textarea class="form-control" rows="5" style="width:70%; display:block; margin:0 auto; margin-top:20px; text-align:center;"></textarea>
                </div>
                <img src="https://cdn.epnc.co.kr/news/photo/202001/93682_85075_3859.jpg"
                     class="img-fluid" style="width:80%; border-radius:10px;">
              </div>

              <div class="swiper-slide">
                <div class="content-area" style="margin-bottom:50px;">
                  <h2 style="margin-top:50px;">리뷰글 작성 (세번째 사진)</h2>
                  <textarea class="form-control" rows="5" style="width:70%; display:block; margin:0 auto; margin-top:20px; text-align:center;"></textarea>
                </div>
                <img src="https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/88/a2/3a/caption.jpg?w=1200&h=-1&s=1"
                     class="img-fluid" style="width:80%; border-radius:10px;">
              </div>
              <div class="swiper-button-next" style="border:1px solid black; margin-top:10%;"></div>
            	  <div class="swiper-button-prev" style="border:1px solid black; margin-top:10%;"></div>

            </div>

            
            
            
            <!-- tagbutton -->
            <div class="technology-stack">
	          <div class="row">
	            <div class="col-lg-3">
	              <h3>여행 태그</h3>
	            </div>
	            <div class="col-lg-9">
	              <div class="tech-categories">
	               <%
	               	String currentNode = iconMap.get(nodeIcons[i]);	
	               	String[] tagDesc = tagMap.get(currentNode).split(",");
               		%>
	               
	                <div class="tech-category">
	                  <div id="tag-buttons" class="tech-list">
	                  	<%for(String td : tagDesc) {%>
					    <input type="checkbox" class="btn-check" id="btn<%=num%>" autocomplete="off" />
					    <label class="custom-toggle" for="btn<%=num++%>"><%= td %></label>
					    <%} %>
					    
					</div>

                </div>
                
              </div>
            </div>
          </div>
          <button type="button" class="btn btn-primary float-end" data-mdb-ripple-init>저장</button>
        </div>
            
            
            
            
            

          </div>
        </div>
      </div>

    </div>
  <% }%>
</div>


          </div>
          <% } %>
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
 <style>
.custom-toggle {
    background-color: white;
    color: black;
    border: 1px solid #ccc;
    border-radius: 30px;
    padding: 6px 16px;
    display: inline-block;
    cursor: pointer;
    transition: all 0.3s ease;
}
.btn-check:checked + .custom-toggle {
    background-color: #5c99ee;
    color: white;
    border-color: #0d6efd;
}
</style>
       
  </main>
    
<%@ include file="/jspf/footer.jspf" %> <!-- 푸터 부분 고정 -->
</body>
</html>