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

<section class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<div id="example1_wrapper"
							class="dataTables_wrapper dt-bootstrap4">
							<div class="row">
								<div class="col-sm-12 col-md-6">
									<div class="dt-buttons btn-group flex-wrap">
										<button class="btn btn-secondary buttons-copy buttons-html5"
											tabindex="0" aria-controls="example1" type="button">
											<span>최신순서  </span>
										</button>
										<button class="btn btn-secondary buttons-csv buttons-html5"
											tabindex="0" aria-controls="example1" type="button">
											<span>좋아요 </span>
										</button>
										<%
											if(userVO != null) {
										%>
										<a class="btn btn-primary btn-sm"
											href="<%=request.getContextPath()%>/comm/commInsert.do">글작성</a>
										<%
											}
										%>
									</div>
								</div>
								
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table id="example1"
										class="table table-bordered table-striped dataTable dtr-inline collapsed"
										aria-describedby="example1_info">
										<thead>
											<tr>
												
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending">순번  </th>
													
												<th class="sorting sorting_asc" tabindex="0"
													aria-controls="example1" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending">
													제목  </th>	
													
													
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending">작성자  </th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending">
													조회수 </th>
													
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending">
													좋아요 </th>
												
											</tr>
										</thead>
										<tbody>

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

				</div>

			</div>

		</div>

	</div>

</section>


<%@ include file="../footer.jsp"%>