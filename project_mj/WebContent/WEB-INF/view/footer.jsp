<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!-- footer -->  
  <footer id="aa-footer">
    <!-- footer bottom -->
    <div class="aa-footer-top">
     <div class="container">
        <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-top-area">
            <div class="row">
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <h3>Main </h3>
                  <ul class="aa-footer-nav">
                    <li class="li"><a href="#"> 홈  </a></li>
                    <li class="li"><a href="#"> 맛집찾기   </a></li>
                    <li class="li"><a href="#">커뮤니티 </a></li>
                    <li class="li"><a href="#">고객센터 </a></li>
                  </ul>
                </div>
              </div>
              <!-- <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>페이지 </h3>
                    <ul class="aa-footer-nav">
                      <li><a href="#">고객센터 </a></li>
                      <li><a href="#">로그인 </a></li>
                      <li><a href="#">회원가입 </a></li>
                      <li><a href="#">커뮤니티 </a></li>
                    </ul>
                  </div>
                </div>
              </div> -->
              
              <div class="col-md-3 col-sm-6">
                <div class="aa-footer-widget">
                  <div class="aa-footer-widget">
                    <h3>Contact Us</h3>
                    <address>
                      <p>  대전 중구 선화동 dw 아카데미 </p>
                      <p><span class="fa fa-phone"></span>010-1111-2222</p>
                      <p><span class="fa fa-envelope"></span>dwdwdwdwdw@gmail.com</p>
                    </address>
                    <!-- <div class="aa-footer-social">
                      <a href="#"><span class="fa fa-facebook"></span></a>
                      <a href="#"><span class="fa fa-twitter"></span></a>
                      <a href="#"><span class="fa fa-google-plus"></span></a>
                      <a href="#"><span class="fa fa-youtube"></span></a>
                    </div> -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- footer-bottom -->
    
  </footer>
  <!-- / footer -->

  <!-- Login Modal -->  
  <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">                      
        <div class="modal-body">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
          <h4>Login or Register</h4>
          <form class="aa-login-form" action="">
            <label for="">Username or Email address<span>*</span></label>
            <input type="text" placeholder="Username or email">
            <label for="">Password<span>*</span></label>
            <input type="password" placeholder="Password">
            <button class="aa-browse-btn" type="submit">Login</button>
            <label for="rememberme" class="rememberme"><input type="checkbox" id="rememberme"> Remember me </label>
            <p class="aa-lost-password"><a href="#">Lost your password?</a></p>
            <div class="aa-register-now">
              Don't have an account?<a href="account.html">Register now!</a>
            </div>
          </form>
        </div>                        
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div>    

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="<%= request.getContextPath() %>/assets/js/bootstrap.js"></script>  
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery.smartmenus.js"></script>
  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery.smartmenus.bootstrap.js"></script>  
  <!-- To Slider JS -->
  <script src="<%= request.getContextPath() %>/assets/js/sequence.js"></script>
  <script src="<%= request.getContextPath() %>/assets/js/sequence-theme.modern-slide-in.js"></script>  
  <!-- Product view slider -->
  <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery.simpleGallery.js"></script>
  <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/jquery.simpleLens.js"></script>
  <!-- slick slider -->
  <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="<%= request.getContextPath() %>/assets/js/nouislider.js"></script>
  <!-- Custom js -->
  <script src="<%= request.getContextPath() %>/assets/js/custom.js"></script> 

  </body>
</html>