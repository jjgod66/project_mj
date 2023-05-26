<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<section id="aa-myaccount">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-myaccount-area">
					<div class="row">
						<div class="col-md-3"></div>
						<div class="col-md-6">
							<div class="aa-myaccount-login">
								<h4>Login</h4>
								<form action="<%=request.getContextPath()%>/user/userLogin.do" class="aa-login-form">
									<label for="">이메일을 적어 주세요.<span>*</span></label> <input
										type="text" placeholder="email"> <label for="">비밀번호
										<span>*</span>
									</label> <input type="password" placeholder="Password">
									<button type="submit" class="aa-browse-btn">로그인</button>
									<label class="rememberme" for="rememberme"><input
										type="checkbox" id="rememberme"> 로그인 정보 기억하기 </label>
									<p class="aa-lost-password">
										<a href="#">아이디 비밀번호 찾기 </a>
									</p>
								</form>
							</div>
						</div>
						<div class="col-md-3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="../footer.jsp" %>