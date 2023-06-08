<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="kr.or.dw.cs.vo.AnnouncementVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<p style ="text-align: center"><%=anVo.getBd_title()%></p>
						</div>
					</div>

					<div class="card-body text-center">
							<p style="text-align: center"><%=anVo.getBd_content()%></p>						
							<br>
							<br>
							<br> 
							<%
										if (userVO != null && userVO.getAuth_cd().equals("A101")){
							%>
							<a type="button" class="btn btn-default btn-sm"
								href="<%=request.getContextPath()%>/cs/deleteContent.do?bd_no=<%=anVo.getBd_no()%>">
								<i class="fas fa-trash-alt">삭제</i>
							</a>
							 <a type="button" class="btn btn-default btn-sm"
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
		</div>
	</div>

<%@ include file="../footer.jsp"%>
