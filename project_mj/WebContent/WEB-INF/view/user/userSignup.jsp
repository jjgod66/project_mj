<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<script>
	$(function(){
		
		// email 정규식 체크
		let email = $("input[name=email]");
		email.on("keyup", function() {
			let emailVal = email.val().trim();
			
			regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
			
			console.log(regEmail.test(emailVal));
			
			if( !(regEmail.test(emailVal)) ) {
				email.attr("class", "form-control is-invalid");
			} else {
				email.attr("class", "form-control is-valid");
			}
		});
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
									<div>
										<label for="">이메일<span>*</span></label> <input type="text" placeholder="addr" name="email" required>
										<span class="error invalid-feedback">이메일 형식을 맞춰서 작성해주세요.</span>
										
										
									</div>
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