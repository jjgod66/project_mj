<%@page import="kr.or.dw.util.PaginationUtil"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<%
 	List<UserVO> userList = (List<UserVO>) request.getAttribute("userList");
%>

<script>		
	$(function(){	
		// 회원 삭제
		$(document).on("click", ".deleteUser", function(e){
			if (confirm("해당 회원을 삭제하시겠습니까?")){
				let deleteUserNo = $(this).parents("tr").find(".userNo").text();
				let target = $(this).closest(".userRow");
				$.ajax({
					url : "<%=request.getContextPath()%>/admin/deleteUser.do",
					type : "post",
					dataType : "json",
					data : {
						user_no : deleteUserNo
					},
					success : function(res) {
						if (res.result ==1) {
							$(target).remove();
						}
					},
					error : function(err) {
						alert(err.status);
					}
				});
			}
		});
	});
</script>

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>회원 수정 Page</h1>
			</div>
<!-- 			<div class="col-sm-6"> -->
<!-- 				<ol class="breadcrumb float-sm-right"> -->
<!-- 					<li class="breadcrumb-item"><a href="#">Home</a></li> -->
<!-- 					<li class="breadcrumb-item active">Admin Page</li> -->
<!-- 				</ol> -->
<!-- 			</div> -->
		</div>
	</div>
</section>

<!-- Main content -->
<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="card">
					<div class="card-header">
						<h3 class="card-title">등록회원정보</h3>
						<div class="card-tools">
<!-- 							<div class="input-group input-group-sm"> -->
<!-- 								<input type="text" class="form-control" placeholder="Search"> -->
<!-- 								<div class="input-group-append"> -->
<!-- 									<div class="btn btn-primary"> -->
<!-- 										<i class="fas fa-search"></i> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
						</div>    
					</div>
					<div class="card-body p-0">
						<table class="table table-striped projects">
							<thead>
							
								<tr>
									<th style="width: 15%;">회원번호</th>
									<th style="">이메일</th>
									<th style="width: 20%;">닉네임</th>
									<th style="width: 30%;">가입날짜</th>
									<th style="width: 5%;"></th>
									<th style="width: 5%;"></th>
								</tr>
							</thead>
							<%
							for (UserVO user : userList) {
								int user_no = user.getUser_no ();
								String user_email = user.getUser_email();
								String user_nick = user.getUser_nick();
								String user_sdt = user.getUser_sdt();							
							%>
							<tbody>
								<tr class="userRow">
									<td class="userNo"><%= user_no %></td>
									<td>
										<%= user_email %>
									</td>
									<td>
										<%= user_nick %>
									</td>
									<td><%=user_sdt %></td>
									<td>
									<a href="<%=request.getContextPath()%>/admin/userCommListView.do?user_no=<%=user_no%>">
									<button type="button" class="btn btn-block bg-gradient-danger btn-sm viewUserCommList">Comm</button>
									</a>
									</td>
									<td>
									<button type="button" class="btn btn-block bg-gradient-danger btn-sm deleteUser">Delete</button>
									</td>
								</tr>
							<% } %>
							</tbody>
				
						</table>
						<div class="container"style="margin-top:20px;">
							<%
								PaginationUtil pagination = (PaginationUtil) request.getAttribute("pagingConfigMap");
							%>
							<%= pagination.getPaginationHtml(request, new String[] {"search"}) %>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-1"></div>
		</div>
	</div>
</div>


<%@ include file="../footer.jsp" %>