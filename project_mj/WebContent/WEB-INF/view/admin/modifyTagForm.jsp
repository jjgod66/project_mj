<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	List<String> tagList = (List<String>)request.getAttribute("tagList");
%>
<script>
	$(function(){
		
		function tagNameTemplate(tag_name){
			
			$(".tagList>.row:last").append(
				'<div class="col-12 col-sm-2">'
		       +'<div class="info-box bg-light">'
			   +'<div class="info-box-content">'
			   +'<span class="info-box-number text-center text-muted mb-0">' + tag_name + '</span>'
			   +'</div></div></div>'
			);
		}
		
		// 태그 등록
		$("#insertTag").on("submit", function(e){
			e.preventDefault();
			let tag_name = $("#tag_name").val();
			console.log(tag_name);
			$.ajax({
				url : "<%=request.getContextPath()%>/admin/storeTag.do",
				dataType : "json",
				method : "post",
				data : {
					cmd : "insert",
					tag_name : tag_name,
				}, 
				success : function(res){
					console.log(res);
					tagNameTemplate(res.tag_name);
// 					replyTemplate(res.reply);
				},
				error : function(err){
					console.log(err);
				}
			});
		});
		
		// 태그 삭제
		$("#deleteTag").on("click", function(e){
			let tag_name = $(this).;
		})
	});
</script>
<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>태그관리 Page</h1>
			</div>
		</div>
	</div>
</section>

<div class="card card-primary card-outline">
	<div class="card-header">
		<h5 class="card-title m-0">Featured</h5>
		<div class="card-tools float-right">
			<form id="insertTag" method="post">
				<div class="input-group input-group-sm">
						<input type="text" class="form-control" id="tag_name">
						<span class="input-group-append">
							<button type="submit" class="btn btn-info btn-flat" style="background-color:#007bff;">추가</button>
					</span>
				</div>
			</form>
		</div>
	</div>
	<div class="card-body">
		<div class="tagList">
			<div class="row">
				<%	
					int i;
					for (i = 0; i < tagList.size(); i++) {
				%>
				<div class="col-12 col-sm-2">
					<div class="info-box bg-light">
						<div class="info-box-content">
							<span class="info-box-number text-center text-muted mb-0"><%=tagList.get(i)%></span>
						</div>
						<a href="#" class="float-right btn-tool reply-delete-btn" id="deleteTag">
							<i class="fas fa-times"></i>
						</a>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>