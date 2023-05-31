<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<script type="text/javascript">
		$(function(){
			
			$('#changeSelfie').on('click', function(){
				$('input[name=selfie]').click();
			});


			
		});
	</script>



	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="card card-primary card-outline">
						<div class="card-body box-profile">
							<%-- <form id="upload_form" method="post" enctype="multipart/form-data">
								<div class="text-center">
									<a href="#" id="changeSelfie">
										<img class="profile-user-img img-fluid img-circle" id="profile_picture" src="/profilePath/<%=userVO.getUser_img() %>" alt="User profile picture">
									</a>
									<input type="file" style="display: none;" name="selfie" id="selfie" accept=".jpg, .jpeg, .png">
									<a href="#" class="btn btn-primary btn-block" id="saveProfileBtn" style="display: none;"><b>프로필 사진 저장</b></a>
								</div>
							</form> --%>
							<h3 class="profile-username text-center"><%=userVO.getUser_nick()%></h3>
							<p class="text-muted text-center">권한출력</p>
							<ul class="list-group list-group-unbordered mb-3">
								<li class="list-group-item">
									<b>Email</b>
									<a class="float-right"><%=userVO.getUser_email() %></a>
								</li>
								<li class="list-group-item">
									<b>이름</b>
									<a class="float-right"><%=userVO.getUser_name() %></a>
								</li>
							</ul>
							<button type="button" class="btn btn-block btn-outline-primary btn-sm" >
							개인정보수정 </button>
							<button type="button" class="btn btn-block btn-primary btn-xs" id="sudmit">저장</button>
						</div>
					</div>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>

<%@ include file="../footer.jsp" %>