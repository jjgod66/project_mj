<%@page import="kr.or.dw.user.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>은행 먹거리  | Home</title>
    
   <!-- Google Font: Source Sans Pro -->
<!-- 	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"> -->
	<!-- Font Awesome Icons -->
	<%-- <link rel="stylesheet"
		href="<%=request.getContextPath()%>/assets/plugins/fontawesome-free/css/all.min.css"> --%>
	<!-- Theme style -->
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/assets/dist/css/adminlte.css">
	<%-- <script src="<%=request.getContextPath()%>/assets/plugins/jquery/jquery.js"></script> --%>
	<%
		UserVO userVO = (UserVO)session.getAttribute("userVO");
	%>
	
	
	<style type="text/css">
	
	.rkrptkdghaud {
		display: flex;
		margin-left: 55px;		
	}
	
	.rkrptkdghaud2 {
		display: inline-block;
	}
	
	.rkrptkdghaud3 {
		display: flex;
	}
	
	
	font-style: italic;
	
	</style>
	
	
	
	
	
	
  </head>

<body class="layout-top-nav" style="height: auto;">
<%
	String gcp = request.getContextPath();
%>
	<div class="wrapper">

		<nav
			class="main-header navbar navbar-expand-md navbar-light navbar-white">
			<div class="container">
				<a href="../../index3.html" class="navbar-brand"> <img
					src="../../dist/img/AdminLTELogo.png" alt="AdminLTE Logo"
					class="brand-image img-circle elevation-3" style="opacity: .8">
					<span class="brand-text font-weight">은행나무 </span>
				</a>
				<button class="navbar-toggler order-1" type="button"
					data-toggle="collapse" data-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse order-3" id="navbarCollapse">

					<ul class="navbar-nav">
						<li class="nav-item"><a href="<%=gcp%>/cs/main.do" class="nav-link">홈 </a>
						</li>
						<li class="nav-item"><a href="<%=gcp%>/store/storeMain.do" class="nav-link">맛집찾기 </a>
						</li>
						<li class="nav-item"><a href="<%=gcp%>/comm/commMain.do" class="nav-link">커뮤 </a>
						</li>
						
					</ul>

					<form class="form-inline ml-0 ml-md-3">
						<div class="input-group input-group-sm">
							<input class="form-control form-control-navbar" type="search"
								placeholder="Search" aria-label="Search">
							<div class="input-group-append">
								<button class="btn btn-navbar" type="submit">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>

				<ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">

					<li class="nav-item"><a href="<%=gcp%>/user/userLoginForm.do" class="nav-link">로그인  </a>
						</li>

					<li class="nav-item"><a href="<%=gcp%>/user/userSignupForm.do" class="nav-link">회원가입  </a>
						</li>
						
					<li class="nav-item"><a href="<%=gcp%>/cs/csMain.do" class="nav-link">고객센터  </a>
						</li>
				</ul>
			</div>
		</nav>
		<div class="content-wrapper" style="min-height: 822px;">
		<div class="container">




<div class="card">
	<div class="card-header">
		<h3 class="card-title">Carousel</h3>
	</div>

	<div class="card-body">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class=""></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"
					class=""></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item">
					<img class="d-block w-100"
						src="https://placehold.it/900x500/39CCCC/ffffff&amp;text=I+Love+Bootstrap"
						alt="First slide">
				</div>
				<div class="carousel-item active">
					<img class="d-block w-100"
						src="https://placehold.it/900x500/3c8dbc/ffffff&amp;text=I+Love+Bootstrap"
						alt="Second slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100"
						src="https://placehold.it/900x500/f39c12/ffffff&amp;text=I+Love+Bootstrap"
						alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-custom-icon" aria-hidden="true"> <i
					class="fas fa-chevron-left"></i>
			</span> <span class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-custom-icon" aria-hidden="true"> <i
					class="fas fa-chevron-right"></i>
			</span> <span class="sr-only">Next</span>
			</a>
		</div>
	</div>

</div>



<div class="rkrptkdghaud">
	<div class="rkrptkdghaud">
		<a class="rkrptkdghaud3" href="#"> <img class="rkrptkdghaud2" src="https://placehold.it/450x450" alt="...">			
		</a>
		<h2>가게 이름</h2><br>
		<p>가게 소개</p>
		<a class="rkrptkdghaud3" href="#"> <img class="rkrptkdghaud2" src="https://placehold.it/450x450" alt="...">
		</a>
		<h2>가게 이름</h2><br>
		<p>가게 소개</p>
	</div>
</div>

		

	<h3 class="timeline-header">가게 상호명1</h3>






	





	<section class="content">
		<div class="container-fluid">
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
								<div class="col-sm-4">
										<a href="#"> <img src="https://placehold.it/300x300"
											alt="...">
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