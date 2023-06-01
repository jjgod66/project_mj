<%@page import="kr.or.dw.comm.vo.ReplyVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.dw.comm.vo.CommVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%
	CommVO commVo = (CommVO) request.getAttribute("commVo");
	/* if(comm.getPic_path() != null){
		src = "/profilePath/" + boardVo.getPic_path();
	} */

	List<ReplyVO> replyList = (List<ReplyVO>) request.getAttribute("replyList");

	int userLike = 0;
	if (request.getAttribute("userLike") != null) {
		userLike = Integer.parseInt(request.getAttribute("userLike").toString());
	}
%>

<script>
	$(function(){
		
		function replyTemplate(reply){
			let hidden = 'hidden';
			<%if (userVO != null) {%>
				if(reply.user_no == "<%=userVO.getUser_no()%>"){
					hidden = '';
				}
			<%}%>	
			/* let replySrc = "/profilePath/default/defaultProfile.jpg"; */
			
			/* if(reply.pic_path != null || reply.pic_path != ""){
				replySrc = "/profilePath/" + reply.pic_path
			}; */
			
// 선생님이 주석하신			let deleteBtn = '<i class="fas fa-times"></i>';
			
<%-- 			if("<%=vo.getNick()%>" != reply.nick){ --%>
// 				deleteBtn = '';
// 			};
			
			$('#re_container').prepend(
				'<div class="row">'
			   +'	<div class="col-md-4 d-flex">'
			   +'		<div class="user-block col-md-8">'
			   +'			<img class="img-circle img-bordered-sm" src="' + replySrc + '" alt="user image">'
			   +'				<span class="username">' 
			   +'				<a href="#">' + reply.user_nick + '</a>'
			   +'				</span>'
			   +'			<span class="description">' + reply.re_wdt + '</span>'
			   +'		</div>'
			   +' 		<div class="icon-block col-md-4 align-self-center">'
			   +'			<input type="hidden" value="' + reply.re_no + '">'
			   +'			<a href="#" class="float-right btn-tool reply-delete-btn">'
			   +'				<i class="fas fa-times" ' + hidden + '></i>'
			   +'			</a>'
			   +'			<a href="#" class="float-right btn-tool reply-update-btn">'
			   +'				<i class="fas fa-pen" ' + hidden + '></i>'
			   +'			</a>'
			   +'		</div>'
			   +'	</div>'
			   +'	<div class="col-md-8 align-self-center">'
			   +'		<div class="reply-update">' + reply.re_content + '</div>'
			   +'	</div>'
			   +'</div><hr style="margin: 0">'
			);
			
		};
		
		function replyUpdateTemplate(target, update_re_no, update_re_content){
			
			$(target).after(
				 '<form id="re_update_form">'
				+	'<div class="d-flex">'
				+		'<input type="hidden" name="update_re_no" value="' + update_re_no + '">'
				+		'<input style="width: 90%;" type="text" name="update_re_content" value="' + update_re_content + '">'
				+		'<a style="width: 10%;" class="btn btn-default btn-sm reply-cancel-btn" href="#">취소</a>'
				+		'<input type="submit" hidden>'
				+	'</div>'
				+'</form>'
			)
		}
		
		let taskIsDone = false;	// 댓글 수정을 할 때 추가적인 form 태그 생성을 막기 위한 변수 
		
		// 댓글 등록
		$('#re_form').on('submit', function(e){
			e.preventDefault();
			
			if(<%=userVO == null%>){
				alert('로그인 후 댓글 등록 가능합니다.');
				return;
			};
			
			let re_content = $('#re_form').find('input').val();
			$('#re_form').find('input').val('');	// 댓글을 입력하고 난 뒤 input 박스에 남아있는 댓글 내용을 지운다.
			let bd_no = "<%=commVo.getBd_no()%>";
			
			$.ajax({
				url : "<%=request.getContextPath()%>/comm/reply.do",
				dataType : "json",
				method : "post",
				data : {
					cmd : "insert",
					bd_no : bd_no,
					re_content : re_content
				},
				success : function(res){
					replyTemplate(res.reply);
				},
				error : function(err){
					alert(err.status);
				}
			});
		});
		
		// 댓글 수정
		$(document).on('click', '.reply-update-btn', function(e){
			let target = $(this).closest('div .row').find('.reply-update');
			let updateReplyNo = $(this).parents('.icon-block').find('input[type=hidden]').val();
			let bd_no = "<%=commVo.getBd_no()%>";
			let updateReplyContent = $(target).text();
			
			if(!taskIsDone){
				replyUpdateTemplate(target, updateReplyNo, updateReplyContent);
				$(target).hide();
				taskIsDone = true;
			};
			
			function transReplyUpdateForm(){
				$('#re_update_form').remove();
				$(target).show();
				taskIsDone = false;
			};
			
			// 수정버튼 눌렀다가 취소 할 때
			$(document).on('click', '.reply-cancel-btn', transReplyUpdateForm);
			
			$('#re_update_form').on('submit', function(e){
				e.preventDefault();
				let re_update_form = $(this);
				let update_content = re_update_form[0].update_re_content.value;
				
				$.ajax({
					url : "<%=request.getContextPath()%>/comm/reply.do",
					type : "post",
					dataType : "json",
					data : {
						cmd : "update",
						re_no : updateReplyNo,
						re_content : update_content,
						bd_no : bd_no
					},
					success : function(res){
						if(res.result == 1){
							$(target).text(update_content);
							transReplyUpdateForm();
						}
					},
					error : function(err){
						alert(err.status);
					}
				});
			});
		});
		
		// 댓글 삭제
		$(document).on('click', '.reply-delete-btn', function(e){
			if(confirm("삭제하시겠습니까?")){
				let deleteReplyNo = $(this).parents('.icon-block').find('input[type=hidden]').val();
				let target = $(this).closest('div .row');
				$.ajax({
					url : "<%=request.getContextPath()%>/comm/reply.do",
					type : "post",
					dataType : "json",
					data : {
						cmd : "delete",
						re_no : deleteReplyNo,
						bd_no : "<%=commVo.getBd_no()%>"
					},
					success : function(res){
						if(res.result == 1){
							$(target).remove();
						}
					},
					error : function(err){
						alert(err.status);
					}
				});
			}
		});
		
		// 좋아요 손가락 색상 변경 함수
		function changeLikeColor(){
			let l = $('#likeBtn');	// 좋아요 'a' 태그 요소 가져오기
			let flag = l.data('like');	// 가져온 'a' 태그의 data-like 속성값 확인
			if(flag){	// data-like 값으로 분개
				// 좋아요 눌려있을 때
				l.data('like', false);
				l.css('color', '#007bff');
			}else{
				// 좋아요를 안눌려있을 때
				l.data('like', true);
				l.css('color', '#6c757d');
			};
			
			return flag;
		}
		
		changeLikeColor();	// 페이지 최초 로딩시 좋아요 색상 변경하기 위해 호출
		
		// 좋아요
		$('#likeBtn').on('click', function(){
			if(<%=userVO == null%>)	return; // 로그인을 했을 때만 이벤트 로직 수행
			let flag = changeLikeColor();
			
			$.ajax({
				url : "<%=request.getContextPath()%>/board/like.do",
				dataType : "json",
				type : "post",
				data : {
					bd_no : "<%=commVo.getBd_no()%>",
					likeFlag : flag
				},
				success : function(res){
					console.log(res);
					$('#likeCnt').text('(' + res.count + ')');
				},
				error : function(err){
					alert(err.status);
				}
			});
		});
	});
</script>


<div class="col-md-6">

	<div class="card card-widget">
		<div class="card-header">
			<div class="user-block">
				<img class="img-circle" src="../dist/img/user1-128x128.jpg"
					alt="User Image"> <span class="username"><a href="#">Jonathan
						Burke Jr.</a></span> <span class="description">Shared publicly - 7:30
					PM Today</span>
			</div>

			<div class="card-tools">
				<button type="button" class="btn btn-tool" title="Mark as read">
					<i class="far fa-circle"></i>
				</button>
				<button type="button" class="btn btn-tool"
					data-card-widget="collapse">
					<i class="fas fa-minus"></i>
				</button>
				<button type="button" class="btn btn-tool" data-card-widget="remove">
					<i class="fas fa-times"></i>
				</button>
			</div>

		</div>

		<div class="card-body">

			<p>Far far away, behind the word mountains, far from the
				countries Vokalia and Consonantia, there live the blind texts.
				Separated they live in Bookmarksgrove right at</p>
			<p>the coast of the Semantics, a large language ocean. A small
				river named Duden flows by their place and supplies it with the
				necessary regelialia. It is a paradisematic country, in which
				roasted parts of sentences fly into your mouth.</p>

			<div class="attachment-block clearfix">
				<img class="attachment-img" src="../dist/img/photo1.png"
					alt="Attachment Image">
				<div class="attachment-pushed">
					<h4 class="attachment-heading">
						<a href="https://www.lipsum.com/">Lorem ipsum text generator</a>
					</h4>
					<div class="attachment-text">
						Description about the attachment can be placed here. Lorem Ipsum
						is simply dummy text of the printing and typesetting industry... <a
							href="#">more</a>
					</div>

				</div>

			</div>


			<button type="button" class="btn btn-default btn-sm">
				<i class="fas fa-share"></i> Share
			</button>
			<button type="button" class="btn btn-default btn-sm">
				<i class="far fa-thumbs-up"></i> Like
			</button>
			<span class="float-right text-muted">45 likes - 2 comments</span>
		</div>

		<div class="card-footer card-comments">
			<div class="card-comment">

				<img class="img-circle img-sm" src="../dist/img/user3-128x128.jpg"
					alt="User Image">
				<div class="comment-text">
					<span class="username"> Maria Gonzales <span
						class="text-muted float-right">8:03 PM Today</span>
					</span> It is a long established fact that a reader will be distracted by
					the readable content of a page when looking at its layout.
				</div>

			</div>

			<div class="card-comment">

				<img class="img-circle img-sm" src="../dist/img/user5-128x128.jpg"
					alt="User Image">
				<div class="comment-text">
					<span class="username"> Nora Havisham <span
						class="text-muted float-right">8:03 PM Today</span>
					</span> The point of using Lorem Ipsum is that it hrs a morer-less normal
					distribution of letters, as opposed to using 'Content here, content
					here', making it look like readable English.
				</div>

			</div>

		</div>

		<div class="card-footer">
			<form action="#" method="post">
				<img class="img-fluid img-circle img-sm"
					src="../dist/img/user4-128x128.jpg" alt="Alt Text">

				<div class="img-push">
					<input type="text" class="form-control form-control-sm"
						placeholder="Press enter to post comment">
				</div>
			</form>
		</div>

	</div>

</div>




<%@ include file="../footer.jsp"%>