<%@page import="kr.or.dw.store.vo.ImgReviewStoreVO"%>
<%@page import="kr.or.dw.store.vo.ReviewStoreVO"%>
<%@page import="kr.or.dw.store.vo.ImgStoreVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.dw.store.vo.StoreVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<%
	StoreVO storeVo = (StoreVO) request.getAttribute("storeVo");
	String store_name = storeVo.getStore_name();
	float store_rate = storeVo.getStore_rate();
	String store_tagNm_1 = storeVo.getStore_tagNm_1();
	String store_tagNm_2 = storeVo.getStore_tagNm_2();
	String store_tagNm_3 = storeVo.getStore_tagNm_3();
	int store_like = storeVo.getStore_like();
	int store_fav = storeVo.getStore_fav();
	int store_views = storeVo.getStore_views();
	String store_catName = storeVo.getCat_name();
	String store_des_s = storeVo.getStore_des_s();
	String store_des_d = storeVo.getStore_des_d();
	String store_tel = storeVo.getStore_tel();
	String store_addr = storeVo.getStore_addr();
	String store_hour = storeVo.getStore_hour();
	String store_break = storeVo.getStore_break();
	String store_url = storeVo.getStore_url();
	
	List<ImgStoreVO> imgStoreVoList = (List<ImgStoreVO>) request.getAttribute("imgStoreVoList");
	List<ReviewStoreVO> reviewStoreVoList = (List<ReviewStoreVO>) request.getAttribute("reviewStoreVoList");
	List<ImgReviewStoreVO> imgReviewStoreVoList = (List<ImgReviewStoreVO>) request.getAttribute("imgReviewStoreVoList");
	
	int userLike = 0;
	if (request.getAttribute("userLike") != null) {
		userLike = Integer.parseInt(request.getAttribute("userLike").toString());
	}
	int userFav = 0;
	if (request.getAttribute("userFav") != null) {
		userFav = Integer.parseInt(request.getAttribute("userFav").toString());
	}
%>
<style>
	.boxImg {
		display:block;
		width:100%;
		height:auto;
	}
	.likeFavUl {
		list-style: none;
		padding-left : 0;
		width : 80%;
	}
	.likeFavUl li {
		font-size : 25px;
		text-align : center;
		color : white;
	}
