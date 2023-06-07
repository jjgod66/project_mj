<%@page import="kr.or.dw.store.vo.ImgStoreVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.dw.store.vo.StoreVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>

<%
	StoreVO storeVo = (StoreVO) request.getAttribute("storeVo");
	String store_name = storeVo.getStore_name();
	float store_rate = storeVo.getStore_rate();
	String store_tagNm_1 = storeVo.getStore_tagNm_1();
	String store_tagNm_2 = storeVo.getStore_tagNm_2();
	String store_tagNm_3 = storeVo.getStore_tagNm_3();
	int store_like = storeVo.getStore_like();
	int store_fav = storeVo.getStore_fav();
	int store_views = storeVo.getStore_views();
	String store_catName = storeVo.getCat_name();
	String store_des_s = storeVo.getStore_des_s();
	String store_des_d = storeVo.getStore_des_d();
	String store_tel = storeVo.getStore_tel();
	String store_addr = storeVo.getStore_addr();
	storeVo.getStore_break();
	storeVo.getStore_hour();
	
	List<ImgStoreVO> imgStoreVoList = (List<ImgStoreVO>) request.getAttribute("imgStoreVoList");
	
%>
<style>
	.boxImg {
		display:block;
		width:100%;
		height:auto;
	}
</style>

<div class="card card-primary">
	<div class="card-header">
		<h3 class="card-title"><%=store_name %> <%=store_rate %></h3>
		<div>
		<%= store_tagNm_1%>, <%= store_tagNm_2%>, <%= store_tagNm_3%>
		</div>
	</div>


	
		<div class="card-body">
			<div class="row">
				<div class="col-md-6">
					<img src="/storePath/<%=storeVo.getThumb_url()%>" class="boxImg">
				</div>
				<div class="col-md-6">
					<div><h1><%=store_name %></h1></div>
					<div><h2><%=store_rate %></h2></div>
					<div><span>#<%=store_tagNm_1 %> </span><span>#<%=store_tagNm_2 %> </span><span>#<%=store_tagNm_3 %> </span></div>
					<div><%=store_des_s %></div>
					<div><i class="fa fa-eye"></i><%=store_like %> <%=store_fav %> <%=store_views %></div>
				</div>
			</div>
			<p><hr></p>
			<div class="row">
			<%
				for (ImgStoreVO imgStoreVo :imgStoreVoList) {
			%>
				<div class="col-md-4">
					<img src="/storePath/<%=imgStoreVo.getImg_url()%>" class="boxImg">
				</div>
			<%		
				}
			%>
			</div>
			<div class="row">
				<div class="col-md-8">
					<p>업종 : <%=store_catName %></p>
					<p>소개 : </p>
					<p><%=store_des_d %></p>
					<p>전화번호 : <%=store_tel %></p>
					<p>주소 : <%=store_addr %></p>
				</div>
				<div class="col-md-4">sdfdsfd</div>
			</div>
			<div class="form-group">
				<p> </p>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control" id="exampleInputPassword1"
					placeholder="Password">
			</div>
			<div class="form-group">
				<label for="exampleInputFile">File input</label>
				<div class="input-group">
					<div class="custom-file">
						<input type="file" class="custom-file-input" id="exampleInputFile">
						<label class="custom-file-label" for="exampleInputFile">Choose
							file</label>
					</div>
					<div class="input-group-append">
						<span class="input-group-text">Upload</span>
					</div>
				</div>
			</div>
			<div class="form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1">
				<label class="form-check-label" for="exampleCheck1">Check me
					out</label>
			</div>
		</div>

		<div class="card-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	
</div>
<%@ include file="../footer.jsp" %>