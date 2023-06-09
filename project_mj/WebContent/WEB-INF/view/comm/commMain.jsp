<%@page import="java.util.Formatter"%>
<%@page import="kr.or.dw.comm.vo.LikeVO"%>
<%@page import="kr.or.dw.util.PaginationUtil"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="kr.or.dw.comm.vo.CommVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	List<CommVO> commList = (List<CommVO>) request.getAttribute("commList");
%>
<style>

.wpahr1 {
	margin-bottom: 100px;
}


  <!--
											<%
												for (CommVO comm : commList) {
													int bd_no = comm.getBd_no();
													String bd_title = comm.getBd_title();
													String bd_nick = comm.getUser_nick();
													String bd_picPath = "/profilePath/default/defaultProfile.jpg"; 
													if (comm.getUser_img() != null) {
														bd_picPath = "/profilePath/" + comm.getUser_img();
													}
													int bd_hit = comm.getBd_hit();
													int bd_like = comm.getBd_like();
											%>
											<tr>
												<td><%=bd_no%></td>
												<td><a
													href="<%=request.getContextPath()%>/comm/commView.do?bd_no=<%=bd_no%>"><%=bd_title%></a>
												</td>
												<td><img style="width: 2rem;"  alt="작성자 프로필사진" class="table-avatar"  src="<%= bd_picPath %>">
													<%=bd_nick%></td>
												<td><%=bd_hit%></td>
												<td><%=bd_like%></td>
											</tr>
											<% } %>
										</tbody>
										
									</table>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-12 col-md-5">
									<div class="dataTables_info" id="example1_info" role="status"
										aria-live="polite">Showing 1 to 10 of 57 entries</div>
								</div>
								<div class="col-sm-12 col-md-7">
									<div class="dataTables_paginate paging_simple_numbers"
										id="example1_paginate">
										<ul class="pagination">
											<li class="paginate_button page-item previous disabled"
												id="example1_previous"><a href="#"
												aria-controls="example1" data-dt-idx="0" tabindex="0"
												class="page-link">이전 </a></li>
											<li class="paginate_button page-item active"><a href="#"
												aria-controls="example1" data-dt-idx="1" tabindex="0"
												class="page-link">1</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="example1" data-dt-idx="2" tabindex="0"
												class="page-link">2</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="example1" data-dt-idx="3" tabindex="0"
												class="page-link">3</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="example1" data-dt-idx="4" tabindex="0"
												class="page-link">4</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="example1" data-dt-idx="5" tabindex="0"
												class="page-link">5</a></li>
											<li class="paginate_button page-item "><a href="#"
												aria-controls="example1" data-dt-idx="6" tabindex="0"
												class="page-link">6</a></li>
											<li class="paginate_button page-item next" id="example1_next"><a
												href="#" aria-controls="example1" data-dt-idx="7"
												tabindex="0" class="page-link">다음 </a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

.custom-table tbody tr {
	width: 80%;
}
</style> -->




<!-- ------------------------------------------------------------------------------------------------------ -->
<!-- ------------------------------------------------------------------------------------------------------ -->
<!-- ------------------------------------------------------------------------------------------------------ -->

<div class=" bg-light">
	<div class="content" style="padding-top : 100px;">
		<div class="container ">
			<h2 class="mb-5 text-center wpahr">은행나무 커뮤니티 </h2>
			<div class="table-responsive custom-table-responsive wpahr1">
				<%
					if (userVO != null) {
				%>
				<a class="btn btn-primary btn-sm text-right"
					href="<%=request.getContextPath()%>/comm/commInsert.do">글작성</a>
				<%
					}
				%>
				<table class="table custom-table bg-light">
					<thead>
						<tr>
							<th scope="col"><label class="control control--checkbox">
									
							</label></th>
							<th scope="col" style="width: 10%">순번</th>
							<th scope="col" >제목</th>
							<th scope="col" style="width: 16%">작성자</th>
							<th scope="col" style="width: 7%">조회수</th>
							<th scope="col" style="width: 7%">좋아요</th>
							<!-- <th scope="col" style="width: 16%">작성일</th> -->
						</tr>
					</thead>

					<tbody>
						<%
							DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");	
						
							for (CommVO comm : commList) {
								int bd_no = comm.getBd_no();
								String bd_title = comm.getBd_title();
								String bd_nick = comm.getUser_nick();
								
								int bd_hit = comm.getBd_hit();
								int bd_like = comm.getBd_like();
						%>
						<tr scope="row">
							<th scope="row">
								
							</th>
								<td><%=bd_no%></td>
								<td><a
									href="<%=request.getContextPath()%>/comm/commView.do?bd_no=<%=bd_no%>"><%=bd_title%></a></td>
								<td>
									<%=bd_nick%></td>
								<td><%=bd_hit%></td>
								<td><%=bd_like%></td>
								<%-- <td><%=  formatter.format(comm.getBd_wdt())%></td> --%>
						</tr>
						<tr class="spacer">
							<td colspan="100"></td>
						</tr>
						
						<%
							}
						%>
					</tbody>
				</table>
				<div class="row">
					<div class="container" style="margin-top: 20px;">
						<%
							PaginationUtil pagination = (PaginationUtil) request.getAttribute("pagingConfigMap");
						%>
						<%=pagination.getPaginationHtml(request, new String[] { "search" })%>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




<%@ include file="../footer.jsp"%>