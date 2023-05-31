<%@page import="kr.or.dw.comm.vo.CommVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

	<script type="text/javascript">
		$(function(){
			
			$('#changeSelfie').on('click', function(){
				$('input[name=selfie]').click();
			})

			function imgFilePreview(e){
				let reader = new FileReader();
				
				reader.onload = function(e){
					$('#profile_img').attr('src', e.target.result);
				};
				
				reader.readAsDataURL(e.target.files[0]);
				/*
					readAsText - 그냥 Text 로 읽는 것. 이미지같은걸 읽으면 인코딩이 되어 있지 않으므로 깨진 내용을 반환한다.
					readAsDataURL - base64로 인코딩합니다. 이미지를 다루는데 좋다.
					readAsArrayBuffer - ArrayBuffer 객체를 반환한다.
						==> buffer 니까, 데이터를 잘게 조각낸 것이고, 이를 서버에 보내서
							stream으로 처리하면 된다.
							영상, 오디로 등의 스트림 데이터를 다루는데 좋다.
				*/
				
				$('#saveProfileBtn').toggle();
			};
			
			$('#selfie').on('change', imgFilePreview);
			
			$('#saveProfileBtn').on('click', function(){
				let formData = new FormData($('#upload_form')[0]);
				
				/*
					FormData를 사용하여 <form> 태그처럼 파일을 넘기는 방식을 알아보려고 한다.
					dataType 은 내가 보내는 데이터의 타입이 아니고 서버가 응답(response)할 때 보내줄 데이터의 타입이다.
					processData 관련하여, 일반적으로 서버에 전달되는 데이터는 query String 이라는 형태로 전달된다.
					data 속성의 값을 Jquery 내부적으로 query String 으로 만드는데,
					파일 전송의 경우 이를 하지 않아야 하고 이를 설정하는 것이 processData : false 이다.
					contentType 은 default 값이 "application/x-www-form-urlencoded; charset=utf-8" 인데,
					"multipart/form-data" 로 전송이 되게 false 로 넣어준다.
					
					[요약]
					- contentType : false 로 선언 시 content-type 헤더가 multipart/form-data 로 전송되게 함
					- processData : flase 로 선언 시 formData를 String 으로 변환하지 않음
				*/
				
				$.ajax({
					url : "<%=request.getContextPath()%>/file/profilePicture.do",
					processData : false,
					contentType : false,
					data : formData,
					dataType : "json",
					method : "post",
					success : function(res){
						console.log(res);
					},
					error : function(){
						
					}
				});
				
			});
			
		})
	</script>
<div class="col-md-3">
	<!-- 내 정보 확인  -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="card card-primary card-outline">
						<div class="card-body box-profile">
							<form id="upload_form" method="post"
								enctype="multipart/form-data">
								<div class="text-center">
									<a href="#" id="changeSelfie"> <img
										class="profile-user-img img-fluid img-circle" id="profile_img"
										src="/profilePath/<%=userVO.getUser_img() %>"
										alt="User profile picture">
									</a> <input type="file" style="display: none;" name="selfie"
										id="selfie" accept=".jpg, .jpeg, .png"> <a href="#"
										class="btn btn-primary btn-block" id="saveProfileBtn"
										style="display: none;"><b>프로필 사진 저장</b></a>
								</div>
							</form>
							<h3 class="profile-username text-center"><%=userVO.getUser_nick() %></h3>
							<p class="text-muted text-center">권한출력</p>
							<ul class="list-group list-group-unbordered mb-3">
								<li class="list-group-item"><b>Email</b> <a
									class="float-right"><%=userVO.getUser_email() %></a></li>
								<li class="list-group-item"><b>이름</b> <a
									class="float-right"><%=userVO.getUser_name() %></a></li>
							</ul>
							<a href="#" class="btn btn-primary btn-block"><b>저장</b></a>
						</div>
					</div>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
	<!-- 2번째 내가 쓴 글 및 정보수정   -->
	<div class="col-md-9">
		<div class="card">
			<div class="card-header p-2">
				<ul class="nav nav-pills">
					<li class="nav-item"><a class="nav-link active"
						href="#activity" data-toggle="tab">내가 쓴 글</a></li>
					<li class="nav-item"><a class="nav-link" href="#timeline"
						data-toggle="tab">Timeline</a></li>
					<li class="nav-item"><a class="nav-link" href="#settings"
						data-toggle="tab">정보 수정</a></li>
				</ul>
			</div>
			<div class="card-body">
				<div class="tab-content">
 <!-- 1 
					<div class="row">
						<div class="col-md-4 d-flex">
							<div class="user-block col-md-8">
								<img class="img-circle img-bordered-sm"
									src="<%=CommVO.getPic_path() == null ? "/profilePath/default/defaultProfile.jpg"
		: "/profilePath/" + CommVO.getPic_path()%>"
									alt="user image"> <span class="username"> <a
									href="#"><%=CommVO.getNick()%></a>
								</span> <span class="description"><%=CommVO.getRe_wdt()%></span>
							</div>
							<div class="icon-block col-md-4 align-self-center">
								<input type="hidden" value="<%=CommVO.getRe_no()%>"> <a
									href="#" class="float-right btn-tool reply-delete-btn"> <i
									class="fas fa-times" <%=hidden%>></i>
								</a> <a href="#" class="float-right btn-tool reply-update-btn">
									<i class="fas fa-pen" <%=hidden%>></i>
								</a>
							</div>
						</div>
						<div class="col-md-8 align-self-center">
							<div class="reply-update"><%=replyVo.getRe_content()%></div>
						</div>
					</div>
					<hr style="margin: 0">-->
