<%@page import="kr.or.dw.cs.vo.AnnouncementVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<%
	AnnouncementVO announcementVO = null;
	if( request.getAttribute("announcementVO") != null ) {
		announcementVO = (AnnouncementVO) request.getAttribute("announcementVO");
	}
%>


<%-- 입력 폼 --%>
<form action="writerAction" method="post" action= "<%=request.getContextPath()%>/cs/insertAnnounce.do">
	<input type="text" name="bdTitle" class="form-control mt-4 mb-2"
		placeholder="제목을 입력해주세요." required
	>
	<div class="form-group">
		<textarea class="form-control" rows="10" name="bdContent"
			placeholder="내용을 입력해주세요" required
		></textarea>
	</div>
	<button type="submit" class="btn btn-secondary mb-3" >제출하기</button>
</form>





<%@ include file="../footer.jsp"%>