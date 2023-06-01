<%@page import="kr.or.dw.store.vo.StoreVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%
	StoreVO storeVo = (StoreVO) request.getAttribute("storeVo");
%>
<script>
	$(function(){
		
		function imgFilePreview (e) {
			let formData = new FormData();
//			console.log(formData.keys());
			let fileList = ($('#imgUp')[0]).files;
			console.log(fileList);
			let cnt = 0;
			for(let file of fileList){
				cnt++;
				$(this).closest(".row").append("<div class='col-12 col-sm-6'>" + (file) +"</div>")
			}
			let reader = new FileReader();
			
			reader.onload = function (e) {
				$("#profile_picture").attr("src", e.target.result);
			};
// 			console.log(e.target);
			reader.readAsDataURL(e.target.files[0]);
			
			/* 
				readAsText 	  	  - 그 냥 Text로 읽는 것. 이미지 같은 것을 읽으면 인코딩이 되어 있지 않으므로 깨진 내용을 반환한다.
				readAsDataURL 	  - base64로 인코딩합니다. 이미지를 다루는데 좋다.
				readAsArrayBuffer - ArrayBuffer 객체를 반환한다. => buffer니까 데이터를 잘게 조각낸 것이고, 이를 서버에 보내서 stream으로 처리하면 된다.
																영상, 오디오 등의 스트림 데이터를 다루는데 좋다.
			*/
			
		};
		
		function onFilePicked(event) {
		  var input = event.target;
		  var file = input;
// 		  console.log(file.files[1]);
		};
		
		$("#imgUp").on("change", imgFilePreview);
		
		$("#saveImgBtn").on("click", function(){
// 				let formData = new FormData($("#upload_form")[0]);
				let formData = new FormData();
// 				console.log(formData.keys());
				let fileList = ($('#imgUp')[0]).files;
				console.log(fileList);
				let cnt = 0;
				for(let file of fileList){
					cnt++;
					formData.append('imgUp'+cnt, file);
				}
				console.log(formData.get('imgUp1'))
				console.log(formData.get('imgUp2'))
			/*  
				FormData를 사용하여 <form> 태그처럼 파일을 넘기는 방식을 알아보려고 한다.
				dataType 은 내가 보내는 데이터의 타입이 아니고, 서버가 응답(response)할 때 보내줄 데이터의 타입니다.
				processData 관련하여, 일반적으로 서버에 전달되는 데이터는 query String 이라는 형태로 전달된다.
				data 속성의 값을 Jquery 내부적으로 query String 으로 만드는데,
				파일 전송의 경우 이를 하지 않아야 하고 이를 설정하는 것이 processData : false 이다.
				contentType 은 default 값이 "application/x-www-form-urlencoded; charset=utf-8" 인데,
				"multipart/form-data" 로 전송이 되게 false로 넣어준다.
				
				[요약]
				- contentType : false 로 선언 시 content-type 헤더가 multipart/form-data로 전송
				- processData : false 로 선언 시 formData를 String 으로 변환하지 않음
			*/
			
			$.ajax({
				url : "<%=request.getContextPath()%>/file/storePicture.do?store_no=<%=storeVo.getStore_no()%>",
				processData : false,
				contentType : false,
				data : formData,
				dataType : "json",
				method : "post",
				success : function(res){
					console.log(res);
				},
				error : function(err){
					console.log(err);
				}
			});
		});
		
		
		
		
		
	});
</script>
<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>점포 사진 추가 page</h1>
			</div>
		</div>
	</div>
</section>

<div class="card card-primary card-outline">
	<div class="card-body">
		<div class="imgList">
			<div class="row">
				<div class="col-12 col-sm-6">
				adddddddddddddddddddddddddd
				</div>
				<div class="col-12 col-sm-6">
					<form id="upload_form" method="post" enctype="multipart/form-data">
						<div class="text-center">
									<a href="#" id="changeSelfie">
									
									<%
										String src = "/storePath/" + storeVo.getStore_no() + "/cat1.jpg";
// 										if (storeVo != null) {
// 											if (storeVo.getPic_path() != null) {
// 												src = "/profilePath/" + vo.getPic_path();
// 												}
// 										}
									%>
									
										<img id="profile_picture" src="<%= src %>" alt="User profile picture" >
									</a>
						<input type="file" name="imgUp" id="imgUp" accept=".jpg, .jpeg, .png" multiple>
<!-- 						<input type="file" name="imgUp2" id="imgUp2" accept=".jpg, .jpeg, .png" multiple> -->
						<a href="#" class="btn btn-primary btn-block" id="saveImgBtn"><b>사진 저장</b></a>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>