</style>
<<<<<<< Updated upstream
<<<<<<< Updated upstream
=======
=======
>>>>>>> Stashed changes
<script>
	$(function(){
		
		// 좋아요 색상 변경 함수
		function changeLikeColor(){
			let l = $('#likeBtn');	// 좋아요 'a' 태그 요소 가져오기
			let flag = l.data('like');	// 가져온 'a' 태그의 data-like 속성값 확인
			if(flag){	// data-like 값으로 분개
				// 좋아요 눌려있을 때
				l.data('like', false);
				l.css('background-color', '#dc3545');
			}else{
				// 좋아요를 안눌려있을 때
				l.data('like', true);
				l.css('background-color', '#6c757d');
			};
			return flag;
		}
		
		changeLikeColor();
		
		$('#likeBtn').on('click', function(){
			if(<%=userVO == null%>)	return; // 로그인을 했을 때만 이벤트 로직 수행
			let flag = changeLikeColor();
			
			// 좋아요 상태 저장
			
			$.ajax({
				url : "<%=request.getContextPath()%>/store/like.do",
				dataType : "json",
				type : "post",
				data : {
					store_no : "<%=storeVo.getStore_no()%>",
					likeFlag : flag
				},
				success : function(res){
					console.log(res);
					$('#likeCnt').text('(' + res.count + ')');
					console.log($('#likeCnt').text('(' + res.count + ')'));
				},
				error : function(err){
					alert(err.status);
				}
			});
		});
		
		// 즐겨찾기 색상 변경 함수
		function changeFavColor(){
			let l = $('#favBtn');	// 좋아요 'a' 태그 요소 가져오기
			let flag = l.data('like');	// 가져온 'a' 태그의 data-like 속성값 확인
			if(flag){	// data-like 값으로 분개
				// 좋아요 눌려있을 때
				l.data('like', false);
				l.css('background-color', '#0d6efd');
			}else{
				// 좋아요를 안눌려있을 때
				l.data('like', true);
				l.css('background-color', '#6c757d');
			};
			return flag;
		}
		
		changeFavColor();
		
		$('#favBtn').on('click', function(){
			if(<%=userVO == null%>)	return; // 로그인을 했을 때만 이벤트 로직 수행
			let flag = changeFavColor();
			
			// 즐겨찾기 상태 저장
			
			$.ajax({
				url : "<%=request.getContextPath()%>/store/fav.do",
				dataType : "json",
				type : "post",
				data : {
					store_no : "<%=storeVo.getStore_no()%>",
					favFlag : flag
				},
				success : function(res){
					console.log(res);
					$('#likeCnt').text('(' + res.count + ')');
					console.log($('#favCnt').text('(' + res.count + ')'));
				},
				error : function(err){
					alert(err.status);
				}
			});
		});
		
		function reviewTemplate(review) {
			let reviewSrc = "/profilePath/default/defaultProfile.jpg"; 
			if (review.user_img != null || review.user_img != "") {
				reviewSrc = "/profilePath/" + review.user_img;
			}
			
			$("#re_container").prepend(
				 '	<div class="row">'
				+'		<div class="col-md-4">'
				+'			<div class="user-block">'
				+'				<img class="img-circle img-bordered-sm" src="' + reviewSrc + '" alt="user image">'
				+'				<span class="username">'
				+'					<a href="#">' + review.user_nick + '</a>'
				+'					<a href="#" class="float-right btn-tool">'
				+'						<i class="fas fa-times"></i>'
				+'					</a>'
				+'				</span>'
				+'				<span class="description">' + review.re_wdt + '</span>'
				+'			</div>'
				+'		</div>'
				+'		<div class="col-md-8">'	+ review.re_content + '</div>'
				+'	</div><hr style="margin: 0">'	
			);
		}
		
		
		// 댓글 등록
		$("#re_form").on("submit", function(e){
			e.preventDefault();
			let rate = $("#re_form").find("input[type=range]").val();
			let re_content = $("#re_form").find("input[type=text]").val();
			let store_no = <%=storeVo.getStore_no()%>;
			$.ajax({
				url : "<%=request.getContextPath()%>/store/insertReview.do",
				dataType : "json",
				method : "post",
				data : {
					cmd : "insert",
					rate : rate,
					store_no : store_no,
					re_content : re_content
				},
				success : function(res){
// 					console.log(res);
					console.log(res.review);
					reviewTemplate(res.review);
				},
				error : function(err){
					console.log(err);
				}
			});
		});
	});
</script>
<<<<<<< Updated upstream
>>>>>>> Stashed changes

<div class="p-4 p-md-5 mb-4 rounded text-bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 fst-italic">Title of a longer featured blog post</h1>
      <p class="lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.</p>
      <p class="lead mb-0"><a href="#" class="text-white fw-bold">Continue reading...</a></p>
    </div>
  </div>









=======
>>>>>>> Stashed changes

