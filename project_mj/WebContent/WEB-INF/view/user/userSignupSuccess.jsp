<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<%
	int user_no = (int)request.getAttribute("user_no");
%>
	<script>
	
		lacation.href="<%= request.getContextPath()%>/user/userLoginForm.do"
	
	</script>	

<%@ include file="../footer.jsp"%>