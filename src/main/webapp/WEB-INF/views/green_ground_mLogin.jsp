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
						<li class="mm on"><a
							href="${pageContext.request.contextPath}/home" class="mmbtn">홈</a></li>
						<li class="mm hidden-xs hidden-sm"><a href="#" class="mmbtn">로그인</a>
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
			<div class="con-join clearfix row col-xs-12">
				<div class="right col-xs-12">
					<h3 class="tle">로그인</h3>
					<p class="or">
						또는 <a href="green_ground.html">계정 만들기</a>
					</p>
					<div class="form">
						<form action="#" method="post" name="loginForm" id="loginForm">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}">
							<fieldset>
								<legend>이메일/비밀번호</legend>
								<p class="field">
									<label for="email" class="blind">이메일</label> <input type="text"
										id="email" name="email" value="" placeholder="이메일"
										class="inp-field">
								</p>
								<p class="field">
									<label for="user-pw" class="blind">비밀번호</label> <input
										type="password" id="user-pw" name="password" value=""
										placeholder="비밀번호" class="inp-field"> <span
										class="ico ico-pw"></span>
								</p>
							</fieldset>

							<fieldset>
								<legend>로그인하기</legend>
								<p class="btn-area">
									<span class="ggLogo">Green Ground 로고</span> <input
										type="button" value="로그인" class="btn-submit gg" id="grLogin">
								</p>
								<p class="btn-area">
									<span class="naverLogo">Naver 로고</span> <input type="submit"
										value="네이버 아이디로 로그인" class="btn-submit naver">
								</p>
								<p class="btn-area">
									<span class="facebookLogo">Face book 로고</span> <input
										type="submit" value="페이스북 아이디로 로그인"
										class="btn-submit facebook">
								</p>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- //con-login -->
	</div>
		<script>
		$(document).ready(function() {

			
			function checkValid() {
				var email = document.loginForm.email.value;
				var password = document.loginForm.password.value;

				if (email.trim() == "") {
					swal('이메일을 입력하세요');
					return false;
				}
				if (password.trim() == "") {
					swal('비밀번호를 입력하세요');
					return false;
				}
				return true;
			}
			$("#grLogin").click(function(){
				if(checkValid()){
					var str = $("#loginForm").serialize();
					$.ajax({
						type:"POST",
						url:"${pageContext.request.contextPath}/member/login",
						data:str,
						dataType:"json",
						success:function(data){
							var result = data.result;
							if(result =="success"){
								location.href="${pageContext.request.contextPath}/main";
							}else{
								swal('로그인 실패!', result, 'error');
							}
							
						},
						error:function(request,status,error){
						    alert("error:"+error);
						   }

					});
				}
			});
		});
	</script>
</body>
</html>
