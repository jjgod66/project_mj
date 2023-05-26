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
		<div class="row" style="padding-top : 150px;">
			<div class="col-sm-2"></div>
			<div class="col-sm-8">
				<div class="card card-info">
					<div class="card-header">
						<h3 class="card-title">Horizontal Form</h3>
					</div>


					<form class="form-horizontal">
						<div class="card-body">
							<div class="form-group row">
								<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="inputEmail3"
										placeholder="Email">
								</div>
							</div>
							<div class="form-group row">
								<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="inputPassword3"
										placeholder="Password">
								</div>
							</div>
							<div class="form-group row">
								<div class="offset-sm-2 col-sm-10">
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											id="exampleCheck2"> <label class="form-check-label"
											for="exampleCheck2">Remember me</label>
									</div>
								</div>
							</div>
						</div>

						<div class="card-footer">
							<button type="submit" class="btn btn-info">Sign in</button>
							<button type="submit" class="btn btn-default float-right">Cancel</button>
						</div>

					</form>
				</div>
			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp" %>