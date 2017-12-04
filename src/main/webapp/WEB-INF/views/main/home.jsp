<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Green Ground</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/green_ground_main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header_main.css">
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
<script src="https://use.fontawesome.com/07b0ce5d10.js"></script>

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
	<div class="wrap">
		<div id="header" class="clearfix col-xs-12 no_fixed">
			<div class="inn">
				<div class=logo>
					<a href="#">
						<h1 class="logo blind">Green Ground</h1>
					</a>
				</div>
				<div>
					<h2 class="blind">Main menu</h2>
					<div class="right">
						<div class="top">
							<p class="profile">
								<a href="#">프로필사진</a>
							</p>
							<p class="wel">
								<a href="#"><security:authentication
										property="principal.firstName" />님, 환영합니다!</a>
							</p>
						</div>
						<div class="bottom">
							<ul class="gnb">
								<li class="mm on"><a href="#" class="mmbtn">홈</a></li>
								<li class="mm"><a href="#" class="mmbtn">일정관리</a></li>
								<li class="mm"><a href="#" class="mmbtn">메세지함</a></li>
								<li class="mm"><a href="javascript:logout();" class="mmbtn">로그아웃</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="container">
			<nav class="navbar navbar-inverse">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#myNavbar">
							<span class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<form class="navbar-form navbar-left">
								<div class="input-group">
									<input type="text" class="form-control" placeholder="Search">
									<div class="input-group-btn">
										<button class="btn btn-default" type="submit">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</div>
								</div>
							</form>
						</ul>
					</div>
				</div>
			</nav>
			<section id="blog-section">
				<div class="container" style="width: 100%">
					<div class="col-lg-8">
						<c:choose>
							<c:when test="${empty groupList}">
							그룹이 없습니다 만들어주세요
						</c:when>
							<c:otherwise>
								<c:forEach items="${groupList}" var="group">
									<c:set var="memberNameList" value="" />
									<c:forEach items="${group.memberList}" var="member">
										<c:set var="memberNameList"
											value="${memberNameList}&#13;${member.lastName}${member.firstName}" />
									</c:forEach>

									<div class="col-lg-6 col-md-6">
										<aside class="box">
											<c:choose>
												<c:when
													test="${group.groupPhoto eq '' || group.groupPhoto eq null}">
													<img
														src="${pageContext.request.contextPath}/resources/image/box.jpg"
														class="img-responsive">
												</c:when>
												<c:otherwise>
													<img
														src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
														class="img-responsive">
												</c:otherwise>
											</c:choose>
											<div class="content-footer">
												<c:choose>
													<c:when
														test="${group.groupLeader.photo eq '' || group.groupLeader.photo eq null}">
														<img class="user-small-img"
															src="${pageContext.request.contextPath}/resources/image/profile.jpg"
															title="${group.groupLeader.firstName}${group.groupLeader.lastName}">
													</c:when>
													<c:otherwise>
													이미지 프로필사진
												</c:otherwise>
												</c:choose>
												<span class="name" style="font-size: 16px; color: #fff;">${group.groupName}</span>
												<span class="pull-right"> <a href="#"
													data-toggle="tooltip" data-placement="right"
													title="${memberNameList}"><i class="fa fa-users"
														aria-hidden="true"></i>${fn:length(group.memberList)}</a>
												</span>
											</div>
										</aside>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</div>
					<!--// RECENT POST===========-->
					<div class="col-lg-4">
						<div class="widget-sidebar">
							<h2 class="title-widget-sidebar">다가오는 일정</h2>
							<div class="content-widget-sidebar">
								<ul>
									<li class="recent-post">
										<div class="post-img">
											<img
												src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
												class="img-responsive">
										</div>
										<div class="post-desc">
											<h5 class="tle">
												<a href="#">정기모임 강남 7시 카레집에서 만나서 카레우동과 새우튀김을 먹고 카페에 가서
													노트북으로 과제를 하고 과제를 한 다음에는 넘나 맛있는 케익을 먹고 그 다음에는 비행기를 타고 집에
													간다~~~</a>
											</h5>
											<p class="date">
												<small><i class="fa fa-calendar"
													data-original-title="" title=""></i>2017년 11월 27일</small>
											</p>
										</div>
									</li>
									<li class="recent-post">
										<div class="post-img">
											<img
												src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
												class="img-responsive">
										</div>
										<div class="post-desc">
											<h5 class="tle">
												<a href="#">정기모임 강남 7시 카레집에서 만나서 카레우동과 새우튀김을 먹고 카페에 가서
													노트북으로 과제를 하고 과제를 한 다음에는 넘나 맛있는 케익을 먹고 그 다음에는 비행기를 타고 집에
													간다~~~</a>
											</h5>
											<p class="date">
												<small><i class="fa fa-calendar"
													data-original-title="" title=""></i>2017년 11월 27일</small>
											</p>
										</div>
									</li>
									<li class="recent-post">
										<div class="post-img">
											<img
												src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
												class="img-responsive">
										</div>
										<div class="post-desc">
											<h5 class="tle">
												<a href="#">정기모임 강남 7시 카레집에서 만나서 카레우동과 새우튀김을 먹고 카페에 가서
													노트북으로 과제를 하고 과제를 한 다음에는 넘나 맛있는 케익을 먹고 그 다음에는 비행기를 타고 집에
													간다~~~</a>
											</h5>
											<p class="date">
												<small><i class="fa fa-calendar"
													data-original-title="" title=""></i>2017년 11월 27일</small>
											</p>
										</div>
									</li>
									<li class="recent-post">
										<div class="post-img">
											<img
												src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
												class="img-responsive">
										</div>
										<div class="post-desc">
											<h5 class="tle">
												<a href="#">정기모임 강남 7시 카레집에서 만나서 카레우동과 새우튀김을 먹고 카페에 가서
													노트북으로 과제를 하고 과제를 한 다음에는 넘나 맛있는 케익을 먹고 그 다음에는 비행기를 타고 집에
													간다~~~</a>
											</h5>
											<p class="date">
												<small><i class="fa fa-calendar"
													data-original-title="" title=""></i>2017년 11월 27일</small>
											</p>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="widget-sidebar">
							<h2 class="title-widget-sidebar">최근 활동 그룹</h2>
							<div class="content-widget-sidebar">
								<ul>
									<li class="recent-post">
										<div class="post-img">
											<img
												src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
												class="img-responsive">
										</div>
										<div class="post-desc">
											<h5 class="tle">
												<a href="#">정기모임 강남 7시 카레집에서 만나서 카레우동과 새우튀김을 먹고 카페에 가서
													노트북으로 과제를 하고 과제를 한 다음에는 넘나 맛있는 케익을 먹고 그 다음에는 비행기를 타고 집에
													간다~~~</a>
											</h5>
											<p class="date">
												<small><i class="fa fa-calendar"
													data-original-title="" title=""></i>2017년 11월 27일</small>
											</p>
										</div>
									</li>
									<li class="recent-post">
										<div class="post-img">
											<img
												src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
												class="img-responsive">
										</div>
										<div class="post-desc">
											<h5 class="tle">
												<a href="#">정기모임 강남 7시 카레집에서 만나서 카레우동과 새우튀김을 먹고 카페에 가서
													노트북으로 과제를 하고 과제를 한 다음에는 넘나 맛있는 케익을 먹고 그 다음에는 비행기를 타고 집에
													간다~~~</a>
											</h5>
											<p class="date">
												<small><i class="fa fa-calendar"
													data-original-title="" title=""></i>2017년 11월 27일</small>
											</p>
										</div>
									</li>
									<li class="recent-post">
										<div class="post-img">
											<img
												src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
												class="img-responsive">
										</div>
										<div class="post-desc">
											<h5 class="tle">
												<a href="#">정기모임 강남 7시 카레집에서 만나서 카레우동과 새우튀김을 먹고 카페에 가서
													노트북으로 과제를 하고 과제를 한 다음에는 넘나 맛있는 케익을 먹고 그 다음에는 비행기를 타고 집에
													간다~~~</a>
											</h5>
											<p class="date">
												<small><i class="fa fa-calendar"
													data-original-title="" title=""></i>2017년 11월 27일</small>
											</p>
										</div>
									</li>
									<li class="recent-post">
										<div class="post-img">
											<img
												src="https://lh3.googleusercontent.com/-ndZJOGgvYQ4/WM1ZI8dH86I/AAAAAAAADeo/l67ZqZnRUO8QXIQi38bEXuxqHfVX0TV2gCJoC/w424-h318-n-rw/thumbnail8.jpg"
												class="img-responsive">
										</div>
										<div class="post-desc">
											<h5 class="tle">
												<a href="#">정기모임 강남 7시 카레집에서 만나서 카레우동과 새우튀김을 먹고 카페에 가서
													노트북으로 과제를 하고 과제를 한 다음에는 넘나 맛있는 케익을 먹고 그 다음에는 비행기를 타고 집에
													간다~~~</a>
											</h5>
											<p class="date">
												<small><i class="fa fa-calendar"
													data-original-title="" title=""></i>2017년 11월 27일</small>
											</p>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

			</section>
		</div>

		<div id="button">
			<div class="parent2">
				<div class="delBtn">
					<i class="fa fa-trash fa-2x" title="그룹 삭제하기" data-toggle="tooltip"></i>
				</div>
				<div class="joinBtn">
					<i class="fa fa-sign-in fa-2x" title="그룹 참가하기" data-toggle="tooltip"></i>
				</div>
				<div class="createBtn">
					<i class="fa fa-plus fa-2x" title="그룹 만들기" data-toggle="tooltip"></i>
				</div>
				<div class="homeBtn">
					<i class="fa fa-plus fa-3x"></i>
				</div>
			</div>
		</div>
	</div>
	<!-- end Navigation-->
	<form id="logoutForm"
		action="${pageContext.request.contextPath}/member/logout"
		method="post" style="display: none">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

	<script>
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();

			var active1 = false;
			var active2 = false;
			var active3 = false;
			var active4 = false;

			// 하단 버튼 터치 설정
			$('.parent2').on('mousedown touchstart', function() {

				if (!active1)
					$(this).find('.delBtn').css({
						'background-color' : 'gray',
						'transform' : 'translate(0px,-125px)'
					});
				else
					$(this).find('.delBtn').css({
						'background-color' : 'dimGray',
						'transform' : 'none'
					});
				if (!active2)
					$(this).find('.joinBtn').css({
						'background-color' : 'gray',
						'transform' : 'translate(-60px,-105px)'
					});
				else
					$(this).find('.joinBtn').css({
						'background-color' : 'darkGray',
						'transform' : 'none'
					});
				if (!active3)
					$(this).find('.createBtn').css({
						'background-color' : 'gray',
						'transform' : 'translate(-105px,-60px)'
					});
				else
					$(this).find('.createBtn').css({
						'background-color' : 'silver',
						'transform' : 'none'
					});
				active1 = !active1;
				active2 = !active2;
				active3 = !active3;
				active4 = !active4;

			});
		});

		//로그아웃
		function logout() {
			document.getElementById("logoutForm").submit();
		}

		var acc = document.getElementsByClassName("accordion");
		var i;
		for (i = 0; i < acc.length; i++) {
			acc[i].onclick = function() {
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.maxHeight) {
					panel.style.maxHeight = null;
				} else {
					panel.style.maxHeight = panel.scrollHeight + "px";
				}
			}
		}
	</script>
</body>
</html>