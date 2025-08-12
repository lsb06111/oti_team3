<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jspf/head.jspf" %> <!-- 헤드 부분 고정 -->
<!-- 커스텀 CSS import 존 -->

</head>
<body>
<%@ include file="/jspf/header.jspf" %> <!-- 헤더부분 고정 -->

<section>
  <div class="container py-5">
    <div class="row" >
      <div class="col">
        <nav aria-label="breadcrumb" class="bg-body-tertiary rounded-3 p-3 mb-4">
          <ol class="breadcrumb mb-0">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item"><a href="#">User</a></li>
            <li class="breadcrumb-item active" aria-current="page">User Profile</li>
          </ol>
        </nav>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-4">
        <div class="card mb-4" style="border-radius: 15px;box-shadow: 0 5px 25px rgba(0, 0, 0, 0.05);border: none;">
          <div class="card-body text-center">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3">이수빈</h5>
            <p class="text-muted mb-1">부산여행 중독자</p>
            <p class="text-muted mb-4">주 여행 지역: 부산, 인천</p>
            <div class="d-flex justify-content-center mb-2">
              <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary" style="--bs-btn-bg:#5c99ee; 
             --bs-btn-hover-bg:#447fcc; 
             --bs-btn-border-color:#5c99ee; 
             --bs-btn-hover-border-color:#447fcc;">팔로잉</button>
              <button  type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-primary ms-1" style=" 
             --bs-btn-hover-bg:#447fcc; 
             --bs-btn-border-color:#5c99ee; 
             --bs-btn-hover-border-color:#447fcc;">팔로우</button>
            </div>
          </div>
        </div>
        
      </div>
      <div class="col-lg-8">
        
        <!--  -->
		<section id="services" class="services section" style="padding:0">

      <div class="container">

        <div class="row gy-4">

          <div class="col-12">
            <div class="service-card">
              <div class="service-icon">
                <i class="bi bi-palette"></i>
              </div>
              <h3>Creative Design</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore.</p>
              <a href="service-details.html" class="service-link">
                Learn More
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->

          <div class="col-12">
            <div class="service-card">
              <div class="service-icon">
                <i class="bi bi-code-slash"></i>
              </div>
              <h3>Web Development</h3>
              <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>
              <a href="service-details.html" class="service-link">
                Learn More
                <i class="bi bi-arrow-right"></i>
              </a>
            </div>
          </div><!-- End Service Card -->
        
        </div>

      </div>

    </section>
        
        
        
        
        <!--  -->
      </div>
    </div>
  </div>
</section>
    
    
<%@ include file="/jspf/footer.jspf" %> <!-- 푸터 부분 고정 -->
</body>
</html> 