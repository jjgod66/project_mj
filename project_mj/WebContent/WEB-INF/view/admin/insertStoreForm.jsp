<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	List<String> storeCatList = (List<String>) request.getAttribute("storeCatList");
%>
<script>
	$(function(){
		
		
	});
</script>

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>점포등록 Page</h1>
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
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="card card-primary">
			<div class="card-header">
				<h3 class="card-title"></h3>
			</div>


			<form method="post"
				action="<%=request.getContextPath()%>/admin/insertStore.do"
				id="insertStoreForm">

				<div class="card-body">
					<div class="form-group">
						<label for="storeName">점포명</label> <input type="text"
							class="form-control" name="store_name" placeholder="">
					</div>
					<div class="form-group">
						<label for="storeCatName">업종</label> 
						<select class="custom-select" name="store_cat">
						<%
							for (String storeCat :storeCatList) {
						%>
							<option><%=storeCat %></option>
						<%
							}
						%>	
						</select>
					</div>
					<div class="form-group">
						<div class="form-group">
							<label for="storeAddr">주소</label> <input type="text"
								class="form-control" name="store_addr" placeholder="">
						</div>
						<div class="form-group">
							<label for="storeTel">전화번호</label> <input type="text"
								class="form-control" name="store_tel" placeholder="">
						</div>
						<div class="form-group">
							<label for="storeHour">영업시간</label> <input type="text"
								class="form-control" name="store_hour" placeholder="">
						</div>
						<div class="form-group">
							<label for="storeBreak">휴식시간</label> <input type="text"
								class="form-control" name="store_break" placeholder="">
						</div>
						<div class="form-group">
							<label for="storeUrl">홈페이지 주소</label> <input type="text"
								class="form-control" name="store_url" placeholder="">
						</div>
						<div class="form-group">
							<label for="storeDes_s">점포 간단 설명</label> <input type="text"
								class="form-control" name="store_des_s" placeholder="">
						</div>
						<div class="form-group">
							<label for="storeDes_d">점포 상세 설명</label> 
							<textarea class="form-control" rows="6" name="store_des_d" placeholder=""></textarea>
						</div>
					</div>
				</div>


				<div class="card-footer">
					<button type="submit" class="btn btn-primary">Submit</button>
				</div>
			</form>
		</div>
	</div>
	<div class="col-md-2"></div>
</div>
<%@ include file="../footer.jsp"%>