<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="content">
	<div class="container-fluid">
		<div class="row" style="padding-top:150px">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div class="card card-info">
					<div class="card-header">
						<h3 class="card-title">Sign Up</h3>
					</div>
					<form method="post"
						action="<%=request.getContextPath()%>/user/insertUser.do"
						id="joinForm">
						<div class="card-body">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i
										class="fas fa-envelope"></i>
									</span>
								</div>
								<input type="email" class="form-control" placeholder="email"
									name="email" required> <span
									class="error invalid-feedback"> 이메일 형식을 맞춰서 작성해주세요. </span>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i
										class="fas fa-solid fa-key"></i>
									</span>
								</div>
								<input type="password" class="form-control"
									placeholder="password" name="pass" required> <span
									class="error invalid-feedback"> 비밀번호는 영문 소문자, 대문자, 숫자,
									특수문자가 최소 1개씩 입력되어야 합니다. </span>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i
										class="fas fa-solid fa-check"></i>
									</span>
								</div>
								<input type="password" class="form-control"
									placeholder="check password" name="passCheck" required>
								<span class="error invalid-feedback"> 입력하신 비밀번호와 일치하지
									않습니다. </span>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"> <i
										class="fab fa-brands fa-kickstarter-k"></i>
									</span>
								</div>
								<input type="text" class="form-control" placeholder="nickname"
									name="nick" required> <span
									class="error invalid-feedback"> 닉네임은 특수문자를 제외한 3-13 자리로
									입력해주세요. </span> <span class="input-group-append">
									<button type="button" class="btn btn-info btn-flat"
										id="nickCheckBtn">중복확인</button>
								</span>
							</div>
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fas fa-solid fa-user"></i></span>
								</div>
								<input type="text" class="form-control" placeholder="name"
									name="name" required>
							</div>
							
							<div class="input-group input-group-sm">
								<input type="text" class="form-control"> <span
									class="input-group-append">
									<button type="submit" class="btn btn-info btn-flat">Go!</button>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
</div>
<!-- /.content -->

<%@ include file="../footer.jsp" %>