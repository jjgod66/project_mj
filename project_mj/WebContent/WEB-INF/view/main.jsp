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