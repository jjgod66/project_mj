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
		width:100%;
		height:auto;
	}
</style>

<div class="card">
	<div class="card-header">
		<h3 class="card-title">Carousel</h3>
	</div>
	<div class="card-body">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class=""></li>
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="item">
					<img class="first-slide boxImg"
						src="storePath/default/noImg.jpg"
						alt="First slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>Example headline.</h1>
							<p>
								Note: If you're viewing this page via a
								<code>file://</code>
								URL, the "next" and "previous" Glyphicon buttons on the left and
								right might not load/display properly due to web browser
								security rules.
							</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Sign
									up today</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item active">
					<img class="second-slide boxImg"
						src="/storePath/default/noImg.jpg"
						alt="Second slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>Another example headline.</h1>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Learn
									more</a>
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<img class="third-slide boxImg"
						src="storePath/default/noImg.jpg"
						alt="Third slide">
					<div class="container">
						<div class="carousel-caption">
							<h1>One more for good measure.</h1>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
							<p>
								<a class="btn btn-lg btn-primary" href="#" role="button">Browse
									gallery</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</div>

<section class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="card card-primary">


					<div class="card-body">
						<div class="row">
							<div class="col-sm-4">
								<a href="#"> <img src="https://placehold.it/300x300"
									alt="..." class="boxImg">
								</a>
								<h2 class="vhsxm">가게 이름</h2>
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