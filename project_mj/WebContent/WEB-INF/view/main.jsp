<%@page import="kr.or.dw.store.vo.StoreVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%
	List<StoreVO> mainStoreVoList = (List<StoreVO>) request.getAttribute("mainStoreVoList");
List<StoreVO> storeVoList = (List<StoreVO>) request.getAttribute("storeVoList");
	// 	String mainStoreUrl_1 = mainStoreVoList.get(0).get();
	// 	String mainStoreUrl_2 = mainStoreVoList.get(1).getStore_url();
	// 	String mainStoreUrl_3 = mainStoreVoList.get(2).getStore_url();
%>
<style>
.boxImg {
	display: block;
	margin-left: auto;
	margin-right: auto;
}
</style>

<section class="content">
	<div class="container-fluid">
		<div class=" mb-3">
			<div class="card-body">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div id="carouselExampleIndicators" class="carousel slide"
							data-bs-ride="true">
							<div class="carousel-indicators">
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="0" class="active" aria-current="true"
									aria-label="Slide 1"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="1" aria-label="Slide 2"></button>
								<button type="button"
									data-bs-target="#carouselExampleIndicators"
									data-bs-slide-to="2" aria-label="Slide 3"></button>
							</div>
								<%	
									for (StoreVO store : mainStoreVoList) {
										String thumb_url = store.getThumb_url();
										String store_picPath = "/storePath/default/noImg.jpg";
										
										if (store.getThumb_url() != null ) {
											store_picPath = "/storePath/" + store.getThumb_url();
										}
								%>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="<%= store_picPath %>" class="d-block boxImg"
										alt="...">
								</div>
								
								<div class="carousel-item">
									<img src="<%= store_picPath %>" class="d-block boxImg"
										alt="...">
								</div>
								<div class="carousel-item">
									<img src="<%= store_picPath %>" class="d-block boxImg"
										alt="...">
								</div>
							</div>
							<% } %>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
	</div>
</section>








 <!-- <div id="loader-wrapper">
        <div id="loader"></div>
        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>
    </div>
     -->

    

    <div class="container-fluid tm-container-content tm-mt-60">
        <div class="row mb-4">
            <h2 class="col-6 tm-text-primary">
                추천 목록 
            </h2>
           
        </div>
        <div class="row tm-mb-90 tm-gallery">
        	<div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<%= request.getContextPath()%>/assets/dist/img/img-03.jpg" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>Clocks</h2>
                        <a href="photo-detail.html">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light">18 Oct 2020</span>
                    <span>9,906 views</span>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<%= request.getContextPath()%>/assets/dist/img/img-04.jpg" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>Plants</h2>
                        <a href="photo-detail.html">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light">14 Oct 2020</span>
                    <span>16,100 views</span>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<%= request.getContextPath()%>/assets/dist/img/img-05.jpg" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>Morning</h2>
                        <a href="photo-detail.html">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light">12 Oct 2020</span>
                    <span>12,460 views</span>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<%= request.getContextPath()%>/assets/dist/img/img-06.jpg" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>Pinky</h2>
                        <a href="photo-detail.html">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light">10 Oct 2020</span>
                    <span>11,402 views</span>
                </div>
            </div>
            
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<%= request.getContextPath()%>/assets/dist/img/img-01.jpg" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>Hangers</h2>
                        <a href="photo-detail.html">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light">24 Sep 2020</span>
                    <span>16,008 views</span>
                </div>
            </div>
            <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 mb-5">
                <figure class="effect-ming tm-video-item">
                    <img src="<%= request.getContextPath()%>/assets/dist/img/img-02.jpg" alt="Image" class="img-fluid">
                    <figcaption class="d-flex align-items-center justify-content-center">
                        <h2>Perfumes</h2>
                        <a href="photo-detail.html">View more</a>
                    </figcaption>                    
                </figure>
                <div class="d-flex justify-content-between tm-text-gray">
                    <span class="tm-text-gray-light">20 Sep 2020</span>
                    <span>12,860 views</span>
                </div>
            </div>
        </div> 
    </div> 

    
    












<%@ include file="footer.jsp"%>