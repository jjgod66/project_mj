<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
    
<div class="content">
<div class></div>
<div class="col-md-6">

	<div class="card card-widget">
		<div class="card-header">
			<br>

					<div class="card-body text-center" >
			<p><%= commVo.getBd_content() %></p><br><br><br>
			
			 <% if( userVO != null && commVo.getUser_no() == userVO.getUser_no() ) { %> 
			 <a type="button" class="btn btn-default btn-sm" href="<%= request.getContextPath()%>/comm/deleteContent.do?bd_no=<%= commVo.getBd_no()%>">
				<i class="fas fa-trash-alt">삭제</i> 
			 </a>
			 
			 <a type="button" class="btn btn-default btn-sm" href="<%= request.getContextPath()%>/comm/commInsert.do?bd_no=<%= commVo.getBd_no()%>">
				<i class="fas fa-pen">수정 </i> 
			 </a>
			 
			 <% } %>
			
			
			
			<a type="button" class="btn btn-default btn-sm" href="<%= request.getContextPath()%>/comm/commMain.do">
				<i class="fas fa-reply"></i> 목록  
			</a>
			
			<a href="#" class="btn btn-default btn-sm" id="likeBtn" data-like=<%= userLike == 1 ? true:false %>>
				<i class="far fa-thumbs-up"></i> 좋아요 <span id="likeCnt">(<%= commVo.getBd_like() %>)</span>
			</a>
				<a href="#" class="btn btn-default btn-sm">
					<i class="far fa-comments mr-1"></i> 댓글수 (<%= commVo.getReply_cnt() %>)
				</a>
		</div>

	</div>

</div>

</div>
