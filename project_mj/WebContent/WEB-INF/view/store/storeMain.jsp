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
	List<StoreVO> storeVoList = (List<StoreVO>) request.getAttribute("storeVoList");
	List<String> tagList = (List<String>)request.getAttribute("tagList");
	List<String> catList = (List<String>)request.getAttribute("catList");

%>

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
										<article class="aa-latest-blog-single">
											<figure class="aa-blog-img">
												<a href=""><img alt="img" src="/storePath/3/thumb/spagetti.jpg" class="boxImg"></a>
												<figcaption class="aa-blog-img-caption">
													<span href="#"><i class="fa fa-eye"></i>조회수 : <%=storeVo.getStore_views() %></span> 
													<i class="fa fa-thumbs-o-up"></i>좋아요 : <%=storeVo.getStore_like() %> 
												</figcaption>
											</figure>
											<div class="aa-blog-info">
												<h3 class="aa-blog-title">
													<a href="<%=gcp%>/user/userLoginForm.do"><%=storeVo.getStore_name() %></a>
												</h3>
												<p><%=storeVo.getStore_des_s() %> </p>
												
											</div>
										</article>
									</div>
								<%
									}
								%>	
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 									<br> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 											<br> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 											<br> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 											<br> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
<!-- 									<div class="col-md-4 col-sm-4"> -->
<!-- 										<article class="aa-latest-blog-single"> -->
<!-- 											<figure class="aa-blog-img"> -->
<!-- 												<a href="#"><img alt="img" src="https://placehold.it/200x200"></a> -->
<!-- 												<figcaption class="aa-blog-img-caption"> -->
<!-- 													<span href="#"><i class="fa fa-eye"></i>조회수 : 5</span>  -->
<!-- 													<i class="fa fa-thumbs-o-up"></i>좋아요 : 3  -->
<!-- 													 <i class="fa fa-clock-o"></i> 2023 05 29</span> -->
<!-- 												</figcaption> -->
<!-- 											</figure> -->
<!-- 											<div class="aa-blog-info"> -->
<!-- 												<h3 class="aa-blog-title"> -->
<!-- 													<a href="#">대전 식당 1 </a> -->
<!-- 												</h3> -->
<!-- 												<p>돼지고기가 맛있는 식당 입니다. </p> -->
												
<!-- 											</div> -->
<!-- 										</article> -->
<!-- 									</div> -->
									
									
									
									
									
									
									
									
									
									
									
									
									
									
									
								</div>
							</div>
							<!-- Blog Pagination -->
							<div class="aa-blog-archive-pagination">
							<%
								PaginationUtil pagination = (PaginationUtil) request.getAttribute("pagingConfigMap");
							%>
							<%= pagination.getPaginationHtml(request, new String[] {"search"}) %>
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
										<li><a href="#"><%=cat %> </a></li>
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
										<a href="#">#<%=tag %></a> 
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