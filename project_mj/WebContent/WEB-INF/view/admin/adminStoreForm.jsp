<%@page import="kr.or.dw.util.PaginationUtil"%>
<%@page import="kr.or.dw.store.vo.StoreVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<%
	List<StoreVO> storeList = (List<StoreVO>) request.getAttribute("storeList");
%>
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<div class="card">
			<div class="card-header">
				<h3 class="card-title">Simple Full Width Table</h3>
<!-- 				<div class="card-tools"> -->
<!-- 					<ul class="pagination pagination-sm float-right"> -->
<!-- 						<li class="page-item"><a class="page-link" href="#">«</a></li> -->
<!-- 						<li class="page-item"><a class="page-link" href="#">1</a></li> -->
<!-- 						<li class="page-item"><a class="page-link" href="#">2</a></li> -->
<!-- 						<li class="page-item"><a class="page-link" href="#">3</a></li> -->
<!-- 						<li class="page-item"><a class="page-link" href="#">»</a></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
			</div>

			<div class="card-body p-0">
				<table class="table">
					<thead>
						<tr>
							<th style="width: 15%">점포번호</th>
							<th style="width: 20%">업종</th>
							<th>점포명</th>
							<th style="width: 15%">등록상태</th>
							<th style="width: 5%">Progress</th>
							<th style="width: 5%">Label</th> 
						</tr>
					</thead>
					<tbody>
					<%
						for (StoreVO store : storeList) {
							int store_no = store.getStore_no();
							String store_cat = store.getCat_name();
							String store_name = store.getStore_name();
							String gb_del = store.getGb_del();
					%>
						<tr>
							<td><%=store_no %></td>
							<td><%=store_cat %></td>
							<td><%=store_name %></td>
							<td><%=gb_del %></td>
							<td>
								<div class="progress progress-xs">
									<div class="progress-bar progress-bar-danger"
										style="width: 55%"></div>
								</div>
							</td>
							<td><span class="badge bg-danger">55%</span></td>
						</tr>
					<%
						}
					%>
					</tbody>
				</table>
				<%
								PaginationUtil pagination = (PaginationUtil) request.getAttribute("pagingConfigMap");
							%>
							<%= pagination.getPaginationHtml(request, new String[] {"search"}) %>
			</div>
		</div>
		<div class="col-md-2"></div>
	</div>

</div>




<%@ include file="../footer.jsp" %>