<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<<<<<<< HEAD
<%
  List<AnnouncementVO> anVoList = (List<AnnouncementVO>)request.getAttribute("anVoList");
%>
=======

<!-- if 문 넣어서 관리자인지 아닌지 넣으면 됨  -->
>>>>>>> parent of b8c4eac (20230603)
<section class="content-header">
	<div class="container-fluid">
		<div class="row mb-2">
			<div class="col-sm-6">
<<<<<<< HEAD
				<h1>공지사항 페이지</h1>
=======
				<h1>공지사항</h1>
>>>>>>> parent of b8c4eac (20230603)
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
											<span>최신순서 </span>
										</button>
										<button class="btn btn-secondary buttons-csv buttons-html5"
											tabindex="0" aria-controls="example1" type="button">
											<span>좋아요 </span>
										</button>



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
<<<<<<< HEAD

												<th class="sorting sorting_asc" tabindex="0"
													aria-controls="example1" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending">
													제목</th>

											</tr>
										</thead>
										<tbody>
										<%
											for(AnnouncementVO anVo : anVoList ){
												%>
												<tr>
												<td ><a href="<%=%>"><%= anVo.getBd_title()%></a>
												</td>

											</tr>	
												<%
											}
										%>
	
=======
												<th class="sorting sorting_asc" tabindex="0"
													aria-controls="example1" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending"
													 style = "text-align-last: center">
													제목</th>										
											</tr>
										</thead>
										<tbody>


											<tr style ="text-align-last: center">
												<td><a href="/comm/commView.do?bd_no=3" >테스트 제목입니다.</a>
												</td>
											</tr>
>>>>>>> parent of b8c4eac (20230603)

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