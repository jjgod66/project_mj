<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="content-header">
	<div class="container">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1 class="m-0">
					Top Navigation <small>Example 3.0</small>
				</h1>
			</div>
			<div class="col-sm-6">
				<ol class="breadcrumb float-sm-right">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item"><a href="#">Layout</a></li>
					<li class="breadcrumb-item active">Top Navigation</li>
				</ol>
			</div>
		</div>
	</div>
</div>
<div class="content">
	<div class="container">
		<div class="row" style="padding-top: 150px;">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card card-info">

					<div class="card-header" style="background-color: #6c757d">

						<h3 class="card-title">Login</h3>
					</div>
					<form class="form-horizontal" action="<%=request.getContextPath()%>/user/userLogin.do" method="post">
						<div class="card-body">
							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="inputEmail3"
										placeholder="Email" name="user_email" required>
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="inputPassword3"
										placeholder="Password" name="user_pass" required>
								</div>
							</div>
							<div class="form-group row">
								<div class="offset-sm-2 col-sm-10">

								</div>
							</div>
						</div>

						<div class="card-footer">

							<button type="submit" class="btn btn-info btn-sm float-right" style="background-color: #6c757d" name="Sign in">Sign in</button>
						</div>

					</form>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp" %>