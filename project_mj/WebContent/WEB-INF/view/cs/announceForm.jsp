<%@page import="kr.or.dw.cs.vo.AnnouncementVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%
	List<AnnouncementVO> anVOList = (List<AnnouncementVO>)request.getAttribute("anVoList");
%>


<!-- if 문 넣어서 관리자인지 아닌지 넣으면 됨  -->

<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
				<h1>공지사항</h1>



									</div>
								</div>


									<%
										if (userVO != null && userVO.getAuth_cd().equals("A101")){
									%>
									<a href ="<%=request.getContextPath()%>/cs/insertAnnounceForm.do"><button>글쓰기</button></a>
						<% }%>	
						</div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table id="example1"
										class="table table-bordered table-striped dataTable dtr-inline collapsed"
										aria-describedby="example1_info">
										<thead>
											<tr>

												<th class="sorting sorting_asc" tabindex="0"
													aria-controls="example1" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending">
													제목</th>

											</tr>
										</thead>
										<tbody>
										<%
<<<<<<< Updated upstream
											for(AnnouncementVO anVo : anVOList ){
												%>
												<tr>

												<td ><a href="<%=request.getContextPath()%>/cs/announceForm.do"><%= anVo.getBd_title()%></a>
=======

											for(AnnouncementVO anVo : anVOList ){											
												String bd_title = anVo.getBd_title();
												%>
												<tr>

												<td ><a href= "<%=request.getContextPath()%>/cs/announceForm.do"><%= anVo.getBd_title()%></a>

>>>>>>> Stashed changes
												</td>

											</tr>	
												<%
											}
										%>
	

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