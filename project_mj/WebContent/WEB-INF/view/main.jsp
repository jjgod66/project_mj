<%@page import="kr.or.dw.store.vo.StoreVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%
	List<StoreVO> mainStoreVoList = (List<StoreVO>) request.getAttribute("mainStoreVoList");
// 	String mainStoreUrl_1 = mainStoreVoList.get(0).get();
// 	String mainStoreUrl_2 = mainStoreVoList.get(1).getStore_url();
// 	String mainStoreUrl_3 = mainStoreVoList.get(2).getStore_url();
%>
<style>
	.boxImg {
		display:block;
		margin-left : auto;
		margin-right : auto;
	}
</style>


<section class="content">
	<div class="container-fluid">
<div class="card mb-3">
	<div class="card-body">
	<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="true">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleIndicators"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/storePath/default/noImg.jpg" class="d-block boxImg"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/storePath/default/noImg.jpg" class="d-block boxImg"
						alt="...">
				</div>
				<div class="carousel-item">
					<img src="/storePath/default/noImg.jpg" class="d-block boxImg"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		</div>
		<div class="col-md-2"></div>
	</div>
	</div>
</div>
<div class="container px-4 py-5" id="custom-cards">
    <h2 class="pb-2 border-bottom">Custom cards</h2>

    <div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('unsplash-photo-1.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Short title, long jacket</h3>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="https://github.com/twbs.png" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
              </li>
              <li class="d-flex align-items-center me-3">
                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"></use></svg>
                <small>Earth</small>
              </li>
              <li class="d-flex align-items-center">
                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"></use></svg>
                <small>3d</small>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('unsplash-photo-2.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
            <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Much longer title that wraps to multiple lines</h3>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="https://github.com/twbs.png" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
              </li>
              <li class="d-flex align-items-center me-3">
                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"></use></svg>
                <small>Pakistan</small>
              </li>
              <li class="d-flex align-items-center">
                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"></use></svg>
                <small>4d</small>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <div class="col">
        <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg" style="background-image: url('unsplash-photo-3.jpg');">
          <div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
            <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Another longer title belongs here</h3>
            <ul class="d-flex list-unstyled mt-auto">
              <li class="me-auto">
                <img src="https://github.com/twbs.png" alt="Bootstrap" width="32" height="32" class="rounded-circle border border-white">
              </li>
              <li class="d-flex align-items-center me-3">
                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#geo-fill"></use></svg>
                <small>California</small>
              </li>
              <li class="d-flex align-items-center">
                <svg class="bi me-2" width="1em" height="1em"><use xlink:href="#calendar3"></use></svg>
                <small>5d</small>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

		<div class="row">
			<div class="col-12">
				<div class="card card-primary">


					<div class="card-body">
						<div class="row">
							<div class="col-sm-4">
								<a href="#"> <img src="https://placehold.it/300x300"
									alt="...">
								</a>
								<h2 class="vhsxm">가게 이름</h2>
								<p>가게 소개</p>
							</div>
							<div class="col-sm-4">
								<a href="#"> <img src="https://placehold.it/300x300"
									alt="...">
								</a>
								<h2>가게 이름</h2>
								<p>가게 소개</p>
							</div>
							<div class="col-sm-4">
								<a href="#"> <img src="https://placehold.it/300x300"
									alt="...">
								</a>
								<h2>가게 이름</h2>
								<p>가게 소개</p>
							</div>
						</div>
						<div class="row mt-4">
							<div class="col-sm-4">
								<a href="#"> <img src="https://placehold.it/300x300"
									alt="..." class="boxImg">
								</a>
								<h2>가게 이름</h2>
								<p>가게 소개</p>
							</div>

							<div class="col-sm-4">
								<a href="#"> <img src="https://placehold.it/300x300"
									alt="..." class="boxImg">
								</a>
								<h2>가게 이름</h2>
								<p>가게 소개</p>
							</div>
							<div class="col-sm-4">
								<a href="#"> <img src="https://placehold.it/300x300"
									alt="..." class="boxImg">
								</a>
								<h2>가게 이름</h2>
								<p>가게 소개</p>
							</div>
						</div>

					</div>

				</div>

			</div>

		</div>

	</div>

</section>







<%@ include file="footer.jsp"%>