<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf" %> <!-- 헤드 부분 고정 -->
<!-- 커스텀 CSS import 존 -->
<link href="/oti_team3/assets/css/board.css" rel="stylesheet">
</head>
<body>
<%@ include file="/jspf/header.jspf" %> <!-- 헤더부분 고정 -->

<!-- Services Section -->
    <section id="services" class="services section">

      <!-- Section Title -->
      <div class="container section-title">
        <h2 style = "margin:50px">리뷰게시판</h2>
        <p>리뷰를 확인해보세요!</p>
        <div class = "write_review">
	        <a href="write.jsp" class="service-link" id = "write_review">
	                리뷰 작성하기
	                <i class="bi bi-arrow-right"></i>
	        </a>
        </div>
       </div>

			<!-- Navigation Section -->
    <section id="portfolio" class="portfolio section">
      <!-- Section Title -->
      <div class="container">
        <div class="isotope-layout" data-default-filter="*" data-layout="fitRows" data-sort="original-order">
          <div class="portfolio-filters-wrapper" style="display: flex; align-items: center; justify-content: space-between;">
          	
            <ul class="portfolio-filters isotope-filters">
              <li data-filter="*" class="filter-active">전체</li>
              <li data-filter=".filter-branding">수도권</li>
              <li data-filter=".filter-branding">중부권</li>
              <li data-filter=".filter-web">호남권</li>
              <li data-filter=".filter-print">영남권</li>
              
            </ul>
            
            <div>
	            <form action="index.jsp" method="get" style="display: flex; align-items: center;">
					<input type="text" name="query" placeholder="검색어를 입력하세요" style="margin-right: 5px; border-radius : 10px;">
					<input type="submit" value="검색" style="border-radius: 10px; border: 1px solid gray;">
				</form>
			</div>
		
          </div>
          
          	<select id="board_dropbox">
				<option value="likes">추천순</option>
				<option value="follwing">팔로잉순</option>
			</select>
        </div>
      </div>
    </section><!-- /Navigation Section -->
    
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-3 col-md-6">
            <div class="service-card">
				<figure style = "display: flex; align-items: center; margin: 0; width: 100%; margin: 5px">
            		<img style="width: 15%; border: 1px solid black; border-radius: 50%; margin-right: 10px;"
            		 src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s">
						<div style= "display: flex; align-items: center; width: 100%">
							<div style="display: flex; flex-direction: column; margin-right : 20px;">
								<h6 style="margin: 0; font-size: 12px;">닉네임</h6>
								<h6 style="margin: 0; font-size: 10px;">2025.08.12</h6>
							</div>
							<i id="heart" class="bi bi-heart-fill" style="color: red;"></i>
							<h6 style="font-size:8px">1234</h6>
						</div>
				</figure>
				
				<figure>
	              <img style = "width:100%" src = "https://ko.skyticket.com/guide/wp-content/uploads/2024/09/4838d156-shutterstock_2343673449.jpg">
	            </figure>
              <h3>서울 관광지 리뷰</h3>
              <p>한국은 여전히 매력적인 여행지입니다. 저렴한 여행 비용, 한류 아이돌, 맛있는 음식, 그리고 합리적인 쇼핑 환경이 여전히 인기를 끌고 있습니다. 서울의 명동과 경복궁은 절대적인 인기를 자랑하는 대표적인 관광 명소입니다. 부산이나 제주도와 같은 지방 도시에는 숨겨진 관광 명소도 많이 있습니다.</p>
              <a href="view.jsp" class="service-link">
                자세히보기
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-3 col-md-6">
            <div class="service-card">
				<figure style = "display: flex; align-items: center; margin: 0; width: 100%; margin: 5px">
            		<img style="width: 15%; border: 1px solid black; border-radius: 50%; margin-right: 10px;"
            		 src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s">
						<div style= "display: flex; align-items: center; width: 100%">
							<div style="display: flex; flex-direction: column; margin-right : 20px;">
								<h6 style="margin: 0; font-size: 12px;">닉네임</h6>
								<h6 style="margin: 0; font-size: 10px;">2025.08.12</h6>
							</div>
							<i id="heart" class="bi bi-heart-fill" style="color: red;"></i>
							<h6 style="font-size:8px">1233</h6>
						</div>
				</figure>
				
				<figure>
	              <img style = "width:100%" src = "https://ko.skyticket.com/guide/wp-content/uploads/2024/09/4838d156-shutterstock_2343673449.jpg">
	            </figure>
              <h3>서울 관광지 리뷰</h3>
              <p>한국은 여전히 매력적인 여행지입니다. 저렴한 여행 비용, 한류 아이돌, 맛있는 음식, 그리고 합리적인 쇼핑 환경이 여전히 인기를 끌고 있습니다. 서울의 명동과 경복궁은 절대적인 인기를 자랑하는 대표적인 관광 명소입니다. 부산이나 제주도와 같은 지방 도시에는 숨겨진 관광 명소도 많이 있습니다.</p>
              <a href="view.jsp" class="service-link">
                자세히보기
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-3 col-md-6">
            <div class="service-card">
				<figure style = "display: flex; align-items: center; margin: 0; width: 100%; margin: 5px">
            		<img style="width: 15%; border: 1px solid black; border-radius: 50%; margin-right: 10px;"
            		 src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s">
						<div style= "display: flex; align-items: center; width: 100%">
							<div style="display: flex; flex-direction: column; margin-right : 20px;">
								<h6 style="margin: 0; font-size: 12px;">닉네임</h6>
								<h6 style="margin: 0; font-size: 10px;">2025.08.12</h6>
							</div>
							<i id="heart" class="bi bi-heart-fill" style="color: red;"></i>
							<h6 style="font-size:8px">1230</h6>
						</div>
				</figure>
				
				<figure>
	              <img style = "width:100%" src = "https://ko.skyticket.com/guide/wp-content/uploads/2024/09/4838d156-shutterstock_2343673449.jpg">
	            </figure>
              <h3>서울 관광지 리뷰</h3>
              <p>한국은 여전히 매력적인 여행지입니다. 저렴한 여행 비용, 한류 아이돌, 맛있는 음식, 그리고 합리적인 쇼핑 환경이 여전히 인기를 끌고 있습니다. 서울의 명동과 경복궁은 절대적인 인기를 자랑하는 대표적인 관광 명소입니다. 부산이나 제주도와 같은 지방 도시에는 숨겨진 관광 명소도 많이 있습니다.</p>
              <a href="view.jsp" class="service-link">
                자세히보기
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-3 col-md-6">
            <div class="service-card">
				<figure style = "display: flex; align-items: center; margin: 0; width: 100%; margin: 5px">
            		<img style="width: 15%; border: 1px solid black; border-radius: 50%; margin-right: 10px;"
            		 src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s">
						<div style= "display: flex; align-items: center; width: 100%">
							<div style="display: flex; flex-direction: column; margin-right : 20px;">
								<h6 style="margin: 0; font-size: 12px;">닉네임</h6>
								<h6 style="margin: 0; font-size: 10px;">2025.08.12</h6>
							</div>
							<i id="heart" class="bi bi-heart-fill" style="color: red;"></i>
							<h6 style="font-size:8px">1229</h6>
						</div>
				</figure>
				
				<figure>
	              <img style = "width:100%" src = "https://ko.skyticket.com/guide/wp-content/uploads/2024/09/4838d156-shutterstock_2343673449.jpg">
	            </figure>
              <h3>서울 관광지 리뷰</h3>
              <p>한국은 여전히 매력적인 여행지입니다. 저렴한 여행 비용, 한류 아이돌, 맛있는 음식, 그리고 합리적인 쇼핑 환경이 여전히 인기를 끌고 있습니다. 서울의 명동과 경복궁은 절대적인 인기를 자랑하는 대표적인 관광 명소입니다. 부산이나 제주도와 같은 지방 도시에는 숨겨진 관광 명소도 많이 있습니다.</p>
              <a href="view.jsp" class="service-link">
                자세히보기
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-3 col-md-6">
            <div class="service-card">
				<figure style = "display: flex; align-items: center; margin: 0; width: 100%; margin: 5px">
            		<img style="width: 15%; border: 1px solid black; border-radius: 50%; margin-right: 10px;"
            		 src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s">
						<div style= "display: flex; align-items: center; width: 100%">
							<div style="display: flex; flex-direction: column; margin-right : 20px;">
								<h6 style="margin: 0; font-size: 12px;">닉네임</h6>
								<h6 style="margin: 0; font-size: 10px;">2025.08.12</h6>
							</div>
							<i id="heart" class="bi bi-heart-fill" style="color: red;"></i>
							<h6 style="font-size:8px">1220</h6>
						</div>
				</figure>
				
				<figure>
	              <img style = "width:100%" src = "https://ko.skyticket.com/guide/wp-content/uploads/2024/09/4838d156-shutterstock_2343673449.jpg">
	            </figure>
              <h3>서울 관광지 리뷰</h3>
              <p>한국은 여전히 매력적인 여행지입니다. 저렴한 여행 비용, 한류 아이돌, 맛있는 음식, 그리고 합리적인 쇼핑 환경이 여전히 인기를 끌고 있습니다. 서울의 명동과 경복궁은 절대적인 인기를 자랑하는 대표적인 관광 명소입니다. 부산이나 제주도와 같은 지방 도시에는 숨겨진 관광 명소도 많이 있습니다.</p>
              <a href="view.jsp" class="service-link">
                자세히보기
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-lg-3 col-md-6">
            <div class="service-card">
				<figure style = "display: flex; align-items: center; margin: 0; width: 100%; margin: 5px">
            		<img style="width: 15%; border: 1px solid black; border-radius: 50%; margin-right: 10px;"
            		 src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s">
						<div style= "display: flex; align-items: center; width: 100%">
							<div style="display: flex; flex-direction: column; margin-right : 20px;">
								<h6 style="margin: 0; font-size: 12px;">닉네임</h6>
								<h6 style="margin: 0; font-size: 10px;">2025.08.12</h6>
							</div>
							<i id="heart" class="bi bi-heart-fill" style="color: red;"></i>
							<h6 style="font-size:8px">1199</h6>
						</div>
				</figure>
				
				<figure>
	              <img style = "width:100%" src = "https://ko.skyticket.com/guide/wp-content/uploads/2024/09/4838d156-shutterstock_2343673449.jpg">
	            </figure>
              <h3>서울 관광지 리뷰</h3>
              <p>한국은 여전히 매력적인 여행지입니다. 저렴한 여행 비용, 한류 아이돌, 맛있는 음식, 그리고 합리적인 쇼핑 환경이 여전히 인기를 끌고 있습니다. 서울의 명동과 경복궁은 절대적인 인기를 자랑하는 대표적인 관광 명소입니다. 부산이나 제주도와 같은 지방 도시에는 숨겨진 관광 명소도 많이 있습니다.</p>
              <a href="view.jsp" class="service-link">
                자세히보기
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->
          
          <div class="col-lg-3 col-md-6">
            <div class="service-card">
				<figure style = "display: flex; align-items: center; margin: 0; width: 100%; margin: 5px">
            		<img style="width: 15%; border: 1px solid black; border-radius: 50%; margin-right: 10px;"
            		 src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s">
						<div style= "display: flex; align-items: center; width: 100%">
							<div style="display: flex; flex-direction: column; margin-right : 20px;">
								<h6 style="margin: 0; font-size: 12px;">닉네임</h6>
								<h6 style="margin: 0; font-size: 10px;">2025.08.12</h6>
							</div>
							<i id="heart" class="bi bi-heart-fill" style="color: red;"></i>
							<h6 style="font-size:8px">1111</h6>
						</div>
				</figure>
				
				<figure>
	              <img style = "width:100%" src = "https://ko.skyticket.com/guide/wp-content/uploads/2024/09/4838d156-shutterstock_2343673449.jpg">
	            </figure>
              <h3>서울 관광지 리뷰</h3>
              <p>한국은 여전히 매력적인 여행지입니다. 저렴한 여행 비용, 한류 아이돌, 맛있는 음식, 그리고 합리적인 쇼핑 환경이 여전히 인기를 끌고 있습니다. 서울의 명동과 경복궁은 절대적인 인기를 자랑하는 대표적인 관광 명소입니다. 부산이나 제주도와 같은 지방 도시에는 숨겨진 관광 명소도 많이 있습니다.</p>
              <a href="view.jsp" class="service-link">
                자세히보기
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->
          
          <div class="col-lg-3 col-md-6">
            <div class="service-card">
				<figure style = "display: flex; align-items: center; margin: 0; width: 100%; margin: 5px">
            		<img style="width: 15%; border: 1px solid black; border-radius: 50%; margin-right: 10px;"
            		 src = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5gLM6Ory_xq5m06Wz-ClWzfw9Yhpst-gDRA&s">
						<div style= "display: flex; align-items: center; width: 100%">
							<div style="display: flex; flex-direction: column; margin-right : 20px;">
								<h6 style="margin: 0; font-size: 12px;">닉네임</h6>
								<h6 style="margin: 0; font-size: 10px;">2025.08.12</h6>
							</div>
							<i id="heart" class="bi bi-heart-fill" style="color: red;"></i>
							<h6 style="font-size:8px">1000</h6>
						</div>
				</figure>
				
				<figure>
	              <img style = "width:100%" src = "https://ko.skyticket.com/guide/wp-content/uploads/2024/09/4838d156-shutterstock_2343673449.jpg">
	            </figure>
              <h3>서울 관광지 리뷰</h3>
              <p>한국은 여전히 매력적인 여행지입니다. 저렴한 여행 비용, 한류 아이돌, 맛있는 음식, 그리고 합리적인 쇼핑 환경이 여전히 인기를 끌고 있습니다. 서울의 명동과 경복궁은 절대적인 인기를 자랑하는 대표적인 관광 명소입니다. 부산이나 제주도와 같은 지방 도시에는 숨겨진 관광 명소도 많이 있습니다.</p>
              <a href="view.jsp" class="service-link">
                자세히보기
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

        </div>

      </div>

    </section><!-- /Services Section -->
    
    
<%@ include file="/jspf/footer.jspf" %> <!-- 푸터 부분 고정 -->
</body>
</html> 