<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<div class="card">
	<div class="card-header p-2">
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link" href="#activity"
				data-toggle="tab">회원정보 수정</a></li>
		</ul>
	</div>
			<div class="tab-pane active" id="settings">
				<form class="form-horizontal">
					<div class="form-group row">
						<label for="inputName" class="col-sm-2 col-form-label">Name</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="inputName"
								placeholder="Name">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="inputEmail"
								placeholder="Email">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputName2" class="col-sm-2 col-form-label">Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputName2"
								placeholder="Name">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputExperience" class="col-sm-2 col-form-label">Experience</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="inputExperience"
								placeholder="Experience"></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label for="inputSkills" class="col-sm-2 col-form-label">Skills</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="inputSkills"
								placeholder="Skills">
						</div>
					</div>
					<div class="form-group row">
						<div class="offset-sm-2 col-sm-10">
							<div class="checkbox">
								<label> <input type="checkbox"> I agree to the <a
									href="#">terms and conditions</a>
								</label>
							</div>
						</div>
					</div>
					<div class="form-group row">
						<div class="offset-sm-2 col-sm-10">
							<button type="submit" class="btn btn-danger">Submit</button>
						</div>
					</div>
				</form>
			</div>

		</div>

	</div>
</div>
<%@ include file="../footer.jsp" %>