<%@page import="kr.or.dw.store.vo.ImgStoreVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.dw.store.vo.StoreVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%
	StoreVO storeVo = (StoreVO) request.getAttribute("storeVo");
	List<ImgStoreVO> imgStoreVoList = (List<ImgStoreVO>)request.getAttribute("imgStoreVoList");
%>
<style>
	.boxImg {
		display:block;
		width:100%;
		height:auto;
	}
</style>
<script>
	$(function(){
		
	<%
		for (ImgStoreVO imgStore : imgStoreVoList) {
	%>
		$(".rowImg").append("<div class='col-md-6 alreadyImg'><img src='/storePath/<%=imgStore.getImg_url()%>' class='boxImg'>")
	<%		
		}
	%>
		
		
		let cnt = 0;
		function imgFilePreview (e) {
			$(".alreadyImg").remove();
			
			let previewBox = $(this);
			let formData = new FormData();
			let fileList = e.target.files;
			let priviewImg;
			for(let file of fileList){
				let reader = new FileReader();
				reader.onload = function (e) {
					previewBox.closest(".row").append("<div class='col-md-6'><img src='" + e.target.result + "'class='boxImg' id='" + cnt + "'></div>");
				};
				reader.readAsDataURL(e.target.files[cnt]);
				cnt++;
			}
			
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
		};
		
		$("#imgUp").on("change", imgFilePreview);
		
		$("#saveImgBtn").on("click", function(){
			if (confirm("기존의 사진을 지우고 새롭게 올리시겠습니까?")) {
				let formData = new FormData();
				let fileList = ($('#imgUp')[0]).files;
				
				console.log(fileList);
				let cnt = 0;
				for(let file of fileList){
					cnt++;
					formData.append('imgUp'+cnt, file);
				}
				
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
				alert("사진이 변경되었습니다.");
			}	
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
			<div class="row rowImg">
				<div class="col-md-4"></div>			
				<div class="col-md-4" style="text-align: center;">
					<form id="upload_form" method="post" enctype="multipart/form-data">
<!-- 									<a href="#" id="changeSelfie"></a> -->
						<input type="file" name="imgUp" id="imgUp" accept=".jpg, .jpeg, .png" style="padding-left: 3rem;padding-bottom: 1rem;"multiple>
<!-- 						<input type="file" name="imgUp2" id="imgUp2" accept=".jpg, .jpeg, .png" multiple> -->
						<a href="#" class="btn btn-primary btn-block" id="saveImgBtn"><b>사진 저장</b></a>
					</form>
				</div>
				<div class="col-md-4"></div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>