<div class="card card-primary">
	<div class="p-4 p-md-5 mb-4 rounded text-bg-white card-header">
		<div class="row">
			<div class="col-md-6">
				<img src="/storePath/<%=storeVo.getThumb_url()%>" class="boxImg">
			</div>
			<div class="col-md-6 align-self-center">
				<h1 class="display-4 fst-italic"><%=store_name%> <span class="text-warning" style="float: right;font-family: fantasy; font-style: normal;"><%=store_rate%></span></h1>
				<hr>
				<div>
					<span class="mr-1" style="float: right; margin: 0 0.5rem;"><i class="bi bi-info-square-fill" style="color:#FF8C0A"></i>  <%=storeVo.getCat_name() %></span>
					<span class="mr-1" style="float: right; margin: 0 0.5rem;"><i class="bi bi-bookmark-plus-fill" style="color:#28288C"></i>  <%=storeVo.getStore_fav() %></span> 
					<span class="mr-1" style="float: right; margin: 0 0.5rem;"><i class="bi bi-heart-fill" style="color:#FF32B1"></i>  <%=storeVo.getStore_like() %></span>
				</div>
				<p class="lead my-3"><%=store_des_s%></p>
			</div>
		</div>
	</div>

	<div class="card-body">
		<div class="row" style="flex-flow: wrap;">
			<%
				for (ImgStoreVO imgStoreVo : imgStoreVoList) {
			%>
			<div class="col-md-4 mb-3">
				<img src="/storePath/<%=imgStoreVo.getImg_url()%>" class="boxImg">
			</div>
			<%
				}
			%>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-9" style="text-align: center;">

				<h5 class="fw-semibold mt-5">업종</h5>
				<h6 class="mb-3"><%=store_catName%></h6>

				<h5 class="fw-semibold">전화번호</h5>
				<h6 class="mb-3"><%=store_tel%></h6>

				<h5 class="fw-semibold">주소</h5>
				<h6 class="mb-3"><%=store_addr%></h6>

				<h5 class="fw-semibold">영업시간</h5>
				<h6 class="mb-3"><%=store_hour%></h6>
				<h5 class="fw-semibold">휴식시간</h5>
				<h6 class="mb-3"><%=store_break%></h6>
				<h5 class="fw-semibold">홈페이지</h5>
				<h6 class="mb-5"><%=store_url != null ? store_url : ""%></h6>
				<hr>
				<h5 class="fw-semibold mt-4">매장소개</h5>
				<h6 class="mb-3"><%=store_des_d%></h6>
			</div>
			
			<div class="col-md-3">
				<div class="position-sticky" style="top: 2rem; align-self: center;">
					<div class="p-4 mb-3 bg-light rounded" style="text-align: center;">
						<button type="button" class="btn btn-danger mb-3" id="likeBtn" data-like=<%= userLike == 1 ? true:false %>><i class="bi bi-heart"></i>&nbsp;좋아요</button>
						<button type="button" class="btn btn-primary mb-3" id="favBtn" data-like=<%= userFav == 1 ? true:false %>><i class="bi bi-clipboard-plus"></i>&nbsp;즐겨찾기</button>
					</div>

					<div class="p-4 bg-light rounded" style="text-align: center;">
						<h4 class="fst-italic mb-3">#관련 태그</h4>
						<ol class="list-unstyled list-group-horizontal">
							<li class="list-group-item mb-1 "><a href="<%=request.getContextPath() %>/store/storeMain.do?page=1&tag=<%= store_tagNm_1 %>"><button type="button" class="btn btn-warning text-white"><%=store_tagNm_1 %></button></a></li>
							<li class="list-group-item mb-1 "><a href="<%=request.getContextPath() %>/store/storeMain.do?page=1&tag=<%= store_tagNm_2 %>"><button type="button" class="btn btn-warning text-white"><%=store_tagNm_2 %></button></a></li>
							<li class="list-group-item mb-1 "><a href="<%=request.getContextPath() %>/store/storeMain.do?page=1&tag=<%= store_tagNm_3 %>"><button type="button" class="btn btn-warning text-white"><%=store_tagNm_3 %></button></a></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
</div>
	<div class="card-footer">
		<form id="re_form">
		<label for="customRange2" class="form-label">평점</label>
			<input type="range" class="form-range" name="rate" min="1" max="5" id="customRange2" style="width:30%;">
			<input class="form-control form-control-sm" type="text"
				placeholder="Type a comment" name="re_content">
			<button type="submit" style="display: none;"></button>
		</form>
	</div>
</div>
<div class="card" id="re_container">
				
				<%
					String hidden = "hidden"; 
					for (ReviewStoreVO reviewVo : reviewStoreVoList) {
						if (userVO != null && userVO.getUser_no()==(reviewVo.getUser_no())) {
							hidden = "";
						}
				%>
					<div class="row">
						<div class="col-md-4 d-flex">
							<div class="user-block col-md-8">
								<img class="img-circle img-bordered-sm" src="" alt="user image">
								<span class="username">
									<a href="#"><%= reviewVo.getUser_nick() %></a>
								</span>
								<span class="description"><%=reviewVo.getRe_wdt() %></span>
							</div>
							<div class="icon-block col-md-4 align-self-center">
								<input type="hidden" value="<%=reviewVo.getRe_no()%>">
								<a href="#" class="float-right btn-tool reply-delete-btn">
									<i class="fas fa-times" <%= hidden %>></i>
								</a>
								<a href="#" class="float-right btn-tool align-self-center reply-update-btn">
									<i class="fas fa-pen" <%= hidden %>></i>
								</a>
							</div>
						</div>
						<div class="col-md-8 align-self-center">
							<div class="reply-update"><%=reviewVo.getRe_content() %></div>
<%-- 						<input style="width:100%;"value="<%=replyVo.getRe_content() %>"> --%>
						</div>
					</div><hr style="margin: 0;">
				<% } %>	
				</div>
<%@ include file="../footer.jsp" %>