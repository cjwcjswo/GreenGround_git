<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Green Ground</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/green_ground.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel=stylesheet
	href="${pageContext.request.contextPath}/resources/css/sweetalert2.css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/sweetalert2.js"></script>

</head>
<body>
	<dl class="skip-navigation">
		<dt class="blind">
			<strong>skip navigation</strong>
		</dt>
		<dd>
			<a href="#container">skip to content</a>
		</dd>
	</dl>
	<hr>
	<div class="wrap">
		<!-- header -->
		<div id="header" class="clearfix col-xs-12">
			<div class="inn">
				<div class=logo>
					<a href="#"><h1 class="logo blind">Green Ground</h1></a>
				</div>
				<div>
					<h2 class="blind">Main menu</h2>
					<ul class="gnb">
						<li class="mm on"><a href="#" class="mmbtn">홈</a></li>
						<li class="mm hidden-xs hidden-sm"><a
							href="${pageContext.request.contextPath}/home" class="mmbtn">로그인</a>
						</li>

						<li class="mm hidden-md hidden-lg"><a
							href="${pageContext.request.contextPath}/mLogin" class="mmbtn">로그인</a>
						</li>
						<li class="mm hidden-md hidden-lg"><a
							href="${pageContext.request.contextPath}/mHome" class="mmbtn">가입하기</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //header -->

		<!-- 헤더와 컨테이너 사이의 빈공간 맞추기 -->
		<div style="height: 152px"></div>

		<!-- container -->
		<div id="container">
			<!-- con-login -->
			<div
				class="con-join clearfix row col-xs-12 col-sm-12 col-md-12 col-lg-12">
				<div class="col-xs-12 col-sm-12 col-md-8 left">
					<div class="video-bg">
						<video
							src="${pageContext.request.contextPath}/resources/video/main.mp4"
							autoplay width="100%" height="1000px" loop></video>
					</div>
					<div class="video-content">
						<h2 class="head">
							Green Ground로<br> 약속을 잡으세요!
						</h2>
						<p class="desc">Green Ground는 바쁜 업무의 부담을 줄이고 중요한 업무에 주력할 수 있도록
							디자인된 최신 작업 공간입니다.</p>
						<span class="under waypoint" id="base-waypoint"> <a
							href="#"><i class="fa fa-arrow-down"></i></a>
						</span>
					</div>
				</div>
				<div class="right hidden-xs hidden-sm col-md-4 col-lg-4">
					<h3 class="tle">가입</h3>
					<p class="or">
						또는 <a href="${pageContext.request.contextPath}/login">계정에 로그인</a>
					</p>
					<div class="form">
						<form action="#" method="post" name="signForm" id="signForm">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
							<fieldset>
								<legend>성/이름/이메일/비밀번호</legend>
								<p class="field">
									<label for="surname" class="blind">성</label> <input type="text"
										id="surname" name="lastName" value="" placeholder="성"
										class="inp-field">
								</p>
								<p class="field">
									<label for="firstname" class="blind">이름</label> <input
										type="text" id="firstname" name="firstName" value=""
										placeholder="이름" class="inp-field">
								</p>
								<p class="field">
									<label for="email" class="blind">이메일</label> <input
										type="email" id="email" name="email" value=""
										placeholder="이메일" class="inp-field">
								</p>
								<p class="field">
									<label for="user-pw" class="blind">비밀번호</label> <input
										type="password" id="user-pw" name="password" value=""
										placeholder="비밀번호" class="inp-field"> <span
										class="ico ico-pw"></span>
								</p>
							</fieldset>

							<fieldset>
								<legend>가입하기</legend>
								<p class="btn-area">
									<span class="ggLogo">Green Ground 로고</span> <input
										type="button" value="가입" id="signButton" class="btn-submit gg">
								</p>
								<p class="btn-area">
									<span class="naverLogo">Naver 로고</span> <input type="submit"
										value="네이버 아이디로 가입" class="btn-submit naver">
								</p>
								<p class="btn-area">
									<span class="facebookLogo">Face book 로고</span> <input
										type="submit" value="페이스북 아이디로 가입" class="btn-submit facebook">
								</p>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<!-- //con-login -->
			<!-- con-intro1 -->
			<div id="con-intro1" class="col-xs-12">
				<h2 class="tle">3단계만 거치면 누구나 그룹채팅 가능!</h2>
				<p class="desc">Lorem ipsum dolor sit amet, consectetur
					adipisicing elit. Doloremque, eum!</p>
				<ol class="step clearfix">
					<li>
						<h3>
							<span>1</span> Step 1
						</h3>
						<p>가입 하세요!</p>
					</li>
					<li>
						<h3>
							<span>2</span> Step 2
						</h3>
						<p>그룹 만들기 클릭!</p>
					</li>
					<li>
						<h3>
							<span>3</span> Step 3
						</h3>
						<p>그룹 입장</p>
					</li>
				</ol>
			</div>
			<!-- //con-intro1 -->
			<!-- con-intro2 -->
			<div class="con-intro2 clearfix col-xs-12">
				<div class="inn">
					<h2 class="blind">Call to Action</h2>
					<p class="desc">
						<em>삶의 질을 높여주는 Green Ground</em>
					</p>
					<p class="btn_area">
						<a href="#" class="btn_contact">궁금한 점이 있나요?</a>
					</p>
				</div>
			</div>
			<!-- //con-intro2 -->
			<!-- con-developer -->
			<div class="developer col-xs-12">
				<div class="inn">
					<h2 class="tle">개발자 소개</h2>
					<div class="developer-content clearfix">
						<div class="left col-xs-8 col-md-4">
							<h3>Green Ground 개발자</h3>
							<p class="txt">
								학교소개...<br> 텍스트가 들어갑니당...<br> text<br>
							</p>
							<p class="btn">
								<a href="#">read more</a>
							</p>
						</div>
						<div class="right col-xs-8 col-md-4">
							<ul class="slider-item">
								<li class="active"><span class="profile clearfix"> <em
										class="profile-img"><img
											src="http://placehold.it/108x108.jpg" alt=""></em> <strong>최진우</strong>
										<small>총 개발감독</small> <span class="bar"></span>
								</span>
									<p class="txt">사용자의 편의를 위해 일꾼처럼 행동하고 때론 불편함과 맞서싸우는것이 저의
										슬로건입니다</p></li>
								<li><span class="profile"> <em class="profile-img"><img
											src="http://placehold.it/108x108.jpg" alt=""></em> <strong>Kathryn
											Clark</strong> <small>Detroit, MI</small> <span class="bar"></span>
								</span>
									<p class="txt">I will never take my car anywhere else for
										repair service! I am so grateful to have found CarRepair;
										friendly staff that really cares and has honesty beyond
										compare! Thanks again, you are the best!</p></li>
								<li><span class="profile"> <em class="profile-img"><img
											src="http://placehold.it/108x108.jpg" alt=""></em> <strong>Winnie
											Thomas</strong> <small>Los Angeles, CA</small> <span class="bar"></span>
								</span>
									<p class="txt">They always answer any questions I have. The
										service is professional and always friendly. My mother and I
										have been going to CarRepair for years and we are ecstatic
										with the service. Thanks, guys!</p></li>
							</ul>
							<ul class="slider-btn">
								<li class="prev"><a href="#"> <i
										class="fa fa-angle-left" aria-hidden="true"></i> <span
										class="blind">Previous button</span>
								</a></li>
								<li class="next"><a href="#"> <i
										class="fa fa-angle-right" aria-hidden="true"></i> <span
										class="blind">Next button</span>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- //con-developer -->
		</div>
		<!-- //container -->

		<!-- footer -->
		<div id="footer" class="col-xs-12">
			<div class="bottom">
				<div class="inn clearfix">
					<dl class="first col-xs-8 col-md-2">
						<dt>
							<strong>ABOUT US</strong> <span class="bar"></span>
						</dt>
						<dd>
							<p class="txt">CarRepair has been providing reliable
								maintenance services for vehicles of all sizes and manufacturers
								since 2002.</p>
							<ul class="sns clearfix">
								<li><a href="#"> <i class="fa fa-facebook"
										aria-hidden="true"></i> <span class="blind">go facebook</span>
								</a></li>
								<li><a href="#"> <i class="fa fa-twitter"
										aria-hidden="true"></i> <span class="blind">go twitter</span>
								</a></li>
								<li><a href="#"> <i class="fa fa-google-plus"
										aria-hidden="true"></i> <span class="blind">go google
											plus</span>
								</a></li>
								<li><a href="#"> <i class="fa fa-instagram"
										aria-hidden="true"></i> <span class="blind">go
											instagram</span>
								</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="col-xs-8 col-md-2">
						<dt>
							<strong>Quick Links</strong> <span class="bar"></span>
						</dt>
						<dd>
							<ul class="quick clearfix">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">Privacy</a></li>
								<li><a href="#">Contacts</a></li>
								<li><a href="#">Resources</a></li>
								<li><a href="#">Pricing</a></li>
								<li><a href="#">Site map</a></li>
							</ul>
						</dd>
					</dl>
					<dl class="col-xs-8 col-md-2">
						<dt>
							<strong>contact us</strong> <span class="bar"></span>
						</dt>
						<dd>
							<address>
								<p>
									<i class="fa fa-envelope" aria-hidden="true"></i> <a
										href="mailto:info@demolink.org">info@demolink.org</a>
								</p>
								<p class="tel">
									<i class="fa fa-phone" aria-hidden="true"></i> <a href="#">(415)
										347-3160</a>
								</p>
								<p class="address">
									<i class="fa fa-map-marker" aria-hidden="true"></i> 818 Noe
									Street San<br> Francisco, CA 94114
								</p>
							</address>
						</dd>
					</dl>
					<dl class="last col-xs-8 col-md-3">
						<p class="validator">
							<a href="#">W3C Validated HTML5</a>
						</p>
					</dl>
				</div>
				<p class="top">
					<a href="#"> <i class="fa fa-chevron-up" aria-hidden="true"></i>
						<span class="blind">go top</span>
					</a>
				</p>
			</div>
			<div class="copy">
				<p>
					&copy; 2017 Green Ground. <a href="#">Privacy Policy</a>
				</p>
			</div>
		</div>
		<!-- //footer -->
	</div>

	<script>
		$(document).ready(function() {
			$('#base-waypoint').waypoint(function(direction) {
				var width = $(".con-join .right").width();
				if (direction == 'down') {
					$(".con-join .right").css("right", -width * 1.5);
				} else {
					$(".con-join .right").css("right", 0);
				}
			});
		});

		function checkValid() {
			var lastName = document.signForm.lastName.value;
			var firstName = document.signForm.firstName.value;
			var email = document.signForm.email.value;
			var password = document.signForm.password.value;
			var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;

			if (lastName.trim() == "") {
				swal('성을 입력하세요');
				return false;
			}
			if (firstName.trim() == "") {
				swal('이름을 입력하세요');
				return false;
			}
			if (email.trim() == "") {
				swal('이메일을 입력하세요');
				return false;
			}
			if (password.trim() == "") {
				swal('비밀번호를 입력하세요');
				return false;
			}
			if(!exptext.test(email.trim())){
				swal('올바른 이메일 형식이 아닙니다!');
				return false;
			}
			return true;
		}

		$("#signButton").click(function() {
			if (checkValid()) {
				var str = $("#signForm").serialize();
				
				$.ajax({
					type : "POST",
					url : "${pageContext.request.contextPath}/member/signUp",
					data : str,
					dataType : "json",
					success : function(data) {
						if(data == 1){
							swal({type:'success',title:'회원가입에 성공하였습니다.'});
						}else{
							swal('회원가입 실패!', '이메일이 올바르지 않거나 중복입니다', 'error');
						}
					},
					error : function(e) {
						swal('오류 발생!', '네트워크 오류가 발생하였습니다.', 'error');
					}
				});
			}
		});
	</script>
</body>
</html>
