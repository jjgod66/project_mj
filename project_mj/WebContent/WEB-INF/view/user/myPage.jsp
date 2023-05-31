<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>


<!-- 	
					readAsText - 그냥 Text 로 읽는 것. 이미지같은걸 읽으면 인코딩이 되어 있지 않으므로 깨진 내용을 반환한다.
					readAsDataURL - base64로 인코딩합니다. 이미지를 다루는데 좋다.
					readAsArrayBuffer - ArrayBuffer 객체를 반환한다.
						==> buffer 니까, 데이터를 잘게 조각낸 것이고, 이를 서버에 보내서
							stream으로 처리하면 된다.
							영상, 오디로 등의 스트림 데이터를 다루는데 좋다.

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
 -->
				
<div class="col-md-3">

	<!-- 내 정보 확인  -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="card card-primary card-outline">
						<div class="card-body box-profile">
						<form id="upload_form" method="post" enctype="multipart/form-data">
							<div class="text-center">
								<img class="profile-user-img img-fluid img-circle"
									id="profile_img" src="/profilePath/<%=userVO.getUser_img()%>"
									alt="User profile picture">

							</div>
						</form>
						<h3 class="profile-username text-center"><%=userVO.getUser_nick() %></h3></li>
							<p class="text-muted text-center">권한출력</p>
							<ul class="list-group list-group-unbordered mb-3">
								<li class="list-group-item"><b>Email</b> <a
									class="float-right"><%=userVO.getUser_email() %></a></li>
								<li class="list-group-item"><b>이름</b> <a
									class="float-right"><%=userVO.getUser_name() %></a></li>
						</ul> 
							<button type="button" class="btn btn-block btn-outline-primary btn-sm" >
							<a class="nav-link" id = "userChange">개인정보수정 </a></button>
							<button type="button" class="btn btn-block btn-primary btn-xs" id="sudmit">저장</button>
						</div>
						</div>
					</div>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>

<%@ include file="../footer.jsp" %>