<%@page import="kr.or.dw.util.PaginationUtil"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="kr.or.dw.comm.vo.CommVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	List<CommVO> boardList = (List<CommVO>) request.getAttribute("CommList");
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
											href="<%=request.getContextPath()%>/board/boardInsert.do">글작성</a>
										<%
											}
										%>



									</div>
								</div>
								<div class="col-sm-12 col-md-6">
									<div id="example1_filter" class="dataTables_filter">
										<label>Search:<input type="search"
											class="form-control form-control-sm" placeholder=""
											aria-controls="example1"></label>
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
													aria-label="Browser: activate to sort column ascending">제목 </th>
													
												<th class="sorting sorting_asc" tabindex="0"
													aria-controls="example1" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending">
													작성자 </th>	
													
													
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending">작성일자 </th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending">
													조회수 </th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending"
													style="display: none;">CSS grade</th>
											</tr>
										</thead>
										<tbody>



											<tr class="odd">
												<td class="dtr-control sorting_1" tabindex="0">김상재 </td>
												<td> 테스트 제목 입니다. </td>
												<td>오늘입니다. </td>
												<td>10 </td>
												<td style="display: none;">A</td>
											</tr>
											<tr class="even">
												<td class="dtr-control sorting_1" tabindex="0">Gecko</td>
												<td>Firefox 1.5</td>
												<td>Win 98+ / OSX.2+</td>
												<td>1.8</td>
												<td style="display: none;">A</td>
											</tr>
											
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