<!-- 2 
					<div class="tab-pane" id="timeline">

						<div class="timeline timeline-inverse">

							<div class="time-label">
								<span class="bg-danger"> 10 Feb. 2014 </span>
							</div>


							<div>
								<i class="fas fa-envelope bg-primary"></i>
								<div class="timeline-item">
									<span class="time"><i class="far fa-clock"></i> 12:05</span>
									<h3 class="timeline-header">
										<a href="#">Support Team</a> sent you an email
									</h3>
									<div class="timeline-body">Etsy doostang zoodles disqus
										groupon greplin oooj voxy zoodles, weebly ning heekya handango
										imeem plugg dopplr jibjab, movity jajah plickers sifteo edmodo
										ifttt zimbra. Babblely odeo kaboodle quora plaxo ideeli hulu
										weebly balihoo...</div>
									<div class="timeline-footer">
										<a href="#" class="btn btn-primary btn-sm">Read more</a> <a
											href="#" class="btn btn-danger btn-sm">Delete</a>
									</div>
								</div>
							</div>


							<div>
								<i class="fas fa-user bg-info"></i>
								<div class="timeline-item">
									<span class="time"><i class="far fa-clock"></i> 5 mins
										ago</span>
									<h3 class="timeline-header border-0">
										<a href="#">Sarah Young</a> accepted your friend request
									</h3>
								</div>
							</div>


							<div>
								<i class="fas fa-comments bg-warning"></i>
								<div class="timeline-item">
									<span class="time"><i class="far fa-clock"></i> 27 mins
										ago</span>
									<h3 class="timeline-header">
										<a href="#">Jay White</a> commented on your post
									</h3>
									<div class="timeline-body">Take me to your leader!
										Switzerland is small and neutral! We are more like Germany,
										ambitious and misunderstood!</div>
									<div class="timeline-footer">
										<a href="#" class="btn btn-warning btn-flat btn-sm">View
											comment</a>
									</div>
								</div>
							</div>


							<div class="time-label">
								<span class="bg-success"> 3 Jan. 2014 </span>
							</div>


							<div>
								<i class="fas fa-camera bg-purple"></i>
								<div class="timeline-item">
									<span class="time"><i class="far fa-clock"></i> 2 days
										ago</span>
									<h3 class="timeline-header">
										<a href="#">Mina Lee</a> uploaded new photos
									</h3>
									<div class="timeline-body">
										<img src="https://placehold.it/150x100" alt="..."> <img
											src="https://placehold.it/150x100" alt="..."> <img
											src="https://placehold.it/150x100" alt="..."> <img
											src="https://placehold.it/150x100" alt="...">
									</div>
								</div>
							</div>

							<div>
								<i class="far fa-clock bg-gray"></i>
							</div>
						</div>
					</div> -->
 <!-- 3 
					<div class="tab-pane" id="settings">
						<form class="form-horizontal">
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
								<div class="offset-sm-2 col-sm-10">
									<button type="submit" class="btn btn-danger">수정완료</button>
								</div>
							</div>
						</form>
					</div>
-->
<!-- 				</div>

			</div>
		</div>

	</div> -->
</div>
<%@ include file="../footer.jsp" %>