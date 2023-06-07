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

.custom-table tbody tr {
	width: 80%;
}
</style>


<%-- <section class="content">
	<div class="container-fluid pt-4">
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<div id="example1_wrapper"
							class="dataTables_wrapper dt-bootstrap4">
							<div class="row">
								<div class="col-sm-12 col-md-6">
									<div class="btn-group flex-wrap" role="group"
										aria-label="Button group with nested dropdown">
										<button class="btn btn-secondary" tabindex="0"
											aria-controls="example1" type="button">최신순서</button>
										<button class="btn btn-secondary" tabindex="0"
											aria-controls="example1" type="button">좋아요</button>
										<%
											if (userVO != null) {
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
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th scope="col">순번</th>
												<th scope="col" class="sorting_asc">제목</th>
												<th scope="col">작성자</th>
												<th scope="col">조회수</th>
												<th scope="col">좋아요</th>
											</tr>
										</thead>
										<tbody>
											<%
												for (CommVO comm : commList) {
													int bd_no = comm.getBd_no();
													String bd_title = comm.getBd_title();
													String bd_nick = comm.getUser_nick();
													int bd_hit = comm.getBd_hit();
													int bd_like = comm.getBd_like();
											%>
											<tr>
												<td><%=bd_no%></td>
												<td><a
													href="<%=request.getContextPath()%>/comm/commView.do?bd_no=<%=bd_no%>"><%=bd_title%></a></td>
												<td><img src="/avatarPath/avatar.jpg" alt="사진  "
													class="table-avatar"><%=bd_nick%></td>
												<td><%=bd_hit%></td>
												<td><%=bd_like%></td>
											</tr>
											<%
												}
											%>
										</tbody>
									</table>
								</div>
							</div>
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
		</div>
	</div>
</section> --%>

<!-- ------------------------------------------------------------------------------------------------------ -->
<!-- ------------------------------------------------------------------------------------------------------ -->
<!-- ------------------------------------------------------------------------------------------------------ -->

<div class=" bg-light">
	<div class="content ">
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
									<input type="checkbox" class="js-check-all" />
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
								/* String bd_picPath = "/profilePath/default/defaultProfile.jpg"; */

								/* if (comm.getUser_img() != null) {
									bd_picPath = "/profilePath/" + comm.getUser_img();
								} */

								int bd_hit = comm.getBd_hit();
								int bd_like = comm.getBd_like();
						%>
						<tr scope="row">
							<th scope="row">
								<label class="control control--checkbox">
									<input type="checkbox" />
								</label>
							</th>
								<td><%=bd_no%></td>
								<td><a
									href="<%=request.getContextPath()%>/comm/commView.do?bd_no=<%=bd_no%>"><%=bd_title%></a></td>
								<td><img src="/avatarPath/avatar.jpg" alt="."
													class="table-avatar">
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