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
	
	* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
	
	.buttons {
    
    text-align: center;
}

.btn-hover {
    width: 200px;
    font-size: 15px;
    font-weight: 1000;
    color: #fff;
    cursor: pointer;
    margin: 2px;
    height: 100px;
    text-align:center;
    border: none;
    background-size: 300% 100%;

    border-radius: 10px;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    moz-transition: all .4s ease-in-out;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}

.btn-hover.color-1 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}
.btn-hover.color-2 {
    background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
    box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
}
.btn-hover.color-3 {
    background-image: linear-gradient(to right, #667eea, #764ba2, #6B8DD6, #8E37D7);
    box-shadow: 0 4px 15px 0 rgba(116, 79, 168, 0.75);
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



<div class="container-fluid tm-container-content tm-mt-60">
	<div class="row mb-4 mx-3">
		<h2 class="col-6 tm-text-primary">맛집소개 게시판</h2>
	</div>
	<div class="row tm-mb-90 tm-gallery">

			<% 
				for (StoreVO storeVo : storeVoList ) {
			%>
		<div class="col-xl-3 col-lg-3 col-md-4 col-sm-4 col-12 mb-5">
			<figure class="effect-ming tm-video-item">
				<img src="/storePath/<%=storeVo.getThumb_url() != null ? storeVo.getThumb_url() : "default/noImg.jpg" %>"
					alt="Image" class="img-fluid">
				<figcaption class="d-flex align-items-center justify-content-center">
					<h2><a style="font-weight: bold; color: white;" href="<%=gcp%>/user/userLoginForm.do"><%=storeVo.getStore_name() %></a></h2>
					<a href="<%=request.getContextPath()%>/store/storeView.do?store_no=<%=storeVo.getStore_no()%>"></a>
				</figcaption>
			</figure>
			<div class="d-flex justify-content-between tm-text-gray">
				<span class="tm-text-gray-light">좋아요 <%=storeVo.getStore_like() %> </span> <span><%=storeVo.getStore_views() %>
					views</span>
					
			</div>
						<div class="buttons">
							<span class="btn-hover color-1">#<%=storeVo.getStore_tagNm_1() %></span>
							<span class="btn-hover color-2">#<%=storeVo.getStore_tagNm_2() %></span>
							<span class="btn-hover color-3">#<%=storeVo.getStore_tagNm_3() %></span>
						</div>
				    <p class="card-text"><%=storeVo.getStore_des_s() %> </p>
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

							</div>

<!-- ===================================================================================== -->
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
													<span class="sj"> # <%=storeVo.getStore_tagNm_1() %></span>
													<span> # <%=storeVo.getStore_tagNm_2() %></span>
													<span> # <%=storeVo.getStore_tagNm_3() %></span>
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