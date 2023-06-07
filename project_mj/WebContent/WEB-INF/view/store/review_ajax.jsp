<%@page import="com.google.gson.Gson"%>
<%@page import="kr.or.dw.store.vo.ReviewStoreVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if (request.getAttribute("reVo") != null) {
		ReviewStoreVO reVo = (ReviewStoreVO) request.getAttribute("reVo");
		Gson gson = new Gson();
		String review = gson.toJson(reVo);
%>
{
	"review" : <%=review %>
}
<%
	}
%>