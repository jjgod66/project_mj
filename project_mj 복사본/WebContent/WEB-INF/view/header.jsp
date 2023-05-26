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
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome Icons -->
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/assets/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/assets/dist/css/adminlte.min.css">
	<script src="<%=request.getContextPath()%>/assets/plugins/jquery/jquery.js"></script>

  </head>

<body class="layout-top-nav" style="height: auto;">
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
						<li class="nav-item"><a href="index3.html" class="nav-link">홈 </a>
						</li>
						<li class="nav-item"><a href="#" class="nav-link">맛집찾기 </a>
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

					<li class="nav-item"><a href="index3.html" class="nav-link">로그인  </a>
						</li>

					<li class="nav-item"><a href="index3.html" class="nav-link">회원가입  </a>
						</li>
						
					<li class="nav-item"><a href="index3.html" class="nav-link">고객센터  </a>
						</li>
				</ul>
			</div>
		</nav>
		<div class="content-wrapper" style="min-height: 822px;">
		<div class="container">