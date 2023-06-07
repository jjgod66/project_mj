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
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome Icons -->
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/assets/plugins/fontawesome-free/css/all.min.css">
	<!-- Theme style -->
<%-- 	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/dist/css/adminlte.min.css"> --%>
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<!-- 제이쿼리 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<%
		UserVO userVO = (UserVO)session.getAttribute("UserVO");
		if(userVO != null){
			
	%>
	<script>
	 
  	$(function(){
  		
		$('#loginCheck').text('로그아웃');  				
		$('#loginCheck').attr('href', '<%= request.getContextPath()%>/user/userLogout.do');
		
		if (<%=userVO.getAuth_cd().equals("A101")%>) {
			$('#signUp').text('관리자페이지');
			$('#signUp').attr('href', '<%= request.getContextPath()%>/admin/adminMain.do');
		} else if (<%=userVO.getAuth_cd().equals("B101")%>) {
			$('#signUp').text('마이페이지');
			$('#signUp').attr('href', '<%= request.getContextPath()%>/user/userMyPage.do'); 
		}
  	});
  </script>
<%	}	%>
  </head>

<body class="layout-top-nav" style="height: auto;">
<%
	String gcp = request.getContextPath();
%>

	<div class="wrapper">
		<nav
			class="main-header navbar navbar-expand-md navbar-light navbar-white bg-warning bg-gradient mb-3">
			<div class="container">
				<a href="<%=request.getContextPath() %>/cs/main.do"
					class="navbar-brand"> <img src="/logoPath/logo.jpg" alt="Logo"
					class="brand-image img-circle elevation-3"
					style="opacity: .8; float: left; width:2rem;"> <span
					class="brand-text font-weight">은행나무 </span>
				</a>
				<button class="navbar-toggler order-1" type="button"
					data-toggle="collapse" data-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse order-3" id="navbarCollapse">

					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a href="<%=gcp%>/cs/main.do"
							class="nav-link">홈 </a></li>
						<li class="nav-item"><a href="<%=gcp%>/store/storeMain.do"
							class="nav-link">맛집찾기 </a></li>
						<li class="nav-item"><a href="<%=gcp%>/comm/commMain.do"
							class="nav-link">커뮤 </a></li>

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

					<li class="nav-item"><a
						href="<%= request.getContextPath() %>/user/userLoginForm.do"
						class="nav-link" id="loginCheck">로그인 </a></li>


					<li class="nav-item"><a
						href="<%= request.getContextPath() %>/user/userSignupForm.do"
						class="nav-link" id="signUp">회원가입 </a></li>

					<li class="nav-item"><a href="<%=gcp%>/cs/announceForm.do"
						class="nav-link">공지사항 </a></li>
				</ul>
			</div>
		</nav>
		<div class="content-wrapper" style="min-height: 822px;">
			<div class="container">