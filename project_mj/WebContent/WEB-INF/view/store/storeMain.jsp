<%@page import="kr.or.dw.util.PaginationUtil"%>
<%@page import="kr.or.dw.store.vo.StoreVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!-- content -->
<style>
	.boxImg {
		display:block;
		width:100%;
		height:auto;
	}
</style>
<%

	PaginationUtil pagination = (PaginationUtil) request.getAttribute("pagingConfigMap");

	List<StoreVO> storeVoList = (List<StoreVO>) request.getAttribute("storeVoList");
	List<String> tagList = (List<String>)request.getAttribute("tagList");
	List<String> catList = (List<String>)request.getAttribute("catList");
	String catStore = (String) request.getAttribute("cat");
	String tagStore = (String) request.getAttribute("tag");

%>

<script>

</script>

<br><br>

<section id="aa-blog-archive">
	<div class="container">
		<div class="row" style="margin:0;">
			<div class="col-md-12">
				<div class="aa-blog-archive-area aa-blog-archive-2">
					<div class="row" style="margin:0;">
						<div class="col-md-9">
							<div class="aa-blog-content">
								<div class="row" style="margin:0;">
								<% 
									for (StoreVO storeVo : storeVoList ) {
								%>
								
									<div class="col-md-4 col-sm-4">
										<div class="card">
											<a href="<%=request.getContextPath()%>/store/storeView.do?store_no=<%=storeVo.getStore_no()%>" style="text-decoration:none;"><img alt="img" src="/storePath/<%=storeVo.getThumb_url() != null ? storeVo.getThumb_url() : "default/noImg.jpg" %>" class="card-img-top"></a>
										  <div class="card-body">
										 	 <h5 class="card-title"><a href="<%=gcp%>/user/userLoginForm.do"><%=storeVo.getStore_name() %></a></h5>
										  		<span href="#"><i class="fa fa-eye"></i>조회수 : <%=storeVo.getStore_views() %></span> 
												<i class="fa fa-thumbs-o-up"></i>좋아요 : <%=storeVo.getStore_like() %> 
												<span class="">&lt;<%=storeVo.getCat_name() %>&gt;</span>
												<div>
													<span>[<%=storeVo.getStore_tagNm_1() %>]</span>
													<span>[<%=storeVo.getStore_tagNm_2() %>]</span>
													<span>[<%=storeVo.getStore_tagNm_3() %>]</span>
												</div>
										    <p class="card-text"><%=storeVo.getStore_des_s() %> </p>
										  </div>
										</div>
									</div>
								<%
									}
								%>	
								</div>
							</div>
							<!-- Blog Pagination -->
							<div class="aa-blog-archive-pagination" id="pagingDiv">
<%-- 							<% --%>
								<!-- PaginationUtil pagination = (PaginationUtil) request.getAttribute("pagingConfigMap"); -->
<%-- 							%> --%>
<%-- 							<%= pagination.getPaginationHtml(request, new String[] {"search"}) %> --%>
							<%= pagination.getPaginationHtml(request, new String[] {"cat"}) %>
<!-- 								<nav> -->
<!-- 									<ul class="pagination"> -->
<!-- 										<li><a aria-label="Previous" href="#"> <span -->
<!-- 												aria-hidden="true">«</span> -->
<!-- 										</a></li> -->
<!-- 										<li class="active"><a href="#">1</a></li> -->
<!-- 										<li><a href="#">2</a></li> -->
<!-- 										<li><a href="#">3</a></li> -->
<!-- 										<li><a href="#">4</a></li> -->
<!-- 										<li><a href="#">5</a></li> -->
<!-- 										<li><a aria-label="Next" href="#"> <span -->
<!-- 												aria-hidden="true">»</span> -->
<!-- 										</a></li> -->
<!-- 									</ul> -->
<!-- 								</nav> -->
							</div>
						</div>
						<div class="col-md-3">
							<aside class="aa-blog-sidebar">
								<div class="aa-sidebar-widget">
									<h3>카테고리 </h3>
									<ul class="aa-catg-nav">
									<%
									for (String cat : catList) {
									%>
										<li><a href="<%=request.getContextPath() %>/store/storeMain.do?page=1&cat=<%= cat %>"><%= cat %> </a></li>
									<%	
									}
									%>
									</ul>
								</div>
								<div class="aa-sidebar-widget">
									<h3>태그 </h3>
									<div class="tag-cloud">
									<%
									for (String tag : tagList) {
									%>
										<a href="<%=request.getContextPath() %>/store/storeMain.do?page=1&tag=<%= tag %>">#<%=tag %></a> 
									<%
									}
									%>
									</div>
								</div><br>
								<div class="aa-sidebar-widget">
									<h3>정렬 </h3>
									<div class="aa-recently-views">
										<ul>
											<li>
												<div class="aa-cartbox-info">
													<h6>
														<a href="#">이름순 </a>
													</h6>
												</div></li>
											<li>
												<div class="aa-cartbox-info">
													<h6>
														<a href="#">좋아요순 </a>
													</h6>
												</div></li>
												
												<li>
												<div class="aa-cartbox-info">
													<h6>
														<a href="#">조회수순  </a>
													</h6>
												</div></li>
												
												<li>
												<div class="aa-cartbox-info">
													<h6>
														<a href="#">좋아요순 </a>
													</h6>
												</div></li>
											
										</ul>
									</div>
								</div>
							</aside>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
</section>
<!-- /content -->

<%@ include file="../footer.jsp" %>