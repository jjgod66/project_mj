<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<script>
	$(function(){
		console.log($("h4").text());
	});
</script>
<section id="aa-myaccount">
	<div class="container2">
		<div class="row">
			<div class="col-md-12">
				<div class="aa-myaccount-area">
					<div class="row">

						<div class="col-md-6">
							<div class="aa-myaccount-register">
								<h4>회원가입</h4>
								<form method="post"	action="<%=request.getContextPath()%>/user/insertUser.do" id="signupForm" class="aa-login-form">
									<label for="">이메일<span>*</span></label> <input type="text" placeholder="addr" name="email" required>
									<label for="">비밀번호 <span>*</span></label> <input type="password" placeholder="Password" name="pass" required> 
									<label for="">비밀번호 확인 <span>*</span></label> <input type="password" placeholder="PasswordCheck" name="passCheck" required> 
									<label for="">이름 <span>*</span></label> <input type="text" placeholder="name" name="name" required>
									<label for="">닉네임<span>*</span></label> <input type="text" placeholder="nickname" name="nick" required>
									<button type="submit" class="aa-browse-btn">가입하기</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<%@ include file="../footer.jsp" %>