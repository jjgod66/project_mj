<%@page import="kr.or.dw.cs.vo.AnnouncementVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%
AnnouncementVO announcementVO = null;
if (request.getAttribute("announcementVO") != null) {
	announcementVO = (AnnouncementVO) request.getAttribute("announcementVO");
}
%>


<%-- 입력 폼 --%>
<br>
<br>
<div class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="card-header">
					<h3 class="card-title">글 등록/수정 페이지</h3>
				</div>

				<form action="writerAction" method="post"
					action="<%=request.getContextPath()%>/cs/insertAnnounce.do">
					<input type="text" name=bdtitle " class="form-control mt-4 mb-2"
						placeholder="제목을 입력해주세요." required value="<%= announcementVO != null? announcementVO.getBd_title(): ""%>">
					<div class="form-group">
						<textarea class="form-control" rows="10" name="bdcontent"
							placeholder="내용을 입력해주세요" required> <%= announcementVO != null ? announcementVO.getBd_content() : "" %></textarea>
					</div>
					<button type="submit" class="btn btn-secondary mb-3">
						<%= announcementVO != null ? "수정" : "등록" %>
					</button>
				</form>





				<%@ include file="../footer.jsp"%>