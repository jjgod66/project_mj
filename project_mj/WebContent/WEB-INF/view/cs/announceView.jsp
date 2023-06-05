<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="kr.or.dw.cs.vo.AnnouncementVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<<<<<<< Updated upstream
<%@ include file="../header.jsp"%>
<%
	AnnouncementVO anVo = (AnnouncementVO) request.getAttribute("anVo");
%>

<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">

				<div class="card card-widget">
					<div class="card-header">
						<div class="user-block">
							<p><%=anVo.getBd_title()%></p>
						</div>
					</div>

					<div class="card-body text-center">
							<p><%=anVo.getBd_content()%></p>						
							<br>
							<br>
							<br> 
							<%
										if (userVO != null && userVO.getAuth_cd().equals("A101")){
							%>
							<a type="button" class="btn btn-default btn-sm"
								href="<%=request.getContextPath()%>/cs/deleteContent.do?bd_no=<%=anVo.getBd_no()%>">
								<i class="fas fa-trash-alt">삭제</i>
							</a> <a type="button" class="btn btn-default btn-sm"
								href="<%=request.getContextPath()%>/cs/insertAnnounceForm.do?bd_no=<%=anVo.getBd_no()%>">
								<i class="fas fa-pen">수정 </i>
							</a> 
							<%}%>
							
							<a type="button" class="btn btn-default btn-sm"
								href="<%=request.getContextPath()%>/cs/announceForm.do"> <i
								class="fas fa-reply"></i> 목록
							</a>
						</div>
					</div>

				</div>
			</div>
=======
<%
	AnnouncementVO anVo = (AnnouncementVO) request.getAttribute("anVo");
DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
%>


<div class="container-fluid">
	<div class="row">
		<div class="col-12">

			<div class="card">
				<div class="card-header">
							<%
											for(AnnouncementVO anVo : anVOList ){
												%>
												<tr>

												<td ><a href="<%=request.getContextPath()%>/cs/announceForm.do"><%= anVo.getBd_title()%></a>

												</td>

											</tr>	
												<%
											}
										%>
	
					<div class="card-tools">
						<button type="button" class="btn btn-tool"
							data-card-widget="collapse" title="Collapse">
							<i class="fas fa-minus"></i>
						</button>
						<button type="button" class="btn btn-tool"
							data-card-widget="remove" title="Remove">
							<i class="fas fa-times"></i>
						</button>
					</div>
				</div>
				<div class="card-body">Start creating your amazing
					application!</div>

				<div class="card-footer">Footer</div>

			</div>

>>>>>>> Stashed changes